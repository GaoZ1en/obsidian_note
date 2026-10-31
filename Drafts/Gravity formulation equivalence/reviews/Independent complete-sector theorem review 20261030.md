# Independent review: complete AdS3 sector, finite equivalence, and quotient smoothness

## Result and provenance

**The set-level identification is true under the stated complete, nondegenerate, simply connected hypotheses and compatible full polar/spin transition data. The smooth identification is true in an explicitly collar-controlled smooth category, but is false for the ordinary compact-open C-infinity quotient topology when collar size is allowed to vary.** In that latter topology, every stress fiber is dense and the reduced topology is indiscrete.

No definition of the bulk domain as a diffeomorphism orbit is used. Completeness proves that conclusion. No interpolation through admissible gauge-transformed fields, infinitesimal-gauge argument, or charge-algebra argument is used to establish the finite set equivalence.

Sections 1–10 and Appendix A were completed and saved as a fresh independent investigation before any parent candidate or new project note was read. The global pure-gauge argument, completeness argument, framing refinement, and compact-open counterexample were obtained independently. The parent subsequently supplied the **collar-controlled functional-diffeology route** for critical assessment; Section 7 validates that route. Section 6 supplies an independently derived exact FG-flow construction that establishes the required locally collar-smooth filling sections rather than merely assuming their existence. An exact runnable symbolic check and its actual output are included in Appendix A. After the independent report was saved, the parent explicitly requested an audit of its new synthesis; that later supplied-text audit is separately labeled at the end and is not claimed as blind independent derivation.

For the optional CPS conclusion I read the established [CPS conventions](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L27>): the integrated potential includes its boundary/corner term and the presymplectic form is its field-space exterior derivative. No action normalization or boundary term is inferred from a charge algebra.

## 1. Objects and conventions

Let

\[
M=\mathbb R\times\operatorname{int}(D^2),\qquad \ell>0,
\]

with fixed orientation, time orientation, spin structure, collar coordinates, and **full field-independent transition functions** between the polar/DS collar frames and regular interior frames. The prescribed transition data must be compatible with a smooth filling; the existence allowed in the question implies this compatibility. A sign of a transition or a conjugacy class of holonomy alone is not a replacement for the full data.

Take the spin group to be \(G=SL(2,\mathbb R)\), with a fixed common diagonal principal bundle. Since \(M\) is contractible, this bundle is globally trivializable, although its prescribed collar frame need not be a single-valued regular trivialization. The same arguments work with the adjoint group or a connected covering group once the corresponding transition data are fixed.

Use

\[
J_2=\frac12\begin{pmatrix}1&0\\0&-1\end{pmatrix},\qquad
\omega=\frac{A+\bar A}{2},\qquad e=\frac\ell2(A-\bar A),\qquad
 g=2\operatorname{tr}(e\otimes e).
\]

Here \(\operatorname{tr}\) is the fundamental matrix trace, and the metric has signature \((-++)\). Let \(C_R\) denote an outer collar \(r>R\). On some \(C_R\), require exactly

\[
 A=J_2\frac{dr}{r}+\begin{pmatrix}0&L_+(u)/r\\r&0\end{pmatrix}du,
\quad
 \bar A=-J_2\frac{dr}{r}+\begin{pmatrix}0&-r\\-L_-(v)/r&0\end{pmatrix}dv,
\]

where \(u=t+\phi\), \(v=\phi-t\), and \(\phi\sim\phi+2\pi\). Thus

\[
\boxed{\quad
\ell^{-2}g=\frac{dr^2}{r^2}+a(u)du^2+b(v)dv^2+
\left(r^2+\frac{a(u)b(v)}{r^2}\right)du\,dv,
\quad a=L_+,\ b=L_-.
\quad}                                                   \tag{1}
\]

The coefficient of \(du\,dv\) in this line element is twice \(g_{uv}/\ell^2\).

Define the degree-one projective vacuum orbit as the following set of **functions**, not as a set of bulk metrics:

\[
\mathcal O_{\mathrm{vac}}
 =\left\{ L_f=-\frac{f'^2}{4}-\frac12\{f,x\}:
 f'>0,\quad f(x+2\pi)=f(x)+2\pi\right\},
\qquad
\mathcal B=\mathcal O_{\mathrm{vac}}\times\mathcal O_{\mathrm{vac}}.       \tag{2}
\]

For this exact formula, \(L_{f_1}=L_{f_2}\) means \(f_2=m\circ f_1\), where \(m\) is a projective circle transformation in \(PSL(2,\mathbb R)\). Thus the direct \(f\)-coordinate quotient is

\[
PSL(2,\mathbb R)\backslash\operatorname{Diff}^+(S^1).
\]

Inversion identifies it with the frequently used right quotient \(\operatorname{Diff}^+(S^1)/PSL(2,\mathbb R)\); that is a convention change, not a different orbit.

Let \(\mathscr S_{\mathrm{CS}}\) consist of the globally smooth real flat pairs satisfying these collar conditions, with nondegenerate \(e\) and **complete affine geodesics of every causal type**. Let \(\mathscr S_{\mathrm{met}}\) consist of the corresponding oriented/time-oriented complete Einstein metrics with \(\operatorname{Ric}=-2\ell^{-2}g\) and exact collar (1). Coframes, when retained in the metric description, are identified by their compatible diagonal spin-frame transformations.

Proper CS arrows are all smooth independent gauge transformations of the two connections that equal the identity on some outer collar and whose two endpoints belong to \(\mathscr S_{\mathrm{CS}}\). This is a restricted gauge groupoid, not an assertion that the entire gauge group acts inside the admissible domain. Proper metric arrows are all global diffeomorphisms equal to the identity on some outer collar, with the specified orientation/time/spin compatibility. No connected-component restriction is imposed on those diffeomorphisms.

Write \(Q_{\mathrm{CS}}\) and \(Q_{\mathrm{met}}\) for these reduced sets.

## 2. Precise sufficient theorem

Assume the data in Section 1 and the existence of a compatible smooth complete filling for every pair in \(\mathcal B\), as allowed in the question. In fact, the construction in Section 6 can produce all the fillings from one compatible complete vacuum filling.

Then:

1. **Set classification.** Boundary stress induces canonical bijections
   \[
   Q_{\mathrm{CS}}\ \longrightarrow\ \mathcal B
   \ \longleftarrow\ Q_{\mathrm{met}}.
   \]
   The map from a pair to its metric identifies these bijections.

2. **Finite equivalence.** For two admissible pairs, proper CS equivalence is equivalent to equality of the stress pair, and also equivalent to proper diffeomorphism plus compatible proper diagonal coframe equivalence. This conclusion concerns endpoint fields and does not require an admissible intermediate gauge path.

3. **Smooth classification.** Give both field domains the collar-controlled functional diffeology specified in Section 7 and give their reduced sets the quotient diffeology. Then the bijections above are diffeomorphisms with the usual functional diffeology of the smooth Frechet manifold \(\mathcal B\).

4. **CPS consequence.** If the stipulated action-derived CPS forms are defined as smooth forms on these domains, their usual proper covariance and horizontality make them descend. Their assumed equality on matched normal-adapted sections then implies equality of the reduced forms under these diffeomorphisms. This does not determine an action normalization or a boundary/corner functional that was not supplied.

5. **Necessary topology qualification.** Replace collar-controlled diffeology by ordinary compact-open \(C^\infty\) topology on the variable-collar field domains, and statement 3 fails: both reduced topologies are indiscrete, provided \(\mathcal B\) contains more than one point.

No assertion is made that the complete-field locus is an open Frechet submanifold, that its restricted gauge groupoid is a principal bundle, or that the proper diffeomorphism group is connected. None is needed.

## 3. Global flat trivializations settle the finite CS relation

### 3.1 Relative flat-connection lemma

Let \(A_0,A_1\) be smooth flat connections on the fixed bundle over \(M\), and suppose that they agree on a connected outer collar \(C\). In a regular global trivialization, there are smooth matrices

\[
A_i=G_i^{-1}dG_i.
\]

They are obtained by parallel transport; simple connectedness removes path dependence. Fix \(x_*\in C\) and normalize \(G_i(x_*)=1\). Since the connections agree on the connected collar, their normalized fundamental solutions agree throughout \(C\). Hence

\[
h=G_0^{-1}G_1=1\quad\hbox{on }C,
\qquad
 A_1=h^{-1}A_0h+h^{-1}dh.                                  \tag{3}
\]

This proper gauge transformation is unique. Indeed a stabilizer of a flat connection is a parallel adjoint-group section, so its value at one point determines it. A stabilizer equal to the identity on a collar is the identity everywhere.

Apply this independently to \(A\) and \(\bar A\). Two flat pairs with the same stresses have exactly the same prescribed DS pair on the intersection of their collars, because the transition functions are fixed. Equation (3) identifies them by a proper gauge pair. Conversely a proper gauge pair cannot change the stresses.

**Completeness and nondegeneracy are not used in this lemma.** They enter when one asks whether its finite gauge relation has the metric interpretation.

### 3.2 Smooth dependence on parameters

For a jointly smooth finite-dimensional family of flat connections sharing a common collar, choose \(x_*\) in that collar. A fixed smooth contraction/path family on \(M\simeq\mathbb R^3\) and ordinary parameter-dependent parallel transport construct \(G(p,x)\) jointly smoothly. Flatness makes the result independent of the path choice. Thus the normalized proper gauges in (3) depend jointly smoothly on any such family.

This also disposes of a possible variable-collar pitfall: one uses a common collar only locally in the parameter space; two locally common collars have another common outer collar as their intersection.

## 4. Completeness turns the developing map into a global isometry

### 4.1 The developing map is explicit

For a flat pair choose global primitives

\[
A=G^{-1}dG,\qquad \bar A=B^{-1}dB,
\qquad F=GB^{-1}.
\]

Then

\[
 F^{-1}dF=B(A-\bar A)B^{-1}.
\]

Equip \(SL(2,\mathbb R)\) with its bi-invariant Lorentz metric

\[
h=\frac{\ell^2}{2}\operatorname{tr}\bigl((F^{-1}dF)\otimes(F^{-1}dF)\bigr).
\]

It follows directly that \(F^*h=g\). Nondegeneracy of \(e\) says precisely that \(F\) is a local diffeomorphism. Since \(M\) is simply connected, lift it to

\[
\operatorname{dev}:M\longrightarrow X:=\widetilde{SL(2,\mathbb R)}.
\]

The lifted bi-invariant metric has sectional curvature \(-\ell^{-2}\). For example its curvature on left-invariant fields is \(R(X,Y)Z=-\tfrac14[[X,Y],Z]\), with the trace normalization above. Its geodesics are translates of one-parameter subgroups, so it is geodesically complete. Thus \(X\) is the simply connected AdS3 model, with the specified curvature radius.

### 4.2 Completeness lemma, with the Lorentzian issue made explicit

**Lemma.** A local isometry \(d:N\to X\) from a connected geodesically complete pseudo-Riemannian manifold onto a connected target is a covering map. If both manifolds are simply connected, it is a global isometry.

**Proof.** Any finite target geodesic segment can be lifted from a chosen initial point and tangent: completeness of \(N\) supplies the entire source geodesic, and local-isometry uniqueness identifies its image with the prescribed target segment. Every target point can be reached by finitely many geodesic segments, because a connected smooth pseudo-Riemannian manifold is connected by broken normal geodesics. Consequently \(d\) is surjective.

Choose a star-shaped normal neighborhood \(V=\exp_x(W)\) of a target point \(x\). For each \(n\in d^{-1}(x)\), define

\[
s_n(\exp_x v)=\exp_n\bigl((dd_n)^{-1}v\bigr),\qquad v\in W.
\]

All these exponentials exist by completeness, and \(d\circ s_n=\operatorname{id}_V\). Each \(s_n\) is injective and a local diffeomorphism. Every point over \(V\) lies in one of these images: lift the reverse radial geodesic from its image to \(x\). Two such images cannot intersect, by uniqueness of that lifted reverse geodesic. Hence \(V\) is evenly covered. A covering between connected simply connected manifolds has one sheet. QED.

This proof does **not** invoke the false Lorentzian analogue of Hopf--Rinow, nor assume that the target exponential map is globally surjective.

Apply the lemma to \(\operatorname{dev}\). Every admissible metric from a pair is globally isometric to \(X\).

Conversely a three-dimensional Einstein metric with \(\operatorname{Ric}=-2\ell^{-2}g\) has constant curvature \(-\ell^{-2}\). A global oriented/time-oriented coframe exists on contractible \(M\); its torsion-free spin connection produces flat \(\omega\pm e/\ell\). The same construction therefore gives its developing map, and completeness again makes it a global isometry to \(X\). This does not assume its prescribed collar coframe already extends; a collar-matched extension will follow from comparison with a known filling.

### 4.3 Equality on a collar gives a proper global isometry

Let \(g_0,g_1\) be two complete metrics agreeing on a connected collar. Their developing maps are global isometries to \(X\). Normalize them to have the same value and derivative at one collar point. This normalization is possible because the oriented/time-oriented isometry group of \(X\) is transitive on oriented/time-oriented orthonormal frames: left translations give the value, and the adjoint action realizes \(SO_0(2,1)\) on the tangent frame.

On the collar the normalized maps are local isometries of the same metric with identical one-jets. A local isometry is determined on a connected domain by its value and derivative at one point, using normal geodesics and continuation by overlapping normal neighborhoods. They therefore agree on the whole collar.

Their composition now gives a global diffeomorphism \(\Phi\) such that

\[
g_1=\Phi^*g_0,\qquad \Phi=\operatorname{id}\quad\hbox{on the collar}.   \tag{4}
\]

It is unique: an isometry of a connected manifold equal to the identity on an open set is the identity everywhere.

In particular every complete metric with stresses \((L_+,L_-)\) is properly equivalent to the assumed filling for those stresses. Pulling back that filling's coframe by (4) supplies a globally smooth coframe with exactly the prescribed full collar transition data. No separate, unsupported relative-framing extension theorem is required.

### 4.4 Finite coframe comparison

For two admissible pairs with the same stresses, use (4). The coframes \(e_1\) and \(\Phi^*e_0\) give the same metric and agree on the collar. Their relative frame map lies in \(SO_0(2,1)\): the fixed orientation/time orientation and collar agreement exclude the other Lorentz components. On simply connected \(M\) it has a spin lift, uniquely selected by demanding that it be \(1\) on the connected collar.

The torsion-free spin connection is uniquely determined by a nondegenerate coframe. Therefore the same diagonal spin transformation relates both connections, not only their difference. This proves finite endpoint equivalence between independent proper CS gauge transformations and proper diffeomorphisms plus proper coframe transformations.

This is not the stronger, false statement that an arbitrary CS gauge transformation acts as a diffeomorphism on every off-shell or degenerate field configuration.

## 5. Global groups, spin, and framing

### 5.1 No hidden proper-gauge components

For \(G=SL(2,\mathbb R)\), a smooth map \(h:M\to G\) equal to \(1\) on a connected collar has a unique lift \(\widetilde h:M\to\widetilde G\) equal to \(1\) there. The universal cover is diffeomorphic to \(\mathbb R^3\), for example by lifted Iwasawa coordinates. Contract it smoothly to its identity, keeping that point fixed, and project the contraction. This contracts \(h\) through transformations still equal to \(1\) on the same collar.

Thus the proper gauge group has no overlooked disconnected sectors in this setting. The same conclusion holds for \(PSL(2,\mathbb R)\) and connected covers. If one enlarges the structure group by discrete outer components, a transformation equal to the identity on a nonempty open subset of connected \(M\) still lies in the identity component everywhere.

The proof of the theorem did not need this contraction: it already allowed the full finite relation. Nor does the theorem require a classification of components of the proper diffeomorphism group. Any component containing an endpoint comparison is included in the stated relation. Identity on the collar selects its relative spin lift.

### 5.2 The polar sign is necessary but not the whole transition datum

For \(L=L_f\), two real Hill solutions are

\[
y_1=\frac{\cos(f/2)}{\sqrt{f'}},\qquad
y_2=\frac{\sin(f/2)}{\sqrt{f'}},\qquad
y_i''=Ly_i,\qquad W(y_1,y_2)=\frac12.
\]

For degree one they are antiperiodic, so the DS fundamental matrix has monodromy \(-I\). A globally smooth flat spin connection around the contractible angular circle must instead have trivial **actual** bundle holonomy. The bounding polar spin transition accounts for the extra \(-I\). Treating the displayed periodic DS matrices as a globally single-valued regular spin trivialization would incorrectly give an obstruction even for the vacuum.

However, specifying only the endpoint sign \(-I\) is insufficient. Transition paths with that endpoint can differ by an integer winding in \(SL(2,\mathbb R)\). After conversion to a fixed regular trivialization, a flat pure-gauge loop on the collar must be null-homotopic to extend over the disk. A nonzero winding obstructs that extension even if its endpoint holonomy is \(I\).

Hence the sufficient hypothesis is compatible **full transition functions**, not just a central-holonomy test. Existence of one smooth vacuum filling in the prescribed transition data fixes the compatible framing class. Degree-one boundary diffeomorphisms are connected, so the class cannot jump as \(f\) varies. For contrast, \(L=-n^2/4\) with odd \(n>1\) also has DS monodromy \(-I\), but has a different winding and the usual conical-excess obstruction in the degree-one disk framing.

No additional projective-frame, lift, or central label survives the proper quotient. Global developing-map constants and their central lifts are normalization freedoms, not extra bulk fields. A proper parallel gauge stabilizer is trivial, since its collar value is fixed to \(1\).

## 6. The projective orbit and an exact smooth filling construction

### 6.1 A global smooth normalized orbit coordinate

Locally put \(z_f=\tan(f/2)\). The Schwarzian chain rule gives

\[
L_f=-\frac12\{z_f,x\}.
\]

Equality of two Schwarzians implies that their projective maps differ by a constant real fractional-linear transformation. The orientation and degree-one conditions select \(PSL(2,\mathbb R)\). This proves the equivalence relation stated after (2).

A useful normalized representative is characterized by

\[
f(0)=0,\qquad f'(0)=1,\qquad f''(0)=0.                      \tag{5}
\]

Given \(L\in\mathcal O_{\mathrm{vac}}\), solve

\[
y_i''=Ly_i,
\quad (y_1(0),y_1'(0))=(1,0),
\quad (y_2(0),y_2'(0))=(0,1/2),
\]

and define

\[
f_L(x)=\int_0^x\frac{ds}{y_1(s)^2+y_2(s)^2}.              \tag{6}
\]

The Wronskian is \(1/2\), so the denominator never vanishes; the projective angle has derivative exactly the integrand. Degree one gives \(f_L(x+2\pi)=f_L(x)+2\pi\), and (5) follows from the initial conditions. It is the unique normalized representative. Parameter-dependent linear ODE theory on the compact circle makes (6) a smooth inverse to the normalized orbit map.

The normalized representatives are an open subset of the affine Frechet space of periodic functions \(f(x)-x\) obeying the three linear jet conditions (5). This explicitly supplies the ordinary smooth Frechet structure of \(\mathcal O_{\mathrm{vac}}\), rather than presuming that an unspecified infinite-dimensional quotient is regular.

### 6.2 Exact FG generator

For the collar metric (1), set \(D=r^4-ab\). For smooth periodic functions \(p(u),q(v)\), define

\[
\begin{aligned}
\xi^r&=-\frac r2(p'+q'),\\
\xi^u&=p+\frac{bp''-r^2q''}{2D},\\
\xi^v&=q+\frac{aq''-r^2p''}{2D}.
\end{aligned}                                                   \tag{7}
\]

A direct calculation gives

\[
\mathcal L_\xi g=\delta g,
\quad
\delta a=pa'+2p'a-\tfrac12p''',
\quad
\delta b=qb'+2q'b-\tfrac12q'''.                              \tag{8}
\]

All radial FG components remain fixed; the mixed boundary component varies by \((b\delta a+a\delta b)/(2r^2)\) as a metric tensor component. Appendix A verifies every component exactly.

For a smooth path of degree-one boundary maps \(f_{+,s},f_{-,s}\), put

\[
p_s=\frac{\partial_s f_{+,s}}{f_{+,s}'},\qquad
q_s=\frac{\partial_s f_{-,s}}{f_{-,s}'},\qquad
 a_s=L_{f_{+,s}},\quad b_s=L_{f_{-,s}}.
\]

The Schwarzian composition law, or direct differentiation, gives precisely (8) with \(\delta=\partial_s\). For local sections one may use linear interpolation between nearby degree-one lifts; positive derivatives remain positive.

### 6.3 Cut off the vector, not the metric

Start from any complete filling \(g_0\) with stresses \((a_0,b_0)\). Choose \(R\) sufficiently large that its prescribed collar is valid and \(D_s\neq0\) for all parameters and \(s\in[0,1]\). Such an \(R\) exists uniformly in a neighborhood of each boundary map: the required coefficient bounds involve only finitely many derivatives on a compact circle.

Extend \(\chi(r)\xi_s\) to all of \(M\) by zero, where \(\chi=0\) below a radius larger than the initial collar threshold and \(\chi=1\) above a still larger fixed radius. Let \(\varphi_s\) be the flow of \(-\chi\xi_s\), starting at the identity.

These are globally defined diffeomorphisms for finite \(s\). On the exterior,

\[
|\xi_s^r|\le Cr,\qquad |\xi_s^t|+|\xi_s^\phi|\le C,
\]

with bounds uniform in \(s\) and locally in the parameters. The coefficients are periodic in \(t\) and \(\phi\). Thus radial growth is bounded in \(\log r\), there is no finite-flow escape through \(r=\infty\) or \(|t|=\infty\), and the field is zero toward the interior. The same estimates hold for the reverse evolution.

Choose a farther collar on which all relevant trajectories remain where \(\chi=1\). There

\[
\frac{d}{ds}\varphi_s^*g(a_s,b_s)
 =\varphi_s^*\bigl(\partial_s g-\mathcal L_{\xi_s}g\bigr)=0.
\]

Writing \(F_s=\varphi_s^{-1}\), define the **global** metric

\[
\widehat g_s=F_s^*g_0.
\]

It is smooth, nondegenerate, and geodesically complete, and equals exactly \(g(a_s,b_s)\) on a common farther collar. No interpolation of metrics or extension of a possibly incomplete local patch is involved.

If the boundary path starts at the identity, the boundary value of \(F_s\) is \((f_{+,s},f_{-,s})\), because it solves \(\partial_s f_s=f_s'p_s\). For a path starting at \(f_{\pm,0}\), the relative boundary map is \(f_{\pm,0}^{-1}\circ f_{\pm,s}\). This distinction prevents a left/right composition error.

The flow depends smoothly on every finite-dimensional smooth parameter family. Since the support cutoff and farther collar were chosen uniformly locally in the parameters, this is already the precise smoothness needed in Section 7. One can also choose the standard smooth mapping-space calculus throughout.

### 6.4 Match the DS coframe without a framing assumption hidden in a logarithm

Pull the initial global coframe and connection back by \(F_s\). On the common farther collar, this coframe and the prescribed DS coframe for \((a_s,b_s)\) describe the same metric. Their relative Lorentz map is in \(SO_0(2,1)\) and starts at the identity. Lift this path to the spin group starting at \(1\), using the fixed transition functions.

Let its Lie-algebra velocity be \(K_s\). Multiply \(K_s\) by another fixed radial cutoff supported in this common collar and solve the pointwise group ODE on all of \(M\), starting at the identity. This gives a globally smooth diagonal spin transformation that equals the required lift on a farther collar and is the identity in the interior. The construction does not require a globally chosen matrix logarithm. Fixed transition functions make multiplication by a scalar cutoff and the Lie-algebra ODE compatible on overlaps.

Apply it to the pulled-back coframe and connection. Torsion-free uniqueness guarantees that both resulting flat connections match the exact prescribed DS pair. The metric remains \(\widehat g_s\), so completeness is unaffected. All operations vary smoothly with the parameters and use locally common collars.

This establishes the needed local filling sections for **both** domains. It also explains why full compatible framing data remain fixed through the construction.

## 7. Collar-controlled quotient smoothness

This section assesses the route supplied by the parent; the section construction above provides its required input.

A plot \(p:U\to\mathscr S\), with \(U\) an open finite-dimensional parameter domain, is admissible when:

* its fields are jointly smooth on \(U\times M\);
* locally in \(U\), all fields use one common outer collar in the exact fixed FG/DS gauge and the same fixed transition functions;
* the periodic stress functions are jointly smooth on \(U\times S^1\).

These conditions are stable under smooth reparametrization and local gluing, so they define a diffeology. They do not assert that the complete-field locus is open in any linear space. Every individual configuration gives a constant plot, regardless of where its collar begins.

Let \(b:\mathscr S\to\mathcal B\) be stress extraction, \(q:\mathscr S\to Q\) the quotient, and \(\bar b:Q\to\mathcal B\) the set bijection already proved. The stress map is smooth by the plot definition (and, on a common collar, by ordinary evaluation of the explicit fields at finite radius). The defining property of quotient diffeology gives smoothness of \(\bar b\), since \(\bar b\circ q=b\).

Near every point of \(\mathcal B\), Section 6 supplies a locally collar-smooth filling section \(\sigma\), with \(b\circ\sigma=\operatorname{id}\). Therefore

\[
\bar b^{-1}|_V=q\circ\sigma
\]

is smooth on each such neighborhood. This proves that \(\bar b\) is a diffeomorphism. The same argument applies to both field domains and identifies their smooth reduced structures.

This proof needs neither a slice theorem for the entire complete-field locus nor a principal-bundle theorem for a globally acting gauge group. In fact the independent CS group does not preserve the complete nondegenerate locus globally, so such a principal-bundle claim would need a different formulation.

If one merely assumes that a filling depends smoothly on \(f\) in interior compact-open topology, without the local common-collar property, that assumption alone is not enough for this argument. The exact cutoff-flow construction above is what resolves that potential interface here.

## 8. Why the unqualified compact-open claim is false

Choose a nonprojective degree-one map, for example

\[
f_+(x)=x+\varepsilon\sin(2x),\qquad f_-(x)=x,
\qquad 0<|\varepsilon|<1/2.
\]

Its stress differs from vacuum; infinitesimally

\[
L_{f_+}=-\tfrac14+3\varepsilon\sin(2x)+O(\varepsilon^2).
\]

Apply the exact construction in Section 6, but put the cutoff transition beyond radius \(n\). This gives complete metrics \(g_n\) such that:

1. \(g_n=g_{\mathrm{vac}}\) on every fixed compact subset for all sufficiently large \(n\);
2. every \(g_n\) has the same fixed nonvacuum stress pair on some farther collar;
3. all \(g_n\) lie in one nonvacuum proper-diffeomorphism class, by Section 4.

Consequently \(g_n\to g_{\mathrm{vac}}\) in ordinary compact-open \(C^\infty\) topology, while their quotient images are a constant class different from the vacuum class. The quotient is not even \(T_1\), and cannot be the ordinary Hausdorff projective orbit manifold.

More strongly, start the same construction from any configuration and aim at any other stress pair. It leaves an arbitrarily large compact set unchanged. Therefore **each stress fiber is dense** in the entire variable-collar domain. Any nonempty saturated open subset meets every fiber and hence is the entire domain. The quotient topology is indiscrete. The coframe-matching spin transformation can also be supported beyond the same compact set, so the same conclusion holds for the CS-pair domain.

Collar-controlled diffeology deliberately excludes precisely this false continuity: a family whose nontrivial boundary data escapes to infinity does not acquire a vacuum limit unless its boundary stress also has the prescribed smooth limit and it has a locally common collar.

## 9. CPS descent: what follows and what is not being assumed

Let \(\alpha=\delta A\) be a variation tangent to a fixed stress fiber. In a collar-controlled plot it vanishes on a common collar, and linearized flatness says \(D_A\alpha=0\). With \(A=G^{-1}dG\),

\[
d(G\alpha G^{-1})=0.
\]

Contractibility gives \(G\alpha G^{-1}=d\beta\). Since the left-hand side vanishes on the connected collar, \(\beta\) is constant there. Subtract that constant and set \(\epsilon=G^{-1}\beta G\). Then

\[
\boxed{\quad\delta A=D_A\epsilon,\qquad \epsilon=0\text{ on the collar}.\quad} \tag{9}
\]

The same holds independently for \(\bar A\). The normalized primitive is unique. Thus the actual vertical tangent directions, not merely a guessed gauge algebra, are proper infinitesimal gauges.

For the CS action-derived form, contraction with (9) reduces on the flat locus to a spatial boundary term. It vanishes because \(\epsilon\) is zero on an open collar. Any local boundary/corner contribution retained in the established CPS convention is also unchanged there; it is not discarded by changing conventions. Field-independent proper finite gauges preserve the form. Parameter-dependent proper gauges produce only the horizontal-zero terms (9).

For any plot of pairs, Section 3.2 constructs a jointly smooth normalized proper gauge relating it to a matched filling section at its own stress. Therefore, plotwise,

\[
\Omega_{\mathrm{CS}}=b^*(\sigma^*\Omega_{\mathrm{CS}}).
\]

No interpolation through admissible intermediate connections is needed. The finite gauge covariance is an identity of the action-derived form, and the parameter-dependent terms are horizontal by (9).

The analogous gravitational statement follows from diffeomorphism covariance and the on-shell Noether identity for proper diffeomorphisms, with its boundary/corner term retained. A smooth family of collar-normalized developing maps gives the corresponding smooth family of proper diffeomorphisms: the developing ODE depends smoothly on the metric parameters, and the map \((p,x)\mapsto(p,\operatorname{dev}_p(x))\) is a bijective local diffeomorphism, so its inverse is jointly smooth. Relative coframe lifts are handled as above.

Under the supplied equality of the two action-derived forms on matched normal-adapted sections, their reduced forms therefore agree. Their overall normalization, counterterms, and the existence/finite definition of the integrated action-derived CPS forms are inputs here, not reconstructed from the set theorem. The theorem does not replace those action-level questions by the equality of charges.

## 10. Scope checks and an exact failure without completeness

The strongest global assumptions do real work:

* **Simple connectedness/contractibility:** eliminates flat holonomy sectors, supplies global primitives, and removes relative spin-lift ambiguities. On another topology, stresses alone need not classify either domain.
* **Full geodesic completeness:** upgrades a local developing map to a covering and hence a global isometry. It is not replaced by nondegeneracy, timelike completeness alone, or a chosen Poincare patch.
* **Degree one and compatible full transitions:** exclude winding/conical sectors that central monodromy alone misses.
* **Full finite proper relation:** prevents an unsupported replacement of the stated quotient by an identity-component or admissible-path quotient.
* **Boundary-sensitive smooth structure:** is necessary for the smooth conclusion when collar thresholds vary.

Here is an explicit completeness counterexample. In global vacuum coordinates \((t,z)\in\mathbb R\times\operatorname{int}(D^2)\), choose a smooth radial cutoff \(\chi(z)\), equal to \(1\) near the center and \(0\) on the outer collar, with \(0\le\chi\le1\). Define

\[
F(t,z)=\bigl(t-\chi(z)\sqrt{1+t^2},z\bigr).
\]

Its time derivative is

\[
1-\chi(z)\frac{t}{\sqrt{1+t^2}}>0.
\]

Hence \(F\) is a smooth injective local diffeomorphism, equal to the identity on the outer collar, but it is not onto: at the center its target time range is \((-\infty,0)\). Pull back the global vacuum pair by \(F\). The result is globally smooth, flat, and nondegenerate with exactly the same collar, so Section 3 supplies a proper finite CS gauge relation to the original vacuum pair. Its metric is incomplete: the central timelike geodesic reaches target time \(0\) in finite proper time while its source coordinate tends to \(+\infty\). It cannot be isometric to complete vacuum.

Thus the finite equivalence would actually fail if completeness were omitted. The assumption is not cosmetic, and the proof does not silently replace it by an infinitesimal statement.

## Appendix A. Runnable exact algebra verification and observed output

The following is a self-contained Python program using SymPy. It can be copied verbatim to a Python environment with SymPy, including Sage's Python environment. In an interface that preparses Sage source, execute the whole Python body through `exec(r'''...''')` so that Python integer literals are not silently replaced by Sage scalars. The first exploratory run exposed exactly that scalar-coercion issue; it was diagnosed by the resulting object types and rerun as pure Python. The successful output below is from the corrected run, not from the invalid mixed-scalar calculation.

```python
import sympy as s

r, u, v, ell = s.symbols('r u v ell', nonzero=True, real=True)
a = s.Function('a')(u)
b = s.Function('b')(v)
p = s.Function('p')(u)
q = s.Function('q')(v)
J = s.diag(s.Rational(1, 2), -s.Rational(1, 2))
Z = s.zeros(2)
A = [J/r, s.Matrix([[0, a/r], [r, 0]]), Z]
B = [-J/r, Z, s.Matrix([[0, -r], [-b/r, 0]])]
x = [r, u, v]

def curvature(C, i, j):
    return (C[j].diff(x[i]) - C[i].diff(x[j])
            + C[i]*C[j] - C[j]*C[i]).applyfunc(s.simplify)

print('flat_A', all(curvature(A, i, j) == Z
                    for i in range(3) for j in range(i + 1, 3)))
print('flat_B', all(curvature(B, i, j) == Z
                    for i in range(3) for j in range(i + 1, 3)))

e = [ell*(A[i] - B[i])/2 for i in range(3)]
g = s.Matrix(3, 3,
             lambda i, j: s.simplify(2*s.trace(e[i]*e[j])))
print('g_over_ell2', g/ell**2)

D = r**4 - a*b
xi = s.Matrix([
    -r*(s.diff(p, u) + s.diff(q, v))/2,
    p + (b*s.diff(p, u, 2) - r**2*s.diff(q, v, 2))/(2*D),
    q + (a*s.diff(q, v, 2) - r**2*s.diff(p, u, 2))/(2*D)
])
lie = s.Matrix(3, 3, lambda i, j: sum(
    xi[k]*s.diff(g[i, j], x[k])
    + g[k, j]*s.diff(xi[k], x[i])
    + g[i, k]*s.diff(xi[k], x[j])
    for k in range(3)))
da = p*s.diff(a, u) + 2*a*s.diff(p, u) - s.diff(p, u, 3)/2
db = q*s.diff(b, v) + 2*b*s.diff(q, v) - s.diff(q, v, 3)/2
target = ell**2*s.Matrix([
    [0, 0, 0],
    [0, da, (b*da + a*db)/(2*r**2)],
    [0, (b*da + a*db)/(2*r**2), db]
])
residual = (lie - target).applyfunc(
    lambda z: s.factor(s.together(z)))
print('FG_vector_residual', residual)
print('FG_vector_verified', residual == s.zeros(3))

f = s.Function('f')(u)
y1 = s.cos(f/2)/s.sqrt(s.diff(f, u))
y2 = s.sin(f/2)/s.sqrt(s.diff(f, u))
Sch = (s.diff(f, u, 3)/s.diff(f, u)
       - s.Rational(3, 2)*(s.diff(f, u, 2)/s.diff(f, u))**2)
L = -s.diff(f, u)**2/4 - Sch/2
print('Hill_residuals',
      [s.simplify(s.diff(y, u, 2) - L*y) for y in [y1, y2]])
print('Hill_Wronskian',
      s.simplify(y1*s.diff(y2, u) - s.diff(y1, u)*y2))
```

Actual successful output:

```text
flat_A True
flat_B True
g_over_ell2 Matrix([[r**(-2), 0, 0],
 [0, a(u), (r**4 + a(u)*b(v))/(2*r**2)],
 [0, (r**4 + a(u)*b(v))/(2*r**2), b(v)]])
FG_vector_residual Matrix([[0, 0, 0], [0, 0, 0], [0, 0, 0]])
FG_vector_verified True
Hill_residuals [0, 0]
Hill_Wronskian 1/2
```

The underlying successful kernel record is preserved as the [exact result JSON](</Users/koishi/.dsh/research-results/session-ae1c8ff44442/ce849c951f20-research-result.json>) and its [readable output](</Users/koishi/.dsh/research-results/session-ae1c8ff44442/1a1e46ab13d2-research-result-readable.txt>). These checks verify the flat collar, its trace normalization, all exact FG-flow components, and the Hill normalization. They are finite symbolic checks supporting the analytic argument; the global covering and quotient proofs do not rest on numerical evidence.

## Final assessment

There is no unresolved global-sector obstruction under the complete hypotheses and compatible full transition data. There is also a precise smooth quotient theorem, with the exact uniform-collar flow construction supplying its local sections. What is **not** established or true without qualification is an identification using an unspecified 'natural' topology: ordinary interior compact-open topology gives the wrong, indiscrete reduced topology. Stronger claims about Frechet submanifolds of complete fields, principal gauge bundles, or connectedness of the full relative diffeomorphism group are unnecessary and have not been asserted.

## Later standalone evidence export

After the independent report was saved, the parent explicitly authorized standalone verification files. The successful symbolic calculation was **not rerun**. Its exact Python body, with an explanatory provenance header, is now preserved in the [standalone suite](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-exact-FG-20261030-ae1c8ff44442.py>). The original successful server result and readable output were copied byte-for-byte to the [local exact JSON export](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-exact-FG-20261030-ae1c8ff44442.results.json>) and [local readable export](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-exact-FG-20261030-ae1c8ff44442.results.txt>). Byte comparisons against both originals succeeded.

SHA-256 of the standalone source is `b3c12722305e4e3aad4fe7cba53558e8412f2ccab79b4765fc47adbd5e3095e8`; the exact JSON export is `95be2e0882882d96008f6471de9dfe0633bb9558c8bec6ff1dc1f9b55f2bfafb`; the readable export is `f3a07e34ba8efae467b59da2a57993d34cff6ed74bfe76ec14530ca5025d4673`. The JSON includes the exact executed `exec` wrapper, the original call identity, untruncated stdout, kernel version, and the executed-code hash.

## Supplied-text audit — not blind independent derivation

Only after saving the independent derivation above, I read the supplied [complete-sector synthesis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>) at the parent's explicit request. I did not edit that file. This audit concerns its then-current 322-line version and is not an independent derivation of that supplied text.

**Assessment:** its core complete-sector theorem, finite endpoint relation, completeness covering proof, collar-controlled quotient argument, and exact-FG inverse-flow sign are sound. The following repairs or proof-interface clarifications were reported to the parent:

1. **Admissible versus arbitrary coframes.** At its then-current lines 140 and 168–174, distinguish an arbitrary global oriented/time-oriented coframe used to construct the metric developing map from a collar-matched coframe used in the map to the CS domain. Pulling back the known same-stress filling's coframe by the unique proper isometry provides the latter. Only two collar-compatible coframes are necessarily related by a proper diagonal gauge. An arbitrary boundary Lorentz frame can put the pair outside the declared exact DS domain.
2. **Finite Lorentz adjustment.** At its then-current line 112, an arbitrary identity-to-\(f\) path need not require only a near-identity Lorentz map. Lift the relative Lorentz path starting at \(1\), cut off its Lie-algebra velocity, and integrate pointwise as in Section 6.4. This removes a possible hidden logarithm/near-identity hypothesis and fixes the full transition class.
3. **Metric CPS descent.** At its then-current lines 220–227, equality on matched sections alone is not a proof of descent of the metric form on arbitrary plots. Either the cited action comparison must already hold on every coframe-lifted plot, or explicitly use proper metric covariance/horizontality and smooth parameter dependence of collar-normalized developing isometries. The short Noether boundary-term argument and the smooth developing-map inverse supply the latter route, as in Section 9.
4. **Barred coordinate conversion.** At its then-current lines 72–81 and 110, put the map \(f_v(v)=-f_-(-v)\) at the point where the construction switches from \(v\) to \(x^-\), rather than introducing it only later. This prevents the original \(b(v)\) label from being silently reused as an \(x^-\) map. The inverse-flow boundary equation is correct for the identity-start path used there.
5. **Minor topological wording.** At its then-current line 204, the obstructed continuous map is the stress-identifying map/bijection to the Hausdorff orbit; arbitrary continuous constant maps do of course exist. The stronger indiscrete-quotient statement is proved in Section 8 above.

The full compatible transition hypothesis stated in that synthesis is sufficient. Adding the warning that a \(-I\) endpoint sign alone misses integer winding would make its role clearer. No additional defect in the requested audit scope was found. This audit did not independently rederive its separately cited action normalization, KKS formula, or counterterm calculation.
