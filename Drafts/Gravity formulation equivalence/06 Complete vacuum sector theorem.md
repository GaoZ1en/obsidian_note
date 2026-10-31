# A complete geometric AdS3 vacuum-sector equivalence theorem

## Result

**Proved in the precise sector and smooth category below.** On a simply connected solid cylinder, the geodesically complete, real nondegenerate geometric CS vacuum sector and the geodesically complete metric Einstein vacuum sector have the same reduced space and the same action-derived weak symplectic form:

\[
\boxed{\mathcal P_g^{\rm complete}\simeq\mathcal P_{\rm CS}^{\rm complete}
\simeq\mathcal O_{\rm vac}^{(+)}\times\mathcal O_{\rm vac}^{(-)},
\qquad \Phi^*\Omega_{\rm CS}=\Omega_g.}
\tag{0.1}
\]

The boundary actions are the independently fixed Einstein–GHY–counterterm and standard chiral CS prescriptions, not boundary actions chosen after the fact to force agreement. Their comparison is proved in the [standard-boundary calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/05 Standard chiral boundary comparison.md>).

The essential restrictions are **geodesic completeness**, **fixed compatible spin/frame transitions**, **degree-one projective boundary data**, and **a boundary-sensitive smooth structure**. The CS relation consists of all proper gauge arrows between admissible endpoints, not a supposed action of the unrestricted CS gauge group on the nondegenerate domain. A smooth gauge path through nondegenerate coframes need not produce a complete spacetime-diffeomorphism path outside this sector.

This is a classical theorem for a specified complete geometric sector. It does not identify unrestricted CS theory, a putative larger GH-only gravitational sector, global quantum action phases, or either path-integral measure with that sector.

## 1. Independent definitions of the two domains

Let

\[
M=\mathbb R_t\times\operatorname{int}D^2,
\qquad \Lambda=-\ell^{-2},\quad \ell>0,\quad k=\ell/(4G).
\]

There is no quotient of the global time coordinate. Fix spacetime orientation, time orientation, the boundary cylinder coordinates, and compatible spin/bundle data. Since \(M\) is contractible, its spin structure is unique; this does not remove the need to specify the polar boundary spin-frame transition.

Use the exact FG/DS collar of the [boundary calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/05 Standard chiral boundary comparison.md#L17-L84>): \(u=t+\phi\), \(v=\phi-t\), \(\phi\sim\phi+2\pi\),

\[
A=J_2\frac{dr}{r}+\begin{pmatrix}0&a(u)/r\\r&0\end{pmatrix}du,
\qquad
\bar A=-J_2\frac{dr}{r}+\begin{pmatrix}0&-r\\-b(v)/r&0\end{pmatrix}dv,
\tag{1.1}
\]

with the real matrices and fundamental trace \(\operatorname{tr}(J_aJ_b)=\eta_{ab}/2\) already fixed there. The boundary coframe is normal-adapted. A regular interior atlas and a cut polar collar are related by **fixed field-independent diagonal Lorentz/spin transitions**, compatible with the smooth degree-one AdS filling. In particular, the displayed annular matrix monodromy \(-I\) includes a central closing transition and is not genuine nontrivial disk holonomy. The full compatible transition class is required: transition paths with the same \(-I\) endpoint can differ by integer winding, so the endpoint sign alone does not guarantee an extension over the disk.

Let \(\mathcal O\) denote the smooth degree-one projective orbit, characterized equivalently by

\[
\mathcal L_f=-\frac14 f'^2-\frac12\{f,x\},\qquad
f(x+2\pi)=f(x)+2\pi,\qquad f'>0,
\tag{1.2}
\]

modulo projective postcomposition. Its image/fiber theorem and global normalized smooth slice are proved in the [projective-orbit report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/01 AdS3 vacuum equivalence.md>). Set \(\mathcal O_2=\mathcal O\times\mathcal O\).

**Metric domain \(\mathcal S_g^{\rm complete}\).** Smooth, real, orientation/time-orientation-compatible Lorentzian metrics on \(M\), satisfying \(\operatorname{Ric}(g)=-2g/\ell^2\), complete for every affinely parametrized geodesic, and equal on some outer collar to the exact Bañados metric with stresses \((a,b)\in\mathcal O_2\). This is a collar gauge condition, not a claim that FG coordinates extend through the center. The proper relation uses all global orientation/time-orientation-preserving diffeomorphisms equal to the identity on some outer collar and mapping one declared metric to the other. No restriction to an infinitesimal or identity-component relation is silently made.

**CS domain \(\mathcal S_{\rm CS}^{\rm complete}\).** Smooth real flat pairs \((A,\bar A)\) on the fixed compatible bundles, obeying (1.1), with

\[
e=\frac\ell2(A-\bar A),\qquad \det e\ne0,
\qquad g=2\operatorname{tr}(e\otimes e)
\tag{1.3}
\]

of the declared orientation/time orientation and geodesically complete. This condition is imposed on the reconstructed geometry; the definition does not call it a diffeomorphism-generated AdS orbit. Proper arrows are all smooth gauge pairs \((h,\bar h)\) equal to \((I,I)\) on some outer collar, whose source and target both lie in this domain. Intermediate gauge-transformed fields need not remain in the domain. This is the restriction of a gauge groupoid to admissible objects, not a group action preserving the entire domain.

Both definitions keep the same conformal source, circumference, and boundary clock. They exclude defects, other topology, degenerate coframes, and incomplete locally AdS domains. They are stronger than saying merely “all smooth BH solutions connected to the vacuum.”

## 2. Every boundary point has a smooth complete filling

**Extension lemma.** Every pair in (1.2) has a smooth onto bulk diffeomorphism \(F\) whose pullback of global AdS has those stresses and the fixed leading boundary metric. Locally in the boundary functions, the filling can be chosen smoothly, with a common exact FG collar and the fixed transition data.

The independent constructive proof is in the [global-extension review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-AdS3-extension-20261030-1c676609.md>). Here are its decisive ingredients; they are not an assumption that every circle map is one autonomous exponential.

For this construction only, use \(x^+=t+\phi\), \(x^-=t-\phi\), so the barred coordinate of (1.1) is \(v=-x^-\). The circle maps and stresses are related by
\[
f_v(v)=-f_-(-v),\qquad b(v)=\mathcal L_{f_v}(v)=\mathcal L_{f_-}(-v).
\]
The same conversion applies at every path parameter \(s\); \(f_-\) below is an \(x^-\) map, not the \(v\) map. Set

\[
f_{\pm,s}(x)=(1-s)x+s f_\pm(x),\qquad 0\leq s\leq1.
\]

Its derivatives are uniformly positive and all periodic coefficients are uniformly bounded, including in noncompact global time. In the seed global-AdS FG coordinate \(z\), with areal radius \(r_{\rm areal}=z^{-1}-z/4\), define

\[
P=f'_{+,s},\quad Q=f'_{-,s},\quad
\alpha_+=P'/P,\quad\alpha_-=Q'/Q,
\]

\[
U=f_{+,s}+\tfrac12z^2P\alpha_-,\qquad
V=f_{-,s}+\tfrac12z^2Q\alpha_+,\qquad
Z=z\sqrt{PQ}\left(1+\tfrac14z^2\alpha_+\alpha_-\right).
\tag{2.1}
\]

The normal factor fixes the leading boundary source; the subleading terms remove the unwanted leading radial cross terms. Direct pullback gives the stresses (1.2), \(g_{zi}=O(z)\), and \(g_{zz}=\ell^2/z^2+O(z^2)\). A boundary-trivial adjustment of tangential order \(z^4\) and normal order \(z^5\) puts the collar in exact FG gauge without changing those stresses. The geodesic-defining-function construction is uniform on a small neighborhood of any fixed smooth pair because its coefficients are periodic and have common bounds; the resulting small collar adjustment extends as a bulk diffeomorphism supported away from the center. Three-dimensional Einstein equations then fix the exact Bañados radial coefficients.

For global extension, put \(y=-\log z\) and replace \(s\) in (2.1) by \(s=\tau\lambda(y)\), where \(\lambda=0\) in the core and \(\lambda=1\) sufficiently far out. The transition can be arbitrarily wide in \(y\), so \(\|\lambda'\|\) is small. The leading derivative at fixed \(s\) is uniformly invertible triangular; its corrections are \(O(\lambda')+O(e^{-2Y_0})\). Thus the full map is a local diffeomorphism. Its time and logarithmic-radius displacement are bounded, so it is proper. A proper local diffeomorphism from a connected manifold onto the simply connected target \(M\) is a one-sheeted covering, hence a global diffeomorphism. This proves injectivity and surjectivity, not merely a nonzero Jacobian.

The construction is identity near the center. It is a complete nonautonomous isotopy and gives smooth nondegenerate complete metrics. The frame can be pulled back from a smooth seed frame and put in (1.1) on the collar; along the isotopy its relative winding is unchanged, so fixed compatible spin transitions can be used. Locally in \(f\), common bounds permit the same collar and cutoff choices, giving the required smooth section.

### 2.1 An independent exact-FG construction of the smooth section

The common exact collar can alternatively be obtained without a formal FG adjustment. In the coordinates \(u=t+\phi,v=\phi-t\) of (1.1), set \(\mathcal D=r^4-ab\). For periodic labels \(p(u),q(v)\), the exact FG-preserving vector is

\[
\xi^r=-\frac r2(p'+q'),\qquad
\xi^u=p+\frac{bp''-r^2q''}{2\mathcal D},\qquad
\xi^v=q+\frac{aq''-r^2p''}{2\mathcal D}.
\tag{2.2}
\]

Direct substitution gives \(\mathcal L_\xi g=\delta g\), with
\(\delta a=pa'+2p'a-p'''/2\) and \(\delta b=qb'+2q'b-q'''/2\), and with all radial gauge components unchanged. Along a smooth circle-map path take \(p_s=\dot f_{+,s}/f'_{+,s}\), \(q_s=\dot f_{v,s}/f'_{v,s}\). The exact collar metric then obeys \(\partial_s g_s=\mathcal L_{\xi_s}g_s\).

Choose one large radius for which \(\mathcal D>0\) uniformly in a neighborhood of the path, and extend \(\xi_s\) with a smooth cutoff to zero in the core. It is bounded in logarithmic radius, time, and angle, uniformly in \(s\); its finite-parameter flow is complete. If \(\varphi_s\) is the flow of \(-\xi_s\), then \(\partial_s(\varphi_s^*g_s)=0\) on a common farther collar whose trajectories stay in the cutoff-one region. Therefore \(F_s=\varphi_s^{-1}\) produces the exact prescribed FG metric there. For this identity-start path its boundary equation is \(\dot f_s=f_s' p_s\), fixing the inverse-flow convention. The bounds and cutoff can be shared in a neighborhood of any fixed pair, so the construction is smoothly parameter-dependent in the collar-controlled sense.

Pull back the smooth seed coframe by \(F_s\). Its relative Lorentz map to the prescribed normal-adapted DS coframe on the common collar starts at the identity, but need not remain near the identity. Lift this entire path to the spin group starting at \(I\). Multiply its Lie-algebra velocity by a second radial cutoff, and integrate the resulting pointwise group ODE from \(I\). The global spin transformation is identity in the core and equals the required correction on a common farther collar. Fixed transitions make this construction compatible on overlaps; no global logarithm or relative-framing extension is assumed. Torsion-free uniqueness then matches both connections to (1.1). This exact-flow construction and all nine component residuals were obtained by the [independent complete-sector reviewer](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent complete-sector theorem review 20261030.md#L269-L344>).

A fixed \(\partial_t\) can remain future timelike, but this does **not** imply that the chosen coordinate hypersurfaces \(t=\mathrm{const}\) are globally spacelike. CPS may be evaluated on fixed Cauchy representatives in local solution charts; conserved currents with zero boundary flux give compatible forms on homologous cuts. No moving-cut contribution is silently being set to zero.

## 3. The developing map: where completeness enters

**Lemma.** A flat nondegenerate pair on simply connected \(M\) defines a local isometry to universal-cover AdS. If its reconstructed metric is geodesically complete, that map is a global isometry.

**Proof.** In a global regular trivialization, flatness gives smooth maps

\[
A=G^{-1}dG,\qquad \bar A=\bar G^{-1}d\bar G.
\]

Define \(X=G\bar G^{-1}\in SL(2,\mathbb R)\). It lifts to the universal cover because \(M\) is simply connected. Direct differentiation gives

\[
X^{-1}dX=\bar G(A-\bar A)\bar G^{-1},
\qquad
X^*\left[\frac{\ell^2}{2}\operatorname{tr}(X^{-1}dX\otimes X^{-1}dX)\right]
=2\operatorname{tr}(e\otimes e)=g.
\tag{3.1}
\]

The bi-invariant target metric has \(\langle J_a,J_b\rangle=\ell^2\eta_{ab}/4\) and sectional curvature \(-1/\ell^2\). In fact \(\nabla_UV=[U,V]/2\) and \(R(U,V)W=-[[U,V],W]/4\). Its universal cover is global AdS. Nondegeneracy of \(e\) makes the lifted developing map a local diffeomorphism and local isometry.

A local isometry from a geodesically complete source to a connected target is a covering in this setting. To see why, take a normal star-shaped target neighborhood about a point. Each target radial geodesic lifts for its entire finite parameter interval from any chosen preimage, by source completeness. Exponentiating the lifted initial vectors gives a full inverse sheet over that neighborhood. Reversing radial geodesics shows that these sheets exhaust the preimage, and uniqueness makes them disjoint. Broken geodesics give surjectivity onto the connected target. Since the target universal-cover AdS is simply connected, the connected covering has one sheet. Therefore the developing map is a global isometry. \(\square\)

For a metric Einstein solution, first choose any global oriented/time-oriented orthonormal coframe on contractible \(M\). Its torsion-free connection produces a flat pair and hence the developing map used in this argument. This auxiliary coframe need not match the prescribed DS collar and is not yet claimed to define an object of \(\mathcal S_{\rm CS}^{\rm complete}\). Completeness still proves the metric developing map is a global isometry, without assuming a global-AdS diffeomorphism orbit in the metric domain's definition. A collar-compatible coframe for the actual field correspondence is constructed below.

**Local-isometry extension consequence.** If two such complete metrics agree on a nonempty connected collar, the collar identity extends uniquely to a global isometry that is the identity on that collar. One may compose their global developing isometries, choosing the constant target isometry to match the collar value and tangent frame. Equality of value and first derivative propagates the local identity along geodesics. This is the appropriate finite uniqueness statement.

## 4. Set-level classification and full finite proper relations

Let \(p_g,p_{\rm CS}\) read off the two collar stresses.

**Surjectivity.** Section 2 gives a complete metric and a complete flat pair over every \((a,b)\in\mathcal O_2\).

**Metric fibers.** Two metrics with the same stresses have exactly the same metric on a common outer collar. The consequence of Section 3 gives a unique proper global isometry between them. Conversely a diffeomorphism equal to the identity on a collar does not change the stresses. Thus metric proper classes are precisely stress fibers.

**CS fibers.** Suppose two flat pairs have identical collar connections in the fixed atlas. In a regular global trivialization, normalize their pure-gauge maps at a common collar point so that \(G_1=G_2\) throughout that connected collar. Then

\[
h=G_1^{-1}G_2,\qquad
A_2=h^{-1}A_1h+h^{-1}dh,
\tag{4.1}
\]

and \(h=I\) on the collar; do the same independently for the barred connection. The proper arrow is unique: a covariantly constant gauge transformation that is the identity on an open collar is the identity everywhere. The fixed spin transitions ensure this is a genuine global bundle transformation, not an antiperiodic polar matrix falsely used as a disk gauge map. Hence CS proper classes also equal stress fibers.

This flat-connection fiber result alone does not prove that the metrics are properly diffeomorphic; the latter assertion uses completeness in Section 3. Together they show more than agreement of infinitesimal kernels:

> Every proper CS arrow between complete geometric endpoints is realized, on those endpoints, by a genuine global proper diffeomorphism together with a compatible diagonal Lorentz transformation.

Indeed the unique proper metric isometry relates the two reconstructed metrics. Their coframes then differ by an orientation/time-orientation-preserving Lorentz transformation, equal to the identity in the fixed collar frame; its spin lift exists on contractible \(M\) and is fixed by the collar condition. Torsion-freeness fixes the transformed connection. The resulting proper CS arrow equals (4.1) by uniqueness. No claim that an arbitrary CS interpolation stays geometric is needed.

For an arbitrary metric in the declared domain, choose the known filling of Section 2 with the same stresses. Pull its admissible coframe back by the unique proper isometry relating the metrics. This produces a global coframe with the prescribed exact DS collar and full transition data. Any two such **collar-compatible admissible coframes** for the same metric differ by a proper diagonal spin gauge, so give the same CS class. An arbitrary boundary Lorentz frame is not a permissible choice in this assertion. The two mutually inverse maps, with \(e\) chosen in this collar-compatible class, are

\[
\Phi:[g]\longmapsto[(\omega(e)+e/\ell,\omega(e)-e/\ell)],
\qquad
\Phi^{-1}:[A,\bar A]\longmapsto[2\operatorname{tr}(e\otimes e)].
\tag{4.2}
\]

All allowed disconnected proper arrows are included by the stated relation. The theorem does not infer their inclusion from a connected gauge kernel. Extra temporal-end restrictions or different boundary framing would define another relation and require another proof.

## 5. The smooth quotient category is part of the theorem

A complete-field domain on noncompact spacetime must not be called a Fréchet submanifold without proof. Nor does ordinary compact-open convergence control the boundary stress. We use the following explicit category instead.

Give each solution domain the **collar-controlled functional diffeology**: a plot \(U\to\mathcal S\), for finite-dimensional open \(U\), is a jointly smooth family on \(U\times M\) such that, locally in \(U\), a common outer collar has the exact declared FG/DS form, fixed transitions, and jointly smooth periodic stresses. Give its proper-class space the quotient diffeology. The orbit \(\mathcal O_2\) has its usual smooth functional/Fréchet structure, equivalently that of the normalized convex circle-map slice.

The smooth inverse from a stress to a normalized circle map is explicit. Solve \(y''=\mathcal L y\) with \((y_1,y_1')(0)=(1,0)\), \((y_2,y_2')(0)=(0,1/2)\), and set

\[
f_{\mathcal L}(x)=\int_0^x\frac{ds}{y_1(s)^2+y_2(s)^2}.
\]

The Wronskian is \(1/2\), the denominator never vanishes, and degree one gives \(f(x+2\pi)=f(x)+2\pi\). This fixes \(f(0)=0,f'(0)=1,f''(0)=0\). Smooth parameter dependence of the linear ODE proves smooth dependence on the stress; this agrees with the projective quotient's normalized-slice structure.

By definition, \(p_i:\mathcal S_i\to\mathcal O_2\) is smooth. The set-level bijections of Section 4 descend it to \(\bar p_i:\mathcal P_i\to\mathcal O_2\). On every orbit neighborhood the smooth common-collar filling section \(\sigma_i\) of Section 2 gives

\[
\bar p_i^{-1}|_V=q_i\circ\sigma_i,
\tag{5.1}
\]

which is smooth. Thus each \(\bar p_i\) is a diffeological diffeomorphism; the quotient inherits exactly the ordinary smooth structure of the projective orbit. This proves the needed smooth identification without asserting an unproved principal-bundle theorem for all complete metrics.

The common-collar requirement is local in parameter; intersecting two such collars gives another one. It does not require one fixed finite cutoff to work uniformly over the entire unbounded orbit.

**Why the topology condition cannot be omitted.** Take a fixed nonvacuum boundary map and perform Section 2's bulk interpolation farther and farther out. Each metric remains complete with the same nonvacuum stress, but becomes exactly vacuum on every chosen compact subset for all sufficiently late members. Hence it converges compact-open to the vacuum, while its stress does not converge to the vacuum stress. A continuous stress-identifying bijection from that compact-open quotient to the Hausdorff orbit manifold would send a constant nonvacuum class to the distinct vacuum limit, which is impossible.

In fact the quotient topology is **indiscrete**: start at any configuration and change its stresses to any prescribed pair using the relative version of Section 2's flow, with support beyond an arbitrarily large compact set. Every stress fiber is therefore dense. Every nonempty saturated open subset meets every fiber, so is the whole domain. The spin correction can also be supported beyond that compact set, giving the same argument for CS pairs. Boundary-sensitive smoothness is necessary, not decorative.

## 6. Symplectic descent and both chiral signs

For the fixed prescriptions and field-independent transitions, the [boundary comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/05 Standard chiral boundary comparison.md>) proves

\[
\Omega_{\rm CS}-\Omega_g
=\delta\oint(C_g-\alpha)=0,
\qquad
C_g-\alpha=2\gamma *_\Gamma(E_a\delta N^a).
\tag{6.1}
\]

The internal normal is fixed on the collar representatives. The regulated forms have a finite cutoff-independent limit there; the finite-wall action source instead decays as \(R^{-2}\). These two statements must not be confused.

Proper CS variations are null. A vertical flat variation with zero collar data satisfies \(D_A\delta A=0\). Trivialize \(A\); the ordinary closed one-form has a global primitive on contractible \(M\), normalized to zero at a collar point and therefore zero on the entire connected collar. Thus \(\delta A=D_A\varepsilon\), \(\varepsilon=0\) there, and the CS pairing is a zero boundary integral. The barred argument is identical. Field-independent finite proper transformations preserve the current. Normalized parallel transport constructs the proper transformation relating any plot to a filling section jointly smoothly in its parameters; parameter-dependent transformations contribute only these null directions.

Metric descent is also needed, not merely equality on matched sections. For a proper spacetime vector \(\zeta\), the on-shell Noether identity expresses \(\omega_g(\delta g,\mathcal L_\zeta g)\) as the spacetime derivative of its Noether boundary form. Since \(\zeta\) vanishes on an open collar, the boundary integral and the retained local corner contribution vanish. Proper diffeomorphisms preserve the integrated form by covariance, current conservation, and the homologous-cut convention above. Collar-normalized developing isometries depend jointly smoothly on each collar-controlled metric plot: local developing equations/parallel transport depend smoothly on the metric parameters, and their globally bijective local-isometry maps have jointly smooth inverses. Hence the unique proper diffeomorphisms relating the plot to its same-stress filling section vary smoothly. Differentiating them adds only proper, horizontal-zero Noether directions. The admissible coframe lift can be chosen smoothly by pulling back the section's coframe as in Section 4.

Both forms therefore descend plotwise. Their equality (6.1) on matched sections identifies the resulting orbit forms:
\[
\Omega_i=p_i^*\Omega_{\mathcal O_2}.
\tag{6.2}
\]

This is descent of the action-derived forms, not an arbitrary two-form assigned after constructing a set bijection. The projective stabilizer calculation makes the common descended form weakly nondegenerate.

For clarity, the barred sign can be checked directly. In the common spatially increasing coordinate \(v=\phi-t\), the reduced barred matrix is

\[
\bar a_v=\begin{pmatrix}0&-1\\-b&0\end{pmatrix},\qquad
\bar\lambda_\varepsilon=
\begin{pmatrix}\varepsilon'/2&-\varepsilon\\-b\varepsilon+\varepsilon''/2&-\varepsilon'/2\end{pmatrix}.
\]

It obeys \(\delta_\varepsilon b=\varepsilon b'+2\varepsilon'b-\varepsilon'''/2\) and \(\operatorname{tr}(\bar\lambda_\varepsilon\delta\bar a_v)=\varepsilon\delta b\). Its negative CS level gives the opposite KKS sign when both coordinates increase with \(\phi\). Passing to \(x^-=t-\phi=-v\),

\[
f_v(v)=-f_-(-v),\qquad \varepsilon_v(v)=-\varepsilon_-(-v),
\]

reverses the orbit two-form density as well. Therefore, in the independently positively oriented chiral circle coordinates \(x^\pm=t\pm\phi\),

\[
\boxed{\Omega_{\mathcal O_2}=\sum_{\sigma=\pm}
-\frac{k}{8\pi}\int_0^{2\pi}
\left(\frac{\delta f_\sigma'\wedge\delta f_\sigma''}{f_\sigma'^2}
-\delta f_\sigma\wedge\delta f_\sigma'\right)dx^\sigma.}
\tag{6.3}
\]

Both minus-level and coordinate-orientation signs have been accounted for. Its matched vacuum-subtracted generators are

\[
H_\varepsilon^{(\sigma)}=\frac{k}{2\pi}\int_0^{2\pi}
\varepsilon(x^\sigma)\bigl(\mathcal L_\sigma+\tfrac14\bigr)dx^\sigma,
\qquad c_{\rm cl}=6k=\frac{3\ell}{2G}.
\tag{6.4}
\]

The stress maps are equivariant for the centrally extended Virasoro actions, not for Witt with the central coordinate discarded. The two chiral algebras commute. These are the already derived exact KKS forms and moment maps, now attached to independently defined complete bulk quotients. With the unshifted normalization the physical global-AdS energy is \(-1/(8G)\); (6.4) subtracts it. Dimensionless \(t\) has physical clock \(\ell t\).

## 7. Global lifts and stabilizers

In \(x^\pm=t\pm\phi\), let \(D:x\mapsto x+2\pi\). The faithful conformal cylinder group and the vacuum isometry subgroup are

\[
\mathcal B=\frac{\widetilde{\operatorname{Diff}}^+(S^1)^2}
{\langle(D,D^{-1})\rangle},\qquad
\mathcal I=\frac{\widetilde{\operatorname{PSL}}(2,\mathbb R)^2}
{\langle(D,D^{-1})\rangle}.
\tag{7.1}
\]

The central quotient removes the spatial deck redundancy, not global time translation: \((D,D)\) acts as \(t\mapsto t+2\pi\) and is not the identity on the universal cover. Equal stresses differ by projective postcomposition, whose lifted pair extends to an actual global AdS isometry. After quotienting this stabilizer, the orbit is the product of ordinary circle-map projective quotients. Before that quotient, replacing all lifts by PSL factors loses real global-time transformations.

For the pullback parameter convention the quotient is naturally \(\mathcal I\backslash\mathcal B\); inversion gives the common \(\operatorname{Diff}/\operatorname{PSL}\) notation. Stabilizer redundancy of the reference vacuum is not a declaration that all asymptotic PSL transformations are proper gauge on every excited metric.

## 8. A finite-gauge counterexample outside the complete/GH domain

Choose smooth \(\chi(r^2)\in[0,1]\), equal to one only at the axis, strictly less than one for \(r>0\), and zero for \(r\geq R_0\). Put

\[
J_s(t,r,\phi)=\left(t-s\chi(r^2)\log(1+e^t),r,\phi\right),
\qquad 0\leq s\leq1.
\tag{8.1}
\]

Its Jacobian is strictly positive at every finite point, including \(s=1\):

\[
\partial_tT=\frac{1+(1-s\chi)e^t}{1+e^t}>0.
\]

For \(s<1\), \(J_s\) is a global diffeomorphism. At \(s=1\) it is a diffeomorphism onto AdS with the future axis ray \(\{r=0,T\geq0\}\) removed. The metric \(g_1=J_1^*g_0\) is smooth, nondegenerate, Einstein, and exactly vacuum on the full fixed outer collar. Nevertheless its central future geodesic has only

\[
\Delta\tau=\ell\log(1+e^{-t_0})<\infty
\]

proper time left from \(t=t_0\), so no onto diffeomorphism can map complete AdS to it.

In a globally smooth seed SL frame, let \(A_0=G_0^{-1}dG_0\), and set

\[
h_s=G_0^{-1}(G_0\circ J_s),\qquad
\bar h_s=\bar G_0^{-1}(\bar G_0\circ J_s).
\tag{8.2}
\]

These are smooth genuine CS gauge maps, exactly the identity outside the radial support of \(\chi\). They give \(A_s=J_s^*A_0\), \(\bar A_s=J_s^*\bar A_0\), and \(e_s=J_s^*e_0\), nondegenerate through the endpoint. Thus nondegeneracy of an entire CS gauge path is not sufficient for a finite complete-diffeomorphism dictionary.

The endpoint is stably causal but **not GH**, even with the timelike conformal boundary: a fixed causal diamond contains a sequence approaching the excised interior event with no limit in the spacetime. It is non-maximal and extends into complete AdS. Hence this is not a counterexample inside an already GH-restricted theory. The gauge maps have spatially compact support, not compact support in all spacetime, and no temporal-end condition is imposed. The path is smooth in compact-open field topology but loses uniform control at temporal infinity. The complete theorem explicitly excludes its endpoint.

## 9. Verification and remaining questions

The [global-completion algebra suite](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/global_completion_checks.wl>) and its [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/global_completion_checks.results.json>) have 14 exact passed checks, with no messages, covering the developing-map pullback, target curvature normalization, barred DS sign, circle reflection, and exact properties of (8.1). These algebraic checks do not prove the covering or quotient theorems; their proofs are analytic above.

The extension and finite-gauge counterexample were independently investigated in the [global-extension review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-global-AdS3-extension-20261030-1c676609.md>). A separate [complete-sector review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent complete-sector theorem review 20261030.md>) independently derives complete developing maps, full proper fibers, the exact FG flow, full-transition qualifications, and the compact-open topology obstruction. The collar-controlled diffeology route was subsequently supplied for critical assessment, not presented as a blind derivation.

Its [standalone SymPy suite](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-exact-FG-20261030-ae1c8ff44442.py>) and [actual successful output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-exact-FG-20261030-ae1c8ff44442.results.json>) verify both flatness checks, all nine FG component residuals, and the Hill equations and Wronskian. The parent read the complete proof, source, and untruncated result; these checks were exported from the original successful run, not rerun for this synthesis. The separately labeled [supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent complete-sector theorem review 20261030.md#L548-L560>) found the core argument sound and requested the admissible-coframe distinction, finite spin-path construction, explicit metric descent, and immediate barred-coordinate conversion now included above. It did not independently recertify the separately cited action normalization/KKS calculation.

**Verified:** the analytic global arguments and the stated exact local checks, with the audit's proof-interface clarifications incorporated. **Assumptions:** precisely the complete domains, full compatible transitions, proper relations, and smooth category above. **Not verified:** any broader-domain, global quantum-phase, or quantum-measure equivalence.

The theorem settles a definite complete geometric benchmark. It leaves open whether a differently defined **maximal GH** vacuum sector has exactly the same domain, whether broader CS reductions add nongeometric or incomplete configurations, and how cap/overlap action phases, equivariant quantization, measure, ghosts, and regulators match. Nothing here establishes quantum equivalence or determines a quantum shift of \(c(G_{\rm physical})\).
