# Four-dimensional metric, Einstein–Cartan, and Holst gravity with a Dirichlet wall

## Results and proof levels

**Proved, in the domain below:** pure Lorentzian Einstein–Cartan/Holst gravity with a nondegenerate coframe and real nonzero Immirzi parameter has a unique torsion-free connection. With the explicitly specified Lorentz-covariant metric-Dirichlet wall action and its actual Harlow–Wu corner descent, the complete pulled-back regional potential equals the metric Einstein–GHY potential:

\[
\boxed{\iota^*\Theta_\beta=p^*\Theta_g,\qquad
       \iota^*\Omega_\beta=p^*\Omega_g.}
\tag{0.1}
\]

Here \(\iota:e\mapsto(e,\omega(e))\) embeds the auxiliary branch and \(p:e\mapsto g(e)\) is metric projection. Equation (0.1) is an equality on coframe space; the Lorentz quotient is performed afterward. Whenever metric quantities below are evaluated on first-order fields, their pullback along \(g(e)\) is understood. No fixed internal normal or fixed boundary Lorentz frame is needed. This is stronger than equality of bulk equations, and different from discarding the Holst term because its torsion-free Lagrangian vanishes.

Three qualifications are explicit results, not disclaimers:

1. **Proved counterexample:** with the raw bulk potential and no compensating corner, two metric-invisible boosts preserving the internal wall normal have \(\Omega^{\rm raw}_{H}=\mathcal A/(\kappa\beta)\ne0\). Torsion-freeness and a fixed normal alone do not remove the Holst corner.
2. **Proved auxiliary determinant:** the real 24-component contorsion Hessian has determinant ratio \((1+\beta^{-2})^{12}\). Its finite same-measure Gaussian contributes \((1+\beta^{-2})^{-6}\) per unrestricted interior cell. This does **not** establish continuum quantum equivalence.
3. **Proved spin-source contrast:** an explicitly normalized, beta-independent axial source produces the interaction \(-3\kappa s^2\beta^2/(\beta^2+1)\,J_IJ^I\epsilon\), rather than its EC coefficient. The vacuum result does not extend unchanged to spin-sourced theories.

The classical statement concerns the declared boundary polarization, nondegenerate real branch, and matched gauge relation. It is not a theorem about all Palatini affine connections, degenerate tetrads, complex Ashtekar variables, fermion normalizations, or quantum measures.

## 1. Fields, signs, and the boundary problem

The spacetime dimension is four. Set

\[
\eta_{IJ}=\operatorname{diag}(-,+,+,+),\quad \epsilon_{0123}=1,
\quad \epsilon=e^0\wedge e^1\wedge e^2\wedge e^3,
\quad \kappa=8\pi G_4>0.
\]

This \(\kappa\), and the Immirzi parameter \(\beta\), are new four-dimensional conventions; neither is the three-dimensional report's \(\gamma=(16\pi G_3)^{-1}\). All repeated antisymmetric internal pairs below are full sums, not restricted sums over \(I<J\). In particular, \(\epsilon^{0123}=-1\).

The independent connection is metric-compatible, \(\omega^{IJ}=-\omega^{JI}\). Define

\[
F^{IJ}=d\omega^{IJ}+\omega^I{}_K\wedge\omega^{KJ},\qquad
T^I=D_\omega e^I,\qquad g=\eta_{IJ}e^I\otimes e^J.
\]

The coframe is real, invertible, and compatible with the fixed orientation and time orientation. Put \(r=1/\beta\); \(r=0\) means EC. The action at \(\beta=0\) is undefined. The internal bivector dual \(\star\) and spacetime Hodge dual \(*\) are different operations, although both square to minus the identity on the relevant Lorentzian two-forms. Write

\[
(\star X)_{IJ}=\frac12\epsilon_{IJ}{}^{KL}X_{KL},\qquad
\Sigma_{\beta IJ}=\frac12\epsilon_{IJKL}e^K\wedge e^L+r e_I\wedge e_J.
\]

The bulk Lagrangian is fixed independently:

\[
\begin{split}
L_\beta&=\frac1{2\kappa}\Sigma_{\beta IJ}\wedge F^{IJ}-\frac\Lambda\kappa\epsilon\\
&=\frac1{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL}
+\frac1{2\kappa\beta}e^I\wedge e^J\wedge F_{IJ}
-\frac\Lambda{24\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge e^K\wedge e^L.
\end{split}
\tag{1.1}
\]

Let \(\Gamma\) be a fixed smooth timelike wall, with spacelike outward unit normal \(n\), induced metric \(q\), \(\epsilon_\Gamma=\iota_n\epsilon\), and
\(K_{ij}=q_i{}^\mu q_j{}^\nu\nabla_\mu n_\nu\). Its internal normal is \(N^I=e^I(n)\). The metric prescription is

\[
L_g=\frac{R-2\Lambda}{2\kappa}\epsilon,\qquad
l_g=\frac K\kappa\epsilon_\Gamma.
\tag{1.2}
\]

Specify the first-order wall action by its local Lorentz-covariant expression:

\[
\boxed{l_\beta=
\frac1{2\kappa}\epsilon_{IJKL}e^I\wedge e^J N^K D_\omega N^L
+\frac1{2\kappa\beta}e_I\wedge T^I.}
\tag{1.3}
\]

Every expression in (1.3) is pulled back to \(\Gamma\). We fix \(q\), but not the boundary Lorentz frame or \(N\). A precise sufficient off-shell boundary domain is

\[
q=q_0,\qquad T^I|_\Gamma=0,
\tag{1.4}
\]

with variations preserving it. The second condition is on the **pullback**, not every component of torsion at the wall. All pure-theory solutions below satisfy it automatically. The weaker boundary condition \((D_\omega\Sigma_\beta)_{IJ}|_\Gamma=0\) is enough for the free-frame Dirichlet descent established below.

For the CPS interpretation, take a globally hyperbolic slab in the sense appropriate to its timelike boundary, with chosen Cauchy cuts, as in the workspace convention. The local algebraic and wall identities do not need that global hypothesis; no general existence/well-posedness theorem for the gravitational initial-boundary-value problem is asserted. Use the fixed-embedding [CPS convention](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L27>): \(d\delta=\delta d\), \((\theta+\delta l)|_\Gamma=dC\) on allowed variations,

\[
\Theta=\int_\Sigma\theta-\oint_{\partial\Sigma}C,
\qquad \Omega=\delta\Theta.
\tag{1.5}
\]

Caps use the same endpoint convention on both sides. The statements below compare the timelike-wall regional structure, retaining its corner contribution; they do not classify independent cap actions or moving/null joints. Integrals are finite on a compact region, or assumed convergent under specified falloffs. Fixed transition functions can be used if a global coframe chart is unavailable.

## 2. Exact auxiliary elimination and its failure boundaries

Varying the connection gives

\[
\theta_\beta=\frac1{2\kappa}\Sigma_{\beta IJ}\wedge\delta\omega^{IJ},
\qquad D_\omega\Sigma_{\beta IJ}=0.
\tag{2.1}
\]

With \(\Sigma_{IJ}=e_I\wedge e_J\), the equation is
\((\star+r)D_\omega\Sigma=0\). For real \(r\),

\[
(\star+r)^{-1}=\frac{r-\star}{1+r^2},
\tag{2.2}
\]

so \(D_\omega\Sigma=0\). Invertibility of the coframe then forces \(T^I=0\): let \(E_I\) be its dual frame and \(t=\sum_I\iota_{E_I}T^I\). Contracting
\(T^I\wedge e^J-T^J\wedge e^I=0\) over \(J\) gives \(T^I=t\wedge e^I\). Contracting again gives \(t=-3t\), hence \(t=T^I=0\). The unique connection is therefore \(\omega(e)\).

At this connection the Holst Lagrangian and its coframe equation vanish by the first Bianchi identity. The remaining equation is precisely Einstein's equation with \(\Lambda\). Conversely every Einstein coframe with its Levi–Civita connection solves (1.1). This is a finite, nonperturbative solution correspondence, not a formal expansion in contorsion.

The restrictions cannot simply be removed:

- **Degenerate coframe:** on a patch take \(e^0=dt\), \(e^{1,2,3}=0\), \(\omega^{01}=dx\), all other connection components zero. Then \(F=0\) and both polynomial field equations vanish for every \(\Lambda\), but \(T^1=dx\wedge dt\ne0\). There is no inverse metric.
- **Complex chiral values:** at \(\beta=+i\) or \(-i\), the complexified connection equation has respectively arbitrary \(\star\mathcal K=+i\mathcal K\) or \(-i\mathcal K\) contorsion, with \(\mathcal K=\omega-\omega(e)\). There are twelve complex omitted components per point. If the connection is still required to be real, the real and imaginary parts instead force \(\mathcal K=0\); the complex kernel must not be imported into the real field space.
- A general affine connection, or an independently specified spin-current coupling, changes the auxiliary equation and is not covered by the vacuum statement.

## 3. The off-shell action split retains the boundary term

To avoid confusing contorsion with extrinsic curvature, denote it by

\[
\mathcal K^{IJ}=\omega^{IJ}-\omega(e)^{IJ}.
\]

For arbitrary nondegenerate \(e\), not assumed Einstein,

\[
\boxed{L_\beta=L_g+dB_{\mathcal K}+Q_\beta,\qquad
B_{\mathcal K}=\frac1{2\kappa}\Sigma_{\beta IJ}\wedge\mathcal K^{IJ},\qquad
Q_\beta=\frac1{2\kappa}\Sigma_{\beta IJ}\wedge
\mathcal K^I{}_M\wedge\mathcal K^{MJ}.}
\tag{3.1}
\]

This follows from \(F=R[e]+D_e\mathcal K+\mathcal K\wedge\mathcal K\) and \(D_e\Sigma_\beta=0\). The contorsion boundary form is a Lorentz-invariant contraction of tensorial quantities; unlike a term built from a bare connection, it glues across fixed common Lorentz bundle transitions.

The Nieh–Yan identity fixes the Holst sign:

\[
d(e_I\wedge T^I)=T_I\wedge T^I-e_I\wedge e_J\wedge F^{IJ},
\qquad Q_\beta-Q_\infty=\frac1{2\kappa\beta}T_I\wedge T^I.
\tag{3.2}
\]

Thus the Holst term is not just a boundary term on a torsionful off-shell domain. The wall prescription obeys the separate algebraic identity

\[
\boxed{l_\beta=l_g-B_{\mathcal K}|_\Gamma.}
\tag{3.3}
\]

For its EC part, the pulled-back \(\frac12\epsilon_{IJKL}e^K\wedge e^L\) has only normal–tangent internal components. The normal-connection term in (1.3) cancels the corresponding part of \(B_{\mathcal K}\). For the Holst part, \(e_I\wedge T^I=-e_I\wedge e_J\wedge\mathcal K^{IJ}\). These give (3.3) without a field equation.

The timelike-wall contributions to \(dB_{\mathcal K}\) therefore cancel exactly. Cap contributions are retained as endpoint data, or removed by the corresponding common endpoint convention; they have not been discarded from a full off-shell action. On the auxiliary branch \(\mathcal K=0\), the bulk and wall actions are exactly (1.2). This does not yet prove equality of their natural potentials: the map \(\omega\mapsto\omega(e)\) is derivative-dependent.

## 4. Potentials, the genuine wall descent, and the off-shell residual

Define the spacetime two-form valued field-space one-form

\[
\mathcal E=e_I\wedge\delta e^I,\qquad
\alpha_\beta=\frac1{2\kappa}(*\mathcal E+\beta^{-1}\mathcal E).
\]

On the torsion-free branch, with variations tangent to it,

\[
\boxed{\iota^*\theta_\beta=p^*\theta_g-d\alpha_\beta,\qquad
\theta_g=\frac1{2\kappa}(\nabla_\nu h^{\mu\nu}-\nabla^\mu h)
\iota_{\partial_\mu}\epsilon,\quad h_{\mu\nu}=\delta g_{\mu\nu}.}
\tag{4.1}
\]

Here \(h^{\mu\nu}=g^{\mu\alpha}g^{\nu\beta}h_{\alpha\beta}\), not \(\delta g^{\mu\nu}\). No Einstein equation is needed. In particular, varying \(T^I=0\) gives
\(e_I\wedge e_J\wedge\delta\omega^{IJ}=-d\mathcal E\); the Holst potential is a nonzero spacetime derivative, not zero.

For arbitrary fixed-wall metric variations, including normal and mixed components, set
\(w^\mu=q^{\mu\alpha}n^\nu h_{\alpha\nu}\). The metric wall identity is

\[
(\theta_g+\delta l_g)|_\Gamma
=\frac1{2\kappa}(Kq^{ij}-K^{ij})h_{ij}\epsilon_\Gamma+dC_g,
\qquad C_g=-\frac1{2\kappa}\iota_w\epsilon_\Gamma.
\tag{4.2}
\]

The first-order wall integration by parts gives

\[
C_N=\frac1{2\kappa}\epsilon_{IJKL}e^I\wedge e^J N^K\delta N^L,
\qquad
\boxed{C_\beta=C_N-\frac1{2\kappa\beta}\mathcal E|_\Gamma.}
\tag{4.3}
\]

The algebraic, arbitrary-frame identity

\[
\boxed{C_N=C_g-\frac1{2\kappa}*\mathcal E|_\Gamma,
\qquad C_\beta=C_g-\alpha_\beta|_\Gamma}
\tag{4.4}
\]

is essential. The spacetime Hodge star is taken before pullback to the wall. Fixing the metric's radial gauge does not justify discarding either term.

We fix the corner representative produced by these integrations by parts; the boundary descent alone is not a uniqueness theorem for it. Adding a permitted wall-closed field-space one-form \(Z\), with \(d_\Gamma Z=0\), preserves the descent but changes \(\Omega\) by \(-\delta\oint Z\). A wall-exact \(Z=d_\Gamma W\) has zero period on a closed smooth corner, whereas a general closed term need not. Such a modification is additional corner data and must be matched under the [relative-CPS criterion](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/03 Relative CPS equivalence theorem.md>).

There is also an exact way to expose what is needed **off shell**. Equations (3.3) and (4.1) imply, for independent \(\omega\),

\[
\boxed{(\theta_\beta+\delta l_\beta)|_\Gamma
=\frac1{2\kappa}(Kq^{ij}-K^{ij})h_{ij}\epsilon_\Gamma+dC_\beta
-\frac1{2\kappa}(\delta\Sigma_{\beta IJ}\wedge\mathcal K^{IJ})|_\Gamma.}
\tag{4.5}
\]

All quantities \(K_{ij},C_g\) on the right are metric quantities. The last term must not be silently dropped when the connection is independent.

For \(\delta q=0\), the pulled-back coframe variation has a unique local Lorentz form \(\delta e^I=\lambda^I{}_Je^J\), with \(\delta N=\lambda N\). The residual in (4.5) then equals

\[
\frac1{2\kappa}\lambda^{IJ}(D_\omega\Sigma_\beta)_{IJ}|_\Gamma.
\tag{4.6}
\]

Thus (1.4), or the weaker boundary Gauss condition stated there, supplies a genuine off-shell free-frame Dirichlet variational principle with corner (4.3). Independently, the Holst part reads

\[
(\theta_H+\delta l_H)|_\Gamma
=\frac1{\kappa\beta}T_I\wedge\delta e^I
-d\left(\frac{\mathcal E}{2\kappa\beta}\right),
\tag{4.7}
\]

confirming the same corner without defining it post hoc to match the metric.

The weaker pullback-torsion condition is sufficient for this **Dirichlet** claim, but not for arbitrary-source equality of the Brown–York momentum. In an adapted frame it permits symmetric extrinsic contorsion \(c_{ij}\), whose contribution to (4.5) is
\((\operatorname{tr}_q c\operatorname{tr}_q h-c^{ij}h_{ij})\epsilon_\Gamma/(2\kappa)\).
For example \(\mathcal K^{13}=c e^1\) has zero pulled-back torsion but nonzero \(T^1=c e^1\wedge e^3\). Full torsionlessness removes this distinction; Dirichlet variations remove the displayed source without requiring it.

## 5. Regional and reduced classical correspondence

Pull back to \(\omega(e)\) and use the actual corner (4.3). Stokes' theorem now gives

\[
\begin{split}
\iota^*\Theta_\beta
&=\int_\Sigma(p^*\theta_g-d\alpha_\beta)
-\oint_{\partial\Sigma}(p^*C_g-\alpha_\beta)\\
&=\int_\Sigma p^*\theta_g-\oint_{\partial\Sigma}p^*C_g=p^*\Theta_g.
\end{split}
\tag{5.1}
\]

The equality holds already on the torsion-free branch before imposing Einstein's equation. In particular, it holds on solution spaces and their tangent variations, and its field-space derivative proves (0.1). Internal-normal variations are included. A fixed \(N\) sets \(C_N\) to zero on that slice, but does not remove the Holst contribution in (4.3).

For a finite quotient statement, specify the global field category rather than assuming every metric has a preferred frame. For example, take a parallelizable oriented/time-oriented region, global coframes, and **all** smooth \(SO_0(1,3)\) frame transformations, including their boundary values and components. Use the same metric proper diffeomorphisms on both sides, such as all allowed global diffeomorphisms that are identity on an outer collar. The independent first-order domain is defined by (1.1), its bulk equations, nondegeneracy, and (1.4), not by stipulating \(\omega=\omega(e)\).

Section 2 proves that every such first-order solution is an Einstein metric with its unique torsion-free connection. Any two coframes for the same oriented/time-oriented metric differ by a unique smooth \(SO_0(1,3)\) map. Equation (5.1) shows that every infinitesimal frame direction, including boundary frame directions, is null for the specified regional form. The full finite frame relation, including disconnected components of the mapping group, is the relation explicitly declared above; it is not inferred from infinitesimal nullness. The finite transformations also preserve (5.1), because they leave the metric projection unchanged. With that declared relation these frames are proper redundancies, not additional Lorentz edge modes. This establishes mutually inverse finite maps

\[
[g]\longmapsto[(e,\omega(e))],\qquad
[(e,\omega)]\longmapsto[\eta_{IJ}e^I\otimes e^J].
\tag{5.2}
\]

Local smooth orthonormal-frame sections, or their bundle versions with fixed compatible gluing, make these maps smooth in the corresponding functional quotient category. On compact regions this follows from ordinary local smooth Lorentzian frame construction; no global classification of Einstein solutions is being asserted. The same proper metric relation is then quotiented on both sides. The descended presymplectic forms agree; wherever the common metric reduction is a regular weakly symplectic phase space, (5.2) is a symplectomorphism. The field correspondence does not prove that every gravitational quotient is a smooth manifold.

If one fixes the boundary frame, introduces Lorentz edge variables, restricts the frame group to liftable spin transformations without fixing the relative frame class, or changes which boundary diffeomorphisms are proper, one has changed the global problem. Those variants require separate gauge/global analysis. Identical metric-dependent counterterms can be added on both sides with their common relative descent; arbitrary different counterterms cannot.

## 6. An exact fixed-normal Holst corner counterexample

Take Minkowski spacetime on a finite spatial slab \([0,1]_z\times T^2_{x,y}\), with \(\Lambda=0\), volume \(dt\wedge dx\wedge dy\wedge dz\), outer wall \(z=1\), and spatial corner orientation \(dx\wedge dy\). Let \(B_{01},B_{02}\) be boosts with mixed matrix entries \((B_{0i})^0{}_i=(B_{0i})^i{}_0=1\). The exact two-parameter coframe family

\[
e(s_1,s_2)=\Lambda(s_1,s_2,z)e_0,\qquad
\Lambda=e^{s_1z B_{01}}e^{s_2z B_{02}},\qquad
\omega=-d\Lambda\,\Lambda^{-1}
\tag{6.1}
\]

is flat, torsion-free, and preserves the internal wall normal \(N^I=\delta^I_3\). Here \(s_1,s_2\) are family parameters, distinct from the spacetime time coordinate. It is identity at the other wall \(z=0\).

At the reference coframe,

\[
\delta\mathcal E(B_{01},B_{02})=-2e^1\wedge e^2,
\]

so the raw Holst form has

\[
\boxed{\Omega_H^{\rm raw}(B_{01},B_{02})
=-\frac1{2\kappa\beta}\oint\delta\mathcal E
=\frac{\mathcal A}{\kappa\beta}.}
\tag{6.2}
\]

A separate direct bulk calculation of this exact family gives density \(2z/(\kappa\beta)\), integrating to the same result per transverse area. The metric pairing is zero. The contribution \(-\delta\oint C_H\), with \(C_H=-\mathcal E/(2\kappa\beta)\), cancels (6.2) exactly.

This computes a nonzero corner even when \(T=0\), \(\delta T=0\), and \(\delta N=0\). The canonical corner restores metric equivalence; it is not permissible to use the raw result as an obstruction to the already specified full Dirichlet prescription. In particular, \(C=0\) is not generally a valid HW descent for the full free-frame Dirichlet domain, because \(d_\Gamma C_\beta\) need not vanish. On the restricted slab family whose boundary frames are constant along each wall, \(C_\beta\) is wall-closed and both corner choices solve that restricted descent, but they give different regional forms. This is additional boundary restriction/prescription data, not an equivalence of the unrestricted Dirichlet problems.

## 7. Auxiliary Hessian and the precise finite Gaussian statement

Expand \(\mathcal K^{IJ}=z^{IJ}{}_A e^A\) and order the 24 independent components by \(I<J\) in pair order \(01,02,03,12,13,23\). Define dimensionless symmetric matrices by

\[
Q_\beta=\frac\epsilon{2\kappa}z^T H_\beta z.
\]

Let \(S=\star_{24}\) dualize the bivector pair. The exact identities are

\[
\boxed{H_\beta=H_\infty(1-rS),\quad S^2=-1,\quad
\det H_\infty=256,\quad
\frac{\det H_\beta}{\det H_\infty}=(1+r^2)^{12}.}
\tag{7.1}
\]

For an analytic proof of the relative factor, the connection map \(\mathcal C_e(\mathcal K)=[\mathcal K,e\wedge e]\) intertwines the internal dual. The EC equation is \(\star\mathcal C_e/(2\kappa)\), whereas the Holst coefficient's equation is \(\mathcal C_e/(2\kappa)\). The EC equation evaluated on \(-S\mathcal K\) is therefore the latter equation, giving \(H_1=-H_\infty S\). The eigenvalues of \(S\) are \(\pm i\), each twelvefold, proving (7.1). Direct construction from the original wedge action verifies the full matrices. The EC eigenvalues are \(-2,-1,+1,+2\) with multiplicities \(4,8,8,4\); continuity and nonsingularity keep inertia \((12,12)\) for every real \(r\).

At fixed coframe, with cell volume \(v>0\), a common flat measure on these 24 real components and a common Fresnel prescription give

\[
I_\beta(v)=\int d^{24}z\,
\exp\left(\frac{iv}{2\hbar\kappa}z^TH_\beta z\right)
=\left(\frac{2\pi\hbar\kappa}{v}\right)^{12}
\frac1{16(1+r^2)^6},\qquad
\frac{I_\beta}{I_\infty}=(1+r^2)^{-6}.
\tag{7.2}
\]

There is no signature phase difference. This is an oscillatory finite-dimensional integral, not an absolutely convergent path integral. For \(N\) independent unrestricted **interior** cells, each carrying the full \(\mathbb R^{24}\) integral (7.2), their relative factor is \((1+r^2)^{-6N}\). With field-independent \(N\), it cancels from normalized coframe-only observables only after boundary factors and the remaining measure/regulator data are separately matched.

Constrained boundary cells are not included in this count. Equal integration domains at the boundary do not imply that they carry the full 24-component determinant factor. In particular, the pullback-torsion condition makes each boundary \(T^I\) contain the normal one-form, so \(T_I\wedge T^I=0\) on that restricted subspace. Its integration problem must be treated separately from (7.2).

In a continuum treatment \(N\) is a divergent regulated trace, possibly metric-dependent. Moreover, if \(e=\det(e^I{}_{\mu})>0\), then \(d^{24}\mathcal K_{\rm coordinate}=e^6d^{24}\mathcal K_{\rm frame}\). These Jacobians, the coframe-to-metric and gauge measures, boundary restrictions, and counterterms have not been fixed by the classical action. Neither (7.1) nor (7.2) proves quantum equivalence. Torsion/connection insertions are also sensitive to the beta-dependent inverse Hessian.

## 8. A beta-dependent interaction from a fixed axial source

To test the scope of the vacuum statement, add exactly

\[
L_s=s\,\mathcal K^{IJ}{}_m\epsilon_{IJhn}J^h\eta^{mn}\epsilon,
\tag{8.1}
\]

where the internal current \(J^I\) is fixed in the connection variation and \(s\) is a beta-independent real coupling. All internal indices are fully summed, without an extra factor \(1/2\) for \(I,J\). This is a specified covariant axial spin source; no Dirac/gamma-matrix identification is being assumed. It may be an external covariant source or a current in a separately specified matter model. If used on the same bounded region, take the source supported away from the wall, so its stationary contorsion does not change the declared boundary domain.

The unique stationary solution of the **full 24-component** quadratic-plus-linear problem is

\[
\boxed{\mathcal K^{IJ}{}_a=\frac{\kappa s}{1+r^2}
\left[-\epsilon^{IJ}{}_{ah}J^h
+r(\delta^I_aJ^J-\delta^J_aJ^I)\right].}
\tag{8.2}
\]

Its induced term is

\[
\boxed{(Q_\beta+L_s)|_{\mathcal K_{\rm stat}}
=-\frac{3\kappa s^2}{1+r^2}J_IJ^I\epsilon,
\qquad
\frac{\text{coefficient}_\beta}{\text{coefficient}_{\rm EC}}
=\frac{\beta^2}{\beta^2+1}.}
\tag{8.3}
\]

A parent calculation using the covariant two-coefficient axial/vector ansatz and an independent reviewer calculation inverting the full Hessian agree. The latter verifies that there is no missed tensor component and that (8.2) remains valid for null \(J\); the ratio in (8.3) is a ratio of coefficients, not division by a vanishing interaction. For a timelike current \(J=(j,0,0,0)\), the EC result is \(+3\kappa s^2j^2\epsilon\), fixing the sign. At \(\beta=1\) the coefficient is half the EC coefficient; \(|\beta|\to\infty\) recovers it.

Thus, at fixed source normalization and fixed definition of the current, eliminating the auxiliary field yields different local responses for different beta. This does not claim that every possible matter completion is inequivalent: beta-dependent nonminimal couplings or parameter/observable redefinitions would be different specified comparisons. A minimally coupled Dirac theory must first supply and verify its own source normalization and reality conventions.

## 9. Evidence and what remains open

The independent [auxiliary-field report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_auxiliary_report_20261031_C7226F38.md>) gives the full elimination, determinant, branch, and source proofs. Its [24-component script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_auxiliary_20261031_C7226F38.wl>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_auxiliary_20261031_C7226F38_output.txt>) have **16 exact passed checks**, with no messages. Its [source script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_axial_source_20261031_C7226F38.wl>) and [output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_holst_axial_source_20261031_C7226F38_output.txt>) add **8 exact passed checks**, including the full stationary residual. Exact matrices are retained in its linked WXF exports.

The independent [boundary/corner report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_report.md>) contains the complete off-shell descent and frame analysis. Its [script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37.wl>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_output.txt>) have **25 exact passed checks**. The separately inspected [kernel return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_kernel_return.json#L22-L37>) has empty message/load-error/transport lists and no truncation. They include arbitrary first-jet metric and tetrad variations, mixed/normal metric components, the arbitrary-frame corner identity, all Lorentz-pair cancellations, an exact finite torsion-free family with a direct bulk pairing, the contorsion wall identity, and the surviving arbitrary-source residual. The parent read the full implementations and exported results. These are component Wolfram calculations, including xAct hosting where stated, not independent abstract-index proofs or a second CAS engine.

The separate [parent source script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/holst_axial_source_checks.wl>) and [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/holst_axial_source_checks.results.json>) have **7 exact passed checks**, with no messages. The auxiliary reviewer was not given the candidate result before solving the full-source problem. The boundary reviewer independently derived the corner and residual formulas; subsequent parent cross-checks were supplied as such. Analytic arguments, not finite example counts, establish the stated general identities.

Both reviewers subsequently audited their respective parts of this supplied synthesis; those text audits are not claimed as additional blind derivations. The [boundary audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_supplied_text_audit.md>) found the boundary/domain/sign arguments sound and requested the explicit metric projection \(p^*\) and the distinction between infinitesimal nullness and the declared finite Lorentz relation, now incorporated. The auxiliary audit found the determinant/source formulas sound and requested excluding constrained boundary cells from the unrestricted Gaussian count, also incorporated. The [review record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>) preserves the independence chronology and audit limits. No passed computation was rerun merely for these proof-interface clarifications.

**Verified:** unique real auxiliary branch; explicit off-shell action/wall split; sufficient off-shell Dirichlet boundary domain; actual corner descent and pulled-back potential equality; raw-corner counterexample; determinant and finite Gaussian under its stated prescription; exact normalized source response.

**Assumptions:** pure metric-compatible Lorentz connection except in the separately defined source model; nondegenerate oriented/time-oriented real coframes; real nonzero beta or EC limit; fixed timelike wall; the declared free-frame Dirichlet prescription and compatible global frame/gauge category; convergent integrals.

**Not established:** a regular global manifold theorem for all four-dimensional Einstein solution quotients; equivalence after changing frame/edge polarization; a specific fermion completion; continuum quantum measures, ghosts, regulators, or renormalized observables; self-dual reality-condition quantization. These are separate questions, not consequences of the classical result. The subsequent [real Plebanski comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/08 Real Plebanski branch comparison.md>) independently treats regular simplicity reduction and its branch/global obstructions; that additional result is not inferred from the EC–Holst calculation alone.
