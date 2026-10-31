# Independent 4D metric–tetrad–Holst wall and corner computation

## Decisive results

**For the covariant wall action and the corner representative derived below, the torsion-free integrated first-order presymplectic potential equals the metric Dirichlet potential exactly, including a fully free boundary Lorentz frame. Its presymplectic form has no Immirzi dependence.** This conclusion is not true for an uncorrected bulk potential: there is a nonzero, exactly computed pure-Lorentz Holst pairing even when the internal wall normal is fixed and the entire family is torsion-free.

The signs in the conventions of the question are

\[
\begin{aligned}
\theta_\beta\big|_{\omega(e)}&=\theta_g-d\alpha_\beta,
&\alpha_\beta&=\frac{\star(e_I\wedge\delta e^I)+\beta^{-1}e_I\wedge\delta e^I}{2\kappa},\\
\ell_\beta&=\frac{\epsilon_{IJKL}e^I\wedge e^J n^K Dn^L}{2\kappa}
 +\frac{e_I\wedge T^I}{2\kappa\beta},\\
C_\beta^{\rm can}&=C_n-\frac{e_I\wedge\delta e^I}{2\kappa\beta},
&C_n&=\frac{\epsilon_{IJKL}e^I\wedge e^J n^K\delta n^L}{2\kappa},\\
C_n&=C_g-\frac{\star(e_I\wedge\delta e^I)}{2\kappa},
&C_g&=-\frac{\iota_b\epsilon_\Gamma}{2\kappa},\qquad
b^\mu=q^{\mu\alpha}n^\nu h_{\alpha\nu}.
\end{aligned}
\]

All wall equations mean pullback to the wall. The Hodge star is applied **before** pullback.

For an independent off-shell connection, pure metric Dirichlet data alone do not remove every boundary residual. A sufficient strict off-shell domain is

\[
\delta q_{ij}=0,\qquad \iota_\Gamma^*T^I=0,
\qquad \delta(\iota_\Gamma^*T^I)=0.
\]

Full torsion zero at the wall is **not** necessary. The weaker condition \(\iota_\Gamma^*D_\omega\Sigma_{\beta IJ}=0\) also suffices for unrestricted metric-Dirichlet Lorentz frame variations. Pullback torsion zero is not, however, enough to identify the off-shell response to arbitrary \(\delta q\) with the metric Brown–York momentum.

An exact flat-slab family with the internal normal fixed gives

\[
\Omega_{\rm raw,H}(\delta_{B_{01}},\delta_{B_{02}})
=+\frac{\mathcal A}{\kappa\beta},
\qquad
\Omega_{\rm can,H}(\delta_{B_{01}},\delta_{B_{02}})=0.
\]

For a free internal normal, a second pair gives a raw Einstein contribution
\(\Omega_{\rm raw,E}(B_{01},R_{13})=+\mathcal A/\kappa\), again canceled by the canonical wall corner.

## Conventions and scope

The coframe is oriented and invertible, the connection is Lorentz-compatible, \(\eta_{IJ}=\operatorname{diag}(-,+,+,+)\), \(\epsilon_{0123}=+1\), and \(\epsilon=e^0\wedge e^1\wedge e^2\wedge e^3\). Thus \(\star(e^0\wedge e^1)=-e^2\wedge e^3\), and \(\star^2=-1\) on spacetime two-forms. We use \(\kappa=8\pi G_4\), real nonzero \(\beta\), \(d\delta=\delta d\), \(\Theta=\int_\Sigma\theta-\int_{\partial\Sigma}C\), and \(\Omega=\delta\Theta\).

The wall is a fixed smooth timelike hypersurface. Its outward normal is spacelike, \(n^2=1\), \(\epsilon_\Gamma=\iota_n\epsilon\), and \(K_{ij}=q_i{}^\mu q_j{}^\nu\nabla_\mu n_\nu\). The internal normal is the derived field \(n^I=e^I{}_{\mu}n^\mu\), not an independent edge field. A fixed internal normal means the extra boundary gauge restriction \(n^I=N^I\), not that the spacetime normal covector is invariant under metric variations.

Write \(h_{\mu\nu}=\delta g_{\mu\nu}\). Here \(h^{\mu\nu}\) means raising the indices of \(h_{\mu\nu}\); it is **minus** \(\delta g^{\mu\nu}\).

The local wall identities are general. The exact nonzero pairing uses \(\Lambda=0\), \(M=[t_i,t_f]\times T^2\times[0,1]_z\), orthogonal constant-time slices, and finite transverse area \(\mathcal A\). There are two disconnected smooth timelike walls. Lorentz transformations are the identity on the lower wall, preventing cancellation between the two corners. No independent cap GHY terms, boost-angle joint action, edge fields, or null-boundary prescription is included. Such additions would have to be specified separately; the supplied HW integrated-potential convention is the one used here.

## 1. Natural first-order potential and its torsion-free pullback

Define the Lorentz-bivector-valued two-form

\[
\Sigma_{\beta IJ}
=\frac12\epsilon_{IJKL}e^K\wedge e^L+\frac1\beta e_I\wedge e_J.
\]

The kinetic Lagrangian is \(\Sigma_{\beta IJ}\wedge F^{IJ}/(2\kappa)\). Direct integration by parts in its connection variation gives

\[
\boxed{\theta_\beta=\frac1{2\kappa}\Sigma_{\beta IJ}\wedge\delta\omega^{IJ}.}
\]

The cosmological term contributes no potential. The connection equation is \(D_\omega\Sigma_\beta=0\). For invertible coframes and real nonzero \(\beta\), the internal bivector operator is invertible, and this bulk equation implies torsion zero. No Einstein equation is used in the pullback identity.

Let \(E=e_I\wedge\delta e^I\). On the torsion-free configuration subspace, with variations tangent to it,

\[
D\delta e^I+\delta\omega^I{}_J\wedge e^J=0,
\qquad
e^I\wedge e^J\wedge\delta\omega_{IJ}=-dE.
\]

Consequently \(\theta_H=-dE/(2\kappa\beta)\), **not zero in general**. The Einstein part obeys

\[
\theta_E=\theta_g-\frac{d\star E}{2\kappa}.
\]

These signs have been checked for arbitrary tetrad-variation first jets in an inertial coframe. At a point, normal coordinates and a parallel orthonormal frame reduce the tensorial first-jet identity to precisely this universal calculation; it is not merely a numerical flat-background sample.

On this subspace \(L_\beta=L_g\). Equality of the pulled-back Lagrangians is therefore consistent with, but does not erase, the exact-spacetime-form difference of their natural potentials.

## 2. Off-shell metric wall descent, retaining normal and mixed variations

Decompose

\[
H=h_{\mu\nu}n^\mu n^\nu,\qquad
b^\mu=q^{\mu\alpha}n^\nu h_{\alpha\nu},\qquad
s_{\mu\nu}=q_\mu{}^\alpha q_\nu{}^\beta h_{\alpha\beta},\qquad
s=q^{\mu\nu}s_{\mu\nu}.
\]

Let \(a^\mu=n^\nu\nabla_\nu n^\mu\) be the acceleration of the chosen normal extension, and \(D_i\) the intrinsic wall derivative. Fixed embedding, not fixed metric, implies

\[
\delta n_\mu=\frac H2 n_\mu,\qquad
\delta n^\mu=-b^\mu-\frac H2 n^\mu,\qquad
\delta\epsilon_\Gamma=\frac s2\epsilon_\Gamma.
\]

For the metric potential stated in the question,

\[
2\kappa\frac{\theta_g|_\Gamma}{\epsilon_\Gamma}
=D_i b^i-n^\mu\nabla_\mu s+HK-K^{ij}s_{ij}-2a_i b^i,
\]

while direct variation of \(K=\nabla_\mu n^\mu\) gives

\[
\delta K=\frac12 n^\mu\nabla_\mu s-D_i b^i+a_i b^i-\frac12HK.
\]

All normal-normal and acceleration terms cancel against \(\delta\ell_g\), but the mixed variation leaves an intrinsic divergence:

\[
\boxed{
(\theta_g+\delta\ell_g)|_\Gamma
=\frac{Kq^{ij}-K^{ij}}{2\kappa}\,h_{ij}\,\epsilon_\Gamma
+dC_g,
\qquad C_g=-\frac{\iota_b\epsilon_\Gamma}{2\kappa}.}
\]

This is an off-shell identity. No field equation and no condition \(h_{ni}=h_{nn}=0\) was used. The exact test allows all symmetric metric and variation first jets at a point, including arbitrary nongeodesic normal acceleration; all three metric residuals are exactly zero.

## 3. Covariant wall action and the off-shell residual

Choose the actual first-order wall Lagrangian

\[
\boxed{
\ell_E=\frac{\epsilon_{IJKL}e^I\wedge e^J n^K Dn^L}{2\kappa},
\qquad
\ell_H=\frac{e_I\wedge T^I}{2\kappa\beta}.}
\]

The signs are fixed by cancellation of the independent \(\delta\omega\) coefficient on the wall. In an adapted frame \(n^I=\delta^I_3\), \(\epsilon_\Gamma=-e^0\wedge e^1\wedge e^2\); substituting \(Dn^a=K^a{}_b e^b\) gives \(\ell_E=+K\epsilon_\Gamma/\kappa\). The Holst term vanishes on the torsion-free subspace.

The Holst variation is exactly

\[
(\theta_H+\delta\ell_H)|_\Gamma
=\frac{\delta e_I\wedge T^I}{\kappa\beta}
-d\!\left(\frac{E}{2\kappa\beta}\right).
\]

This also follows from the Nieh–Yan identity
\(d(e_I\wedge T^I)=T_I\wedge T^I-e_I\wedge e_J\wedge F^{IJ}\).
The term \(\delta e_I\wedge T^I\) cannot be dropped in an unrestricted off-shell calculation.

A particularly transparent exact off-shell description uses the contorsion

\[
A^{IJ}=\omega^{IJ}-\omega(e)^{IJ},\qquad
B_A=\frac1{2\kappa}\Sigma_{\beta IJ}\wedge A^{IJ}.
\]

Purely algebraically on the wall,

\[
\boxed{\ell_\beta=\ell_g-B_A|_\Gamma.}
\]

For the Einstein term, \(\Sigma_{E IJ}|_\Gamma\) has only internal normal–tangent components, so \(\Sigma_{E IJ}n^I A^J{}_K n^K=-\Sigma_{E IJ}A^{IJ}/2\). For the Holst term, \(T^I=A^I{}_J\wedge e^J\) gives \(e_I\wedge T^I=-e_I\wedge e_J\wedge A^{IJ}\). Both identities were checked for arbitrary antisymmetric contorsion components.

Using the natural potential, rather than silently changing it under this derivative-dependent field redefinition, gives the exact formula

\[
\boxed{
(\theta_\beta+\delta\ell_\beta)|_\Gamma
=\frac{K_gq^{ij}-K_g^{ij}}{2\kappa}h_{ij}\epsilon_\Gamma
+d(C_g-\alpha_\beta)
-\frac1{2\kappa}\delta\Sigma_{\beta IJ}\wedge A^{IJ}\Big|_\Gamma .}
\]

Here \(K_g\) is the Levi-Civita extrinsic curvature. The explicit last term is essential: equality of the actions after eliminating/transgressing the connection does not authorize dropping it from an off-shell potential calculation.

### A precise sufficient off-shell boundary domain

On the fixed wall, \(\delta q_{ij}=0\) implies uniquely

\[
\delta e_i^I=\lambda^I{}_J e_i^J,
\qquad \lambda_{IJ}=-\lambda_{JI},
\qquad\delta n^I=\lambda^I{}_J n^J.
\]

This is a statement about the pulled-back tetrad; unrestricted normal components of the full tetrad variation need not be a pure Lorentz variation. The residual becomes

\[
-\delta\Sigma_{\beta IJ}\wedge A^{IJ}
=\lambda^{IJ}D_\omega\Sigma_{\beta IJ}
\quad\hbox{on metric-Dirichlet variations.}
\]

Therefore \(\iota^*D_\omega\Sigma_\beta=0\) suffices, and the stronger simple condition \(\iota^*T^I=0\) suffices as well. These are restrictions of the off-shell boundary domain, not appeals to the bulk torsion equation. Allowed variations preserve whichever restriction is selected.

The distinction from metric momentum equality is visible in an adapted frame. Pullback torsion zero permits

\[
A^{ab}|_\Gamma=0,\qquad
A^{a3}|_\Gamma=\eta^{ab}c_{ib}e^i,
\qquad c_{ij}=c_{ji},\quad a,b,i,j=0,1,2.
\]

The remaining normal components of torsion need not vanish. The residual for arbitrary \(\delta q\) is then

\[
-\frac{\delta\Sigma_\beta\wedge A}{2\kappa}\Big|_\Gamma
=\frac{(\operatorname{tr}_q c)q^{ij}-c^{ij}}{2\kappa}
 h_{ij}\epsilon_\Gamma.
\]

Thus the source is the Brown–York expression built from the connection-defined
\(\mathcal K_{ij}=e_{jI}D_i n^I=K^g_{ij}+c_{ij}\), not necessarily the metric \(K^g_{ij}\). For example \(A^{13}=c e^1\) has \(\iota^*T^I=0\) but \(T^1=c e^1\wedge e^3\ne0\). This family still admits exact off-shell metric-Dirichlet descent. Both its vanishing Dirichlet residual and its nonzero arbitrary-source correction were checked symbolically.

If no such boundary torsion/Gauss condition is imposed, one must retain the displayed residual. A variational argument that evaluates it only on torsion-free bulk solutions is weaker than the off-shell HW boundary identity requested here.

## 4. The corner from the actual wall variation

In \(\delta\ell_E\), integration by parts of \(Dn\)'s variation gives

\[
C_n=\frac{\epsilon_{IJKL}e^I\wedge e^J n^K\delta n^L}{2\kappa}.
\]

In \(\delta\ell_H\), the analogous integration by parts gives
\(C_H=-E/(2\kappa\beta)\). These are not post hoc improvements to the bulk potential; they arise directly from this boundary action and its chosen off-shell domain.

An exact algebraic identity, retaining all mixed metric variations, is

\[
C_n=C_g-\alpha_E,\qquad
\alpha_E=\frac{\star E}{2\kappa}.
\]

Hence \(C_\beta^{\rm can}=C_g-\alpha_\beta\). On the torsion-free configuration subspace,

\[
\begin{aligned}
\Theta_\beta^{\rm can}
&=\int_\Sigma(\theta_g-d\alpha_\beta)
 -\int_{\partial\Sigma}(C_g-\alpha_\beta)\\
&=\int_\Sigma\theta_g-\int_{\partial\Sigma}C_g
=\Theta_g,\qquad
\Omega_\beta^{\rm can}=\Omega_g.
\end{aligned}
\]

This equality is of integrated potentials, not only symplectic forms. All pure Lorentz directions are therefore null after this pullback with the canonical representative.

### Fixed internal normal versus a free frame

For a raw bulk potential with no corner subtraction, its relative integrated corner against metric HW data is

\[
\Theta_\beta^{\rm raw}-\Theta_g
=\int_{\partial\Sigma}\big(C_g-\alpha_\beta\big)
=\int_{\partial\Sigma}\big(C_n-\alpha_H\big).
\]

* **Fixed internal normal:** \(\delta n^I=0\), so \(C_n=0\) and \(\alpha_E|_\Gamma=C_g\). The raw relative obstruction is only \(-\int\alpha_H\). Fixed internal normal does not mean \(h_{ni}=0\), and it does not remove the Holst corner.
* **Fully free boundary frame:** \(C_n\) is generally nonzero. The raw relative obstruction contains the Einstein normal-frame term and the Holst term. The canonical \(C_n-\alpha_H\) cancels both.

The raw \(C=0\) choice is not automatically an admissible HW prescription for the full metric-Dirichlet boundary domain: in general \(d_\Gamma C_\beta^{\rm can}\ne0\). The raw comparison is useful precisely for exhibiting what a bulk-only argument misses.

### Nonuniqueness and genuine prescription changes

“Canonical” here means the representative obtained by the displayed integrations by parts. It does not mean mathematically unique. On the allowed domain, \(C\mapsto C+Z\) with \(d_\Gamma Z=0\) preserves the descent but changes

\[
\Theta\mapsto\Theta-\int_{\partial\Sigma}Z,
\qquad
\Omega\mapsto\Omega-\delta\int_{\partial\Sigma}Z.
\]

For \(Z=d_\Gamma W\) and closed smooth corners, its integral vanishes; a more general closed term need not. Locality, covariance, global cohomology, and boundary data determine which such alternatives are admissible.

On the restricted flat-slab boundary domain where the pulled-back frame is constant along each wall and only its constant Lorentz orientation may vary, \(C_\beta^{\rm can}\) is wall-closed. Then \(C=0\) and \(C=C_\beta^{\rm can}\) both solve that restricted descent; they need not give the same symplectic form. This is an extra restriction/prescription, not a proof that \(C=0\) works for arbitrary local boundary frames.

A standard \(dY\) change is harmless to the integrated potential only when made as the pair

\[
\theta\mapsto\theta+dY,\qquad C\mapsto C+Y|_\Gamma.
\]

Choosing \(Y=\alpha_\beta\) maps the pulled-back canonical pair to \((\theta_g,C_g)\). Improving \(\theta\) alone instead changes corner data and can change the boundary phase space. Likewise, identifying the torsion-free Holst potential with zero without tracking this pair is not justified.

## 5. Exact nonzero pure-Lorentz pairings

Let \(e_0^I=(dt,dx,dy,dz)\), \(\omega_0=0\), and orient the upper corner by \(dx\wedge dy\), the boundary orientation of \(\Sigma_t\) with volume \(dx\wedge dy\wedge dz\). A Lorentz generator is specified by \(\delta e^I=\lambda^I{}_J e^J\). \(B_{01}\) and \(B_{02}\) have upper antisymmetric components \(\lambda^{01}=1\) and \(\lambda^{02}=1\); \(R_{13}\) has \(\lambda^{13}=1\).

For pure Lorentz directions the metric and its Hodge star are fixed, and

\[
\delta E(\delta_1,\delta_2)
=2\,\delta_1 e_I\wedge\delta_2 e^I.
\]

### Fixed-normal Holst example

For \(\delta_1=B_{01}\), \(\delta_2=B_{02}\),

\[
\delta E=-2e^1\wedge e^2,
\qquad
-\delta\alpha_H|_{\partial\Sigma}=+\frac{e^1\wedge e^2}{\kappa\beta},
\qquad
-\delta\alpha_E|_{\partial\Sigma}=0.
\]

Both generators preserve \(n^I=\delta^I_3\). To realize the pair by exact solutions and isolate one wall, use

\[
\Lambda(s,u,z)=\exp(sz B_{01})\exp(uz B_{02}),
\quad e=\Lambda e_0,
\quad\omega=-d\Lambda\,\Lambda^{-1},
\quad 0\le z\le1.
\]

The metric is exactly flat, \(T=0\), \(F=0\), and the frame is the identity at \(z=0\). The connection has only a \(dz\) component, so its curvature is identically zero. Direct differentiation of the natural bulk potential—not only the corner formula—gives at \(s=u=0\)

\[
\omega_H(\partial_s,\partial_u)|_\Sigma
=\frac{2z}{\kappa\beta}\,dx\wedge dy\wedge dz,
\qquad
\int_\Sigma\omega_H=\frac{\mathcal A}{\kappa\beta}.
\]

Since \(\delta C_H=-\delta\alpha_H\), the HW subtraction is exactly the same quantity and the integrated canonical pairing vanishes.

### Free-normal Einstein example

For \(B_{01}\) and \(R_{13}\),

\[
\delta E=2e^0\wedge e^3,
\quad \star(e^0\wedge e^3)=-e^1\wedge e^2,
\quad
-\delta\alpha_E|_{\partial\Sigma}=+\frac{e^1\wedge e^2}{\kappa},
\quad -\delta\alpha_H|_{\partial\Sigma}=0.
\]

Here \(R_{13}\) rotates the internal normal. The raw Einstein pairing is \(+\mathcal A/\kappa\), and \(\delta C_n=-\delta\alpha_E\) cancels it. The script checks this last identity for two fully generic Lorentz generators, not just this pair. A radially supported Lorentz transformation of the flat solution realizes this pair exactly as well; only the Holst family was separately integrated in the bulk in the saved computation.

## 6. Computational evidence and provenance

The self-contained [Wolfram script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37.wl>) was run in a fresh xAct core kernel. It uses an explicit exact exterior-algebra implementation and tensor component jets; it does not claim an independent second implementation merely because xAct and Wolfram share a kernel. Loaded packages were xTensor, xPert, and xTras.

The [actual 25-check output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_output.txt>) has **25/25 checks true**. The checks include arbitrary tetrad first jets; arbitrary metric and variation first jets; the general mixed/normal wall terms; Hodge signs; the two corner pairings; the exact Lorentz family and direct bulk Holst integral; arbitrary-contorsion wall transgression; and the sufficient off-shell torsion domain with its source-response counterexample.

The preserved [actual kernel return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_kernel_return.json#L22-L37>) records `ok=true`, `truncated=false`, `messages=[]`, `loadErrors=[]`, `loadMessages=[]`, and `transportStderr=[]`. These diagnostic statements come from that inspected return, not from `AllChecksPassed`. The elapsed kernel time for the completed 25-check run was 11652 ms. A subsequent script-only edit makes future exports use a unique UUID suffix if the default output exists; the symbolic calculation was not rerun merely for this export-policy change.

Before deriving anything, this review read the required [root rules](</Users/koishi/Documents/Note/AGENTS.md>), [applicable article rules](</Users/koishi/Documents/Note/Articles/Quantization in AdS/AGENTS.md>), and [CPS convention anchor](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>). No parent candidate file or project synthesis was read during that independent derivation, and no parent file was edited. A later [supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_4d_boundary_20261031_fresh_9c37_supplied_text_audit.md>) began only after this independent report and its evidence had been preserved; it is not part of the blind review.

**Independence chronology:** the natural-potential sign, metric wall descent, covariant wall terms, canonical corner cancellation, and both nonzero Lorentz pairings were derived before the first substantive parent follow-up. Those findings were sent to the parent first. The parent subsequently asked for the precise off-shell boundary domain and supplied another reviewer's contorsion-transgression formula; this review then derived and checked its wall identity and residual independently. The parent later sent matching Holst-residual and adapted-contorsion observations, followed by a gauge-variation proof outline. Those later off-shell cross-checks are therefore collaborative verification, not claimed as blind independent discovery. The general symbolic residual checks remain explicit evidence. Delegation depth prohibited another subagent here, so this report does not claim an additional fresh independent reviewer below it.

## Limits and unresolved prescription choices

* The displayed canonical equivalence is a theorem for the stated torsion-free pullback and paired wall/corner prescription; the raw nonzero corner pairings are exact counterexamples to a bulk-only equivalence claim.
* No uniqueness theorem for all local/covariant closed corner terms is asserted. A different allowed \(Z\), edge-field extension, or boundary-frame restriction can define different corner physics.
* The generic metric and first-order off-shell wall identities are established. A universal action including arbitrary moving corners, nonorthogonal cap joints, or null boundaries is not established here.
* The weaker Gauss boundary domain is justified by the exact residual identity. The concrete fully sufficient domain used for the wall variational contract is pullback torsion zero; no classification of its possible alternative boundary dynamics is claimed.
* Matter with torsion sources, degenerate tetrads, complex self-dual \(\beta\), and quantum measure/Jacobian questions lie outside this calculation.
