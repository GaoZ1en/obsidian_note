# Real nonchiral Plebanski: branchwise equivalence and its obstructions

## Result and scope

At zero cosmological constant, the real nondegenerate simplicity locus has four **local algebraic branch labels**, not a single Einstein branch:

\[
B=s\,\Sigma(e)\quad\hbox{or}\quad B=s\,\star\Sigma(e),
\qquad \Sigma^{IJ}=e^I\wedge e^J,\qquad s=\pm1.
\tag{0.1}
\]

The dual branches give Ricci-flat Einstein–Cartan gravity; the undualized branches admit **every torsion-free Lorentz metric**. With the specified action-derived wall/corner data, their regional forms are respectively

\[
\boxed{\iota_{G,s}^{*}\Omega_{\rm Pl}=s\chi\,p^{*}\Omega_g,
\qquad \iota_{T,s}^{*}\Omega_{\rm Pl}=0,}
\qquad \chi=\epsilon(e)/\epsilon_g\in\{+1,-1\}.
\tag{0.2}
\]

Here \(p(e)=\eta_{IJ}e^I\otimes e^J\), and \(\iota\) includes the reconstructed torsion-free connection and the unique multiplier. The metric volume \(\epsilon_g\) uses the fixed spacetime orientation; \(\chi\) is constant on each connected coframe domain. The first equality becomes the ordinary positive-normalization Einstein correspondence only when \(s\chi=+1\). For \(s\chi=-1\), the natural metric dictionary reverses the symplectic form wherever it is nonzero. This does not rule out every conceivable different map or time-reversal convention.

The classification below is pointwise and locally smooth. It has **eight connected components** if both coframe orientations are admitted: each of the four labels in (0.1) has two orientations. Global reconstruction additionally has a sign-lift obstruction, exhibited explicitly in section 5. The regional theorem restricts to an admissible globally reconstructed, oriented/time-oriented sector; it does not silently discard the other Plebanski fields.

**Proof level:** the stated local reconstruction, full equations, regional identities, counterexamples, and finite/diffeological correspondence are proved under their explicit assumptions. Three fresh reviews and their later scoped synthesis audits are collected. The two independent suites and the parent diagnostic have **28 + 28 + 13 exact passes**; their implementations and actual outputs were inspected. Regular weakly symplectic reduction remains conditional on the common metric quotient and its descent. Neither the canonical diagnostic nor the pointwise checks are a full nonlinear Dirac or quantum theorem.

## 1. Action, conventions, and full Euler–Lagrange equations

Work in four dimensions with

\[
\eta_{IJ}=\operatorname{diag}(-,+,+,+),\quad
\epsilon_{0123}=1,\quad\epsilon^{0123}=-1,\quad
\kappa=8\pi G_4>0,
\]

and full sums over antisymmetric index pairs. The internal and spacetime duals are different operations:

\[
(\star X)^{IJ}=\tfrac12\epsilon^{IJ}{}_{KL}X^{KL},\qquad
\star^2=-1,
\]

whereas \(*_g\) acts on spacetime forms and uses the fixed oriented metric volume. The independent connection is metric-compatible Lorentz, not a general affine connection:

\[
F^{IJ}=d\omega^{IJ}+\omega^I{}_K\wedge\omega^{KJ},\qquad
T^I=D_\omega e^I.
\]

The specified theory is

\[
L_{\rm Pl}=\frac1{2\kappa}
\left[B_{IJ}\wedge F^{IJ}
-\frac12\phi_{IJKL}B^{IJ}\wedge B^{KL}\right],
\tag{1.1}
\]

with real \(B\), and \(\phi_{IJKL}=\phi_{[IJ][KL]}=\phi_{KLIJ}\) subject to \(\epsilon^{IJKL}\phi_{IJKL}=0\). There is no cosmological term in this comparison. Define the four-form

\[
\nu_B=\frac1{24}\epsilon_{IJKL}B^{IJ}\wedge B^{KL}.
\]

Varying the actual multiplier space, the connection, and \(B\), respectively, gives

\[
\boxed{B^{IJ}\wedge B^{KL}=-\nu_B\epsilon^{IJKL},\qquad
D_\omega B^{IJ}=0,\qquad F_{IJ}=\phi_{IJKL}B^{KL}.}
\tag{1.2}
\]

Indeed, the annihilator of the trace-free symmetric-pair multiplier space is the epsilon line. Contracting that line with \(\epsilon_{IJKL}\), whose full contraction with \(\epsilon^{IJKL}\) is \(-24\), fixes the minus sign. The natural potential is

\[
\theta_{\rm Pl}=\frac1{2\kappa}B_{IJ}\wedge\delta\omega^{IJ}.
\tag{1.3}
\]

The CPS conventions are those of the [authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L27>): \(d\delta=\delta d\), \((\theta+\delta l)|_\Gamma=dC\),
\(\Theta_\Sigma=\int_\Sigma\theta-\oint_{\partial\Sigma}C\), \(\Omega=\delta\Theta\), and \(\iota_{X_H}\Omega=-\delta H\).

## 2. Nondegenerate simplicity: exhaustive local reconstruction

### 2.1 Invertibility uses the simplicity equation

Choose any nonzero reference volume at a point and the ordered pair basis \((01,02,03,12,13,23)\). The wedge pairing on two-forms is the nondegenerate split matrix

\[
J_{(IJ)(KL)}=\epsilon_{IJKL},\qquad \operatorname{signature}J=(3,3).
\]

In components the simplicity equation is a conformal-isometry equation
\(\mathsf B J\mathsf B^T=\rho J\), where \(\rho\ne0\) is the coefficient of \(\nu_B\) in that reference volume. Thus \(\mathsf B\) is invertible: the six two-forms \(B^{IJ}\), \(I<J\), are a basis.

It would be incorrect to infer this from \(\nu_B\ne0\) alone. For example, \(B^{01}=dx^0\wedge dx^1\), \(B^{23}=dx^2\wedge dx^3\), and all other independent pairs zero have rank two and \(\nu_B=\mathrm{vol}/3\), but fail simplicity.

### 2.2 The two rulings and a constructive lift

For a real four-dimensional vector space \(W\), a two-form is decomposable exactly when its square vanishes. Maximal three-dimensional subspaces on which every pair has zero wedge product are of two types:

\[
A_\ell=\ell\wedge W,\quad \dim\ell=1;
\qquad B_H=\Lambda^2H,\quad\dim H=3.
\tag{2.1}
\]

To see exhaustiveness, take two independent decomposable forms in such a subspace. Their planes intersect in a line, so write them as \(a\wedge b\), \(a\wedge c\), and complete to a basis \((a,b,c,d)\). Any form wedge-orthogonal to both has the form \(u\,a\wedge b+v\,a\wedge c+w\,a\wedge d+z\,b\wedge c\). Its square vanishes exactly when \(wz=0\). Since this product of linear coordinates vanishes identically on the linear subspace, either \(w\) or \(z\) vanishes identically. Dimension three then gives precisely one of (2.1). Two distinct maximal wedge-null three-planes in the same ruling intersect in dimension one; those in opposite rulings intersect in dimension zero or two. Fixing the image type of one member therefore fixes the image type of every member of that ruling and forces the other ruling into the opposite type. Consequently an invertible wedge-conformal map either preserves both rulings or exchanges them. The internal dual exchanges them.

In the preserving case, apply the map to the four planes associated with a basis. Their images determine four lines with representatives \(f_0,\ldots,f_3\), and

\[
B^{ij}=c_{ij}f_i\wedge f_j,\qquad i<j.
\]

The representatives are independent, since otherwise the six images could not be independent. All \(c_{ij}\ne0\), and the wedge equation gives

\[
c_{01}c_{23}=c_{02}c_{13}=c_{03}c_{12}.
\tag{2.2}
\]

Set

\[
s=\operatorname{sign}(c_{01}c_{02}/c_{12}),\quad
a_0=\sqrt{|c_{01}c_{02}/c_{12}|},\quad
a_i=\frac{c_{0i}}{s a_0}\ (i=1,2,3).
\]

Then (2.2) gives \(c_{ij}=s a_i a_j\). Taking \(e^i=a_i f_i\) reconstructs \(B=s\Sigma(e)\). In the exchanging case apply this algorithm to \(\widetilde B=\star B\): if \(\widetilde B=\widetilde s\Sigma(e)\), then \(B=-\widetilde s\star\Sigma(e)\), so relabel \(s=-\widetilde s\). This keeps \(\star^{-1}=-\star\) explicit. The reconstruction is smooth in a neighborhood after choosing nonvanishing line representatives and the square-root sign.

For a fixed branch label the only ambiguity is \(e\mapsto-e\): if \(\Lambda^2 A=I\), every two-plane, hence every line, is invariant, so \(A\) is a scalar and \(A=\pm I\). The equation \(\Lambda^2 A=-I\) has no real solution by the same argument. The two rulings separate the undualized and dualized labels. This also proves that the four labels are disjoint.

### 2.3 Orientations and regularity

Direct contraction gives

\[
\nu_{s\Sigma}=\epsilon(e),\qquad
\nu_{s\star\Sigma}=-\epsilon(e).
\tag{2.3}
\]

Each fixed label is locally the image of \(GL(4,\mathbb R)/\{\pm I\}\). Its positive- and negative-determinant pieces are connected and distinct, giving eight components in all. If only orientation-preserving coframes are admitted, one keeps four of these eight components: undualized labels have positive \(\nu_B\), dualized labels negative \(\nu_B\). The sign of \(\nu_B\) by itself does not classify all four labels when both orientations are allowed. The replacement \(e\mapsto-e\) preserves four-dimensional orientation but reverses time orientation.

The simplicity constraints have rank twenty throughout this nondegenerate locus. One way to see this without extrapolating from a numerical rank is that at invertible \(\mathsf B\),

\[
\delta\mathsf B\longmapsto
\delta\mathsf B J\mathsf B^T+\mathsf B J\delta\mathsf B^T
\]

surjects onto all symmetric \(6\times6\) matrices; project out its single allowed \(J\) direction. The kernel therefore has dimension sixteen. The coframe differential has rank sixteen, since the infinitesimal exterior-square representation of \(\mathfrak{gl}(4)\) is faithful. It is precisely this kernel.

### 2.4 Why constrained substitution does not lose multiplier equations here

Let \(c(B)=0\) denote any twenty independent local simplicity functions. On the regular locus, a covector annihilates \(\ker Dc\) exactly when it lies in \(\operatorname{im}(Dc)^T\). Thus the \(e\)-equation of the substituted action says exactly that its original \(B\)-equation can be completed by a multiplier. Since \(Dc\) has full rank, that multiplier is unique. Equivalently, the six \(B\)'s are a basis and \(F_{IJ}=\phi_{IJKL}B^{KL}\) determines all its coefficients; the coframe equation enforces their required pair symmetry and trace.

The connection equation is unchanged because the algebraic parametrization \(B(e)\) does not depend on \(\omega\). This is a regular constrained-variation theorem, not an assumption that substituting a constraint always preserves all Euler–Lagrange equations. It fails as an argument on the degenerate locus where the rank drops.

## 3. What the full equations say in each branch

On either branch, \(D_\omega B=0\) is equivalent to \(D_\omega(e^I\wedge e^J)=0\). The invertible coframe then gives \(T^I=0\) and the unique connection \(\omega(e)\). For example, contracting
\(T^I\wedge e^J-e^I\wedge T^J=0\) with the dual frame first expresses every \(T^I\) in terms of the common torsion trace, and its second contraction sets that trace to zero. The exact torsion map has rank twenty-four; this is the same nondegenerate EC implication already proved in the [four-dimensional comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L98-L125>).

Write

\[
F_{IJ}=\tfrac12 R_{IJKL}e^K\wedge e^L,\qquad
(R\star)_{IJKL}=\tfrac12R_{IJMN}\epsilon^{MN}{}_{KL}.
\]

### 3.1 Undualized, conventionally called topological, branches

For \(B=s\Sigma\), the unique multiplier is

\[
\boxed{\phi_{IJKL}=\tfrac{s}{2}R_{IJKL}.}
\tag{3.1}
\]

Its pair symmetry is the Riemann pair symmetry, while its epsilon trace vanishes by the first Bianchi identity. Thus **no Ricci equation remains**. Every smooth torsion-free Lorentz metric supplies a full solution in this branch. The substituted coframe equation \(e_J\wedge F^{IJ}=0\) is likewise only the first Bianchi identity, not the Einstein equation.

Two useful counterexamples at the specified \(\Lambda=0\) are:

- Constant nonzero sectional curvature \(\lambda\): \(R_{IJKL}=\lambda(\eta_{IK}\eta_{JL}-\eta_{IL}\eta_{JK})\), so \(\mathrm{Ric}_{IJ}=3\lambda\eta_{IJ}\), with the allowed multiplier (3.1). This fails vacuum Einstein with zero cosmological constant.
- The stronger non-Einstein-product example \(e=(dt,dx,e^{kx}dy,dz)\), with real constant \(k\ne0\), has \(\omega^{12}=-k e^2\), \(F^{12}=-k^2e^1\wedge e^2\), and \(\mathrm{Ric}_{IJ}=\operatorname{diag}(0,-k^2,-k^2,0)\). It is not Einstein for any constant cosmological term, yet satisfies the full topological-branch equations with (3.1).

### 3.2 Dualized gravitational branches

For \(B=s\star\Sigma\), invertibility of the dual gives

\[
\boxed{\phi_{IJKL}=-\tfrac{s}{2}(R\star)_{IJKL}.}
\tag{3.2}
\]

For an algebraic Lorentzian Riemann tensor, pair symmetry of \(R\star\) is equivalent to the vanishing of traceless Ricci. Define \(S_{IJ}=\mathrm{Ric}_{IJ}-R\eta_{IJ}/4\) and \((\star R)_{IJKL}=\epsilon_{IJ}{}^{MN}R_{MNKL}/2\). Epsilon contraction and algebraic Bianchi give the exact identity

\[
(\star R\star)_{IJKL}=-R_{IJKL}
+\eta_{IK}S_{JL}-\eta_{IL}S_{JK}
-\eta_{JK}S_{IL}+\eta_{JL}S_{IK}.
\]

Since \((R\star)^T=\star R\), pair symmetry says \(\star R\star=-R\). Contracting the correction with \(\eta^{IK}\) gives \(2S_{JL}=0\); the converse follows by another right dual. Thus these restrictions have rank nine, not ten. In these conventions

\[
\epsilon^{IJKL}\phi_{IJKL}=sR.
\]

The remaining multiplier trace therefore sets \(R=0\), and altogether \(\mathrm{Ric}=0\). Conversely every Ricci-flat coframe, its torsion-free connection, and (3.2) solve every equation in (1.2). The multiplier is not an independent curvature modulus on this branch.

The multiplier term vanishes identically on either simple branch. The substituted bulk actions are

\[
L_{G,s}=\frac{s}{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL},
\qquad
L_{T,s}=\frac{s}{2\kappa}e_I\wedge e_J\wedge F^{IJ}.
\tag{3.3}
\]

The former is signed EC. The latter is the torsion-square/Nieh–Yan combination, not Einstein–Hilbert. On torsion-free fields their values are \(s\chi R\epsilon_g/(2\kappa)\) and zero, respectively. Equality or vanishing of these on-shell bulk densities alone is not the argument for the regional forms below. In particular, \((B,\phi,\omega)\mapsto(-B,-\phi,\omega)\) preserves the equations but sends \(L\mapsto-L\). At fixed positive \(\kappa\) it is not an action-preserving proper-gauge identification of the two signs.

## 4. Actual wall actions and complete regional potentials

Take fixed non-null embeddings, a timelike wall \(\Gamma\), outward unit spacelike normal \(n\), \(N^I=e^I(n)\), \(q=g-n^\flat\otimes n^\flat\), \(\epsilon_\Gamma=\iota_n\epsilon_g\), and \(K_{ij}=q_i{}^\mu q_j{}^\nu\nabla_\mu n_\nu\). For the integrated CPS use a GH slab with timelike boundary in the same sense as the preceding EC comparison, finite or convergent integrals, and common endpoint/cap conventions. The algebraic identities themselves do not require global hyperbolicity.

The reconstructed functions \(e(B),g(B),N(B)\) are defined on a chosen regular simple branch, not canonically on arbitrary nonsimple \(B\). The following are therefore honest wall actions either after algebraic simplicity reduction, or for the full independent-\(B\) theory with the **full spacetime value of \(B\) at the wall** restricted to that branch. Interior \(B\) variations in the latter description remain unrestricted. This boundary restriction is stronger information than just simplicity of a pulled-back two-form on a three-dimensional wall. No extension to all nonsimple boundary \(B\)'s is being presumed.

### 4.1 Gravitational branch

Use the Lorentz-covariant wall term and the corner actually obtained by varying it:

\[
l_{G,s}=\frac1\kappa B_{IJ}N^I D_\omega N^J,
\qquad
C_{G,s}=\frac1\kappa B_{IJ}N^I\delta N^J.
\tag{4.1}
\]

The signs of a local root \(e\) and of \(N\) cancel from both expressions. Do not impose a fixed boundary Lorentz frame. With Dirichlet \(\delta q=0\), a sufficient off-shell boundary domain is \(T^I|_\Gamma=0\), with variations preserving it; the weaker \((D_\omega B)_{IJ}|_\Gamma=0\) also suffices for the free-frame Dirichlet identity. These are pullback conditions, not vanishing of every normal component of torsion.

In fact, fixed \(q\) determines a unique Lorentz parameter \(\lambda\) matching the **tangential** coframe variation, with \(\delta N=\lambda N\); it does not require the full four-dimensional coframe variation to be Lorentz. The remaining normal coframe components do not enter the pulled-back wall terms. Writing \(\delta\omega=-D\lambda+a\), the arbitrary residual \(a\) cancels between \(\theta\) and \(\delta l\). Hence for every allowed Dirichlet variation the residual before the torsion/Gauss condition is imposed is

\[
(\theta_{\rm Pl}+\delta l_{G,s}-dC_{G,s})|_\Gamma
=\frac1{2\kappa}\lambda^{IJ}(D_\omega B)_{IJ}|_\Gamma.
\tag{4.2}
\]

It cannot be discarded merely because the metric is held fixed. Smooth full solutions satisfy it automatically; treating it as a boundary equation rather than restricting the off-shell domain is another possible variational presentation, not an extra finite proper-gauge identification.

Let

\[
\mathcal E=e_I\wedge\delta e^I,\quad
\alpha=\frac1{2\kappa}*_g\mathcal E,\quad
w^\mu=q^{\mu\alpha}n^\nu\delta g_{\alpha\nu},\quad
C_g=-\frac1{2\kappa}\iota_w\epsilon_\Gamma.
\]

On the torsion-free branch and its tangent variations, the action-derived EC identities give

\[
\iota_{G,s}^*\theta_{\rm Pl}=s\chi(p^*\theta_g-d\alpha),\quad
l_{G,s}=s\chi\frac K\kappa\epsilon_\Gamma,\quad
C_{G,s}=s\chi(p^*C_g-\alpha|_\Gamma).
\tag{4.3}
\]

The spacetime Hodge star is taken before wall pullback. These identities use the proved EC input in [sections 4–5 of the four-dimensional comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L166-L279>), not a new blind derivation of every metric variation. Their Plebanski coefficients and corner signs are independently checked in the present calculation.

Stokes' theorem now yields the stronger potential identity

\[
\boxed{\iota_{G,s}^{*}\Theta_{\rm Pl}=s\chi\,p^*\Theta_g.}
\tag{4.4}
\]

Taking \(\delta\) gives (0.2), including arbitrary allowed internal-normal/frame variations. The equality concerns the specified corner representative. Adding an allowed wall-closed corner one-form changes the regional form by its period's field-space derivative and must be matched separately.

### 4.2 Topological branch

Choose instead its natural Nieh–Yan completion:

\[
l_{T,s}=\frac{s}{2\kappa}e_I\wedge T^I,\qquad
C_{T,s}=-\frac{s}{2\kappa}e_I\wedge\delta e^I.
\tag{4.5}
\]

Its variation is the exact identity

\[
(\theta_{\rm Pl}+\delta l_{T,s})|_\Gamma
=\frac{s}{\kappa}\delta e_I\wedge T^I+dC_{T,s}.
\tag{4.6}
\]

Thus the pullback-torsion boundary condition supplies a sufficient off-shell domain, even without fixing the metric source. The complete action is not simply called zero or torsion squared: since \(d(e_I\wedge T^I)=T_I\wedge T^I-e_I\wedge e_J\wedge F^{IJ}\), adding (4.5) on the wall gives

\[
S_{T,s}=\frac{s}{2\kappa}\int_M T_I\wedge T^I
-\frac{s}{2\kappa}\left(\int_{\Sigma_f}e_I\wedge T^I-\int_{\Sigma_i}e_I\wedge T^I\right)
\]

when no other cap action is included. These endpoint functionals are retained; they and their tangent variations vanish on the smooth torsion-free solution space. On solutions, \(T=\delta T=0\) gives
\(e_I\wedge e_J\wedge\delta\omega^{IJ}=-d\mathcal E\), so \(\theta_{T,s}=dC_{T,s}\). Consequently

\[
\boxed{\iota_{T,s}^{*}\Theta_{\rm Pl}=0,\qquad
\iota_{T,s}^{*}\Omega_{\rm Pl}=0.}
\tag{4.7}
\]

This is a direct regional cancellation using an actual wall action, not a quotient by all BF shifts. It does not prove that every two arbitrary metrics in this branch are related by the same finite proper transformations. Determining its full enlarged gauge relation is a different question; infinitesimal nullness alone does not decide that relation.

## 5. Global reconstruction, admissible finite quotients, and counterexamples

### 5.1 A nontrivial sign lift even on a parallelizable manifold

Let

\[
M=(\mathbb R^4\setminus\{0\})/(x\sim-x)
\cong\mathbb R_+\times\mathbb{RP}^3.
\]

Use a trivial oriented/time-oriented internal Lorentz bundle. The antipodal map is free and preserves four-dimensional orientation. On the double cover set

\[
B=\star(dx\wedge dx),\quad\omega=0,\quad\phi=0.
\tag{5.1}
\]

All these fields are invariant under the deck map, including in the stipulated trivial internal bundle. They descend, satisfy every equation in (1.2), and have \(\nu_B=-\mathrm{vol}\ne0\). The induced flat Lorentz metric descends too.

Nevertheless there is no global coframe root of this \(B\) in that same bundle. Its local roots in the fixed branch are exactly \(\pm dx\). On the connected cover any smooth choice has constant sign, and the deck map exchanges the two roots. Hence neither is invariant. The pointwise branch-disjointness result excludes rescuing this same \(B\) by another label.

Equivalently, the induced metric is not time orientable: a continuous timelike vector on the connected cover has one fixed sign of its zeroth component, whereas deck invariance requires \(V(-x)=-V(x)\). The underlying manifold is parallelizable; this example is not explained by an obstruction to parallelizing its tangent bundle. It isolates the orthonormal coframe/time-orientation lift instead. It lies outside the GH/time-oriented regional sector.

More generally, fixed-branch local roots differ on overlaps by a locally constant sign. For a fixed time-oriented internal bundle, this sign cocycle is exactly the time-orientation cocycle of the reconstructed spacetime metric. Choosing a spacetime time orientation selects the unique future-preserving local root, and those roots glue. This assertion is conditional on the local simplicity reconstruction into that specified internal bundle; it does not assert that an arbitrary prescribed internal bundle is isomorphic to the tangent bundle of every metric.

### 5.2 A precise gravitational quotient correspondence

For example, fix a parallelizable oriented/time-oriented region and the trivial internal bundle, an admissible class of Ricci-flat metrics with global compatible coframes, the wall conditions above, and all smooth \(SO_0(1,3)\) frame maps, including boundary values and disconnected components of the mapping group. On the Plebanski side select \(B=+\star\Sigma(e)\) with orientation/time-orientation-compatible reconstructed roots. Specify this by the regular branch and lift conditions, not by assuming the connection equation in advance. Quotient by these frame maps and the same declared orientation- and time-orientation-preserving proper metric diffeomorphisms on both sides; for example, all admissible global diffeomorphisms that are identity on an outer collar. These are finite endpoint relations, not only transformations connected to the identity.

The independently defined equations and reconstruction give the inverse maps

\[
[g]\longmapsto
[(\star\Sigma(e),\omega(e),-\tfrac12R(e)\star)],
\qquad
[(B,\omega,\phi)]\longmapsto[g(B)].
\tag{5.2}
\]

Call this declared diffeomorphism group \(\mathcal D\); it must preserve the fixed orientations, wall data, and admissible metric domain. A metric's compatible coframes differ by a unique smooth \(SO_0(1,3)\) map; the selected time orientation removes the invisible \(e\mapsto-e\) ambiguity. The connection and multiplier are uniquely reconstructed. For endpoints with \(g_2=f^*g_1\), each allowed \(f\in\mathcal D\) has the unique frame compensator \(\Lambda=e_2(f^*e_1)^{-1}\). Naturality and uniqueness then give the same transformation of \(\omega\) and \(\phi\). Thus the arrows as well as the finite orbit relations correspond, not just their tangent generators.

The internal frame stabilizer is trivial: \(\bigwedge^2\Lambda=I\) forces \(\Lambda=\pm I\), and only \(+I\) belongs to \(SO_0(1,3)\). The **combined** diffeomorphism/frame stabilizer need not be trivial: it is precisely \(\operatorname{Isom}(g)\cap\mathcal D\), with the unique compensator just displayed. Spin lifts or different global groups require their own stabilizer analysis.

For a concrete smooth category, equip the spaces with functional diffeology: a finite-parameter plot is a jointly smooth family of admissible fields on \(U\times M\), with the chosen time orientations varying smoothly as part of the field data, not jumping between the two cone sheets; use quotient diffeology for the declared finite relations. Smooth reconstruction is local algebra plus finite derivatives. To establish the inverse map on metric plots, choose a star-shaped parameter neighborhood about \(u_0\), a global compatible coframe \(E_0\) for \(g(u_0)\), and write \(g_t=g(u_0+t(u-u_0))\). Solve the pointwise linear ODE

\[
\partial_t E_t=\tfrac12 E_t g_t^{-1}\partial_t g_t,\qquad E_{t=0}=E_0.
\]

Here \(E_t\) is the matrix of the coframe map \(TM\to\mathbb R^{1,3}\). The matrix \(E_t^T\eta E_t\) and \(g_t\) solve the same linear matrix ODE with the same initial value, so they coincide. Linear ODE existence on \([0,1]\) and smooth parameter dependence give a global smooth family \(E_1(u,x)\); this is pointwise in \(x\) and requires no uniform compactness assumption on \(M\). Orientation and the chosen future cone remain compatible by continuity. No boundary frame has been fixed, so this family obeys the metric wall data. Different choices yield the same frame quotient. This proves that (5.2) is a diffeological orbit-space isomorphism.

Equation (4.4) matches the regional presymplectic forms before quotient. On any common proper quotient where the metric form descends, the corresponding Plebanski form descends and agrees. Wherever that common reduction is regular and weakly symplectic, (5.2) is a symplectomorphism. No theorem that every four-dimensional Einstein quotient is a smooth manifold, or that a general timelike Einstein Dirichlet IBVP is well posed, is being asserted.

### 5.3 Unrestricted BF shifts are not Plebanski proper gauge

At \(e^I=dx^I\), \(\omega=0\), \(B=\star\Sigma\), take an ordinary BF shift parameter \(\eta^{01}=x^0dx^1\), all other independent pairs zero. Then

\[
\delta_\eta B^{01}=d\eta^{01}=dx^0\wedge dx^1,\quad
B^{01}=-dx^2\wedge dx^3,\quad
\delta_\eta(B^{01}\wedge B^{01})=-2\mathrm{vol}.
\tag{5.3}
\]

The simplicity equation requires this self-wedge to vanish. Multiply the parameter by a smooth bump equal to one near the point to make the violation compactly supported in the interior. No boundary improvement fixes it, and a multiplier variation cannot cancel a failure of the multiplier equation itself. Thus the unrestricted BF shift group cannot be imported as the proper Plebanski group. This does not exclude particular constrained combinations or an independently derived enlarged symmetry of the topological branch.

### 5.4 Degenerate fields are additional strata

At \(B=0\), equations (1.2) only require \(F=0\); every allowed multiplier is compatible, and the simplicity differential is zero. These fields have no nondegenerate metric reconstruction. The flat family \(B(t)=t\star(dx\wedge dx)\), \(\omega=\phi=0\), reaches this stratum at \(t=0\) from nondegenerate branches. Consequently neither the regular reconstruction nor the unique-multiplier theorem extends across it. A classification of all degenerate strata and their gauge or quantum weights is not supplied here.

## 6. An ambient linearized primary–secondary diagnostic

This calculation isolates why imposing only spatial simplicity is not yet a canonical reduction. It is deliberately a **Minkowski, time-gauge background**, not substitution of the full time gauge and simplicity before taking brackets. Off-constraint transverse variations remain in the ambient canonical space. Spatial derivatives and other constraint blocks are omitted; this is not a nonlinear Dirac algebra or a global degree-of-freedom count.

Define

\[
\pi^{aIJ}=\tfrac12\epsilon^{abc}B_{bc}^{IJ},\quad
p^{ai}=-\pi^{a0i},\quad
q^{ai}=-\tfrac12\epsilon^i{}_{jk}\pi^{ajk},
\]

\[
K_a^i=\omega_a^{0i},\qquad
\Gamma_a^i=-\tfrac12\epsilon^i{}_{jk}\omega_a^{jk},\qquad
\Theta_\Sigma=\frac1\kappa\int(p^{ai}\delta K_a^i+q^{ai}\delta\Gamma_a^i).
\tag{6.1}
\]

Here \(\Gamma_a^i\) denotes the rotational connection, not the wall, and \(K_a^i\) the boost connection, not contorsion. The chosen gravitational background has \(p=I,q=0\). Full-sum primary simplicity is

\[
\epsilon_{IJKL}\pi^{aIJ}\pi^{bKL}
=4(p^a\cdot q^b+q^a\cdot p^b).
\tag{6.2}
\]

Choose an orthonormal Frobenius basis \(T_A\), \(A=1,\ldots,6\), of \(\operatorname{Sym}(3)\). Its normalized linearized primaries are \(C_A=\operatorname{tr}(T_A^Tq)\). At a unit triad the spatial torsion map is

\[
\tfrac12\epsilon^{cab}T^i{}_{ab}
=(\operatorname{tr}\Gamma)\delta^{ic}-\Gamma_i{}^c,
\tag{6.3}
\]

of rank nine, while boost Gauss \(G_i=\epsilon_{ija}\Gamma_a{}^j\) detects only the three antisymmetric components. Direct evaluation of the original EC wedge action gives the homogeneous rotational term

\[
L_\Gamma=\frac{\operatorname{tr}(\Gamma^2)-(\operatorname{tr}\Gamma)^2}{2\kappa},
\qquad H_\Gamma=-L_\Gamma.
\]

With the stated CPS bracket sign, preservation of the primaries gives

\[
\{C_A,H_\Gamma\}
=\operatorname{tr}[T_A^T(\Gamma^T-\operatorname{tr}\Gamma I)].
\tag{6.4}
\]

On the symmetric matrices this map has five eigenvalues \(+1\) and one \(-2\), so it is equivalent to the six compatibility constraints \(S_A=\operatorname{tr}(T_A^T\Gamma)=0\). Their transverse block is

\[
\boxed{\{C_A,S_B\}=-\kappa\delta_{AB},\qquad
\mathbb D=\begin{pmatrix}0&-\kappa I_6\\\kappa I_6&0\end{pmatrix},\quad
\det\mathbb D=\kappa^{12}.}
\tag{6.5}
\]

This explicitly exhibits a second-class block missed by a primary-only treatment. If \(q=0\) were substituted before constructing the ambient bracket, (6.5) would no longer be a legitimate calculation on that already reduced space.

The [runnable Wolfram diagnostic](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/plebanski_linearized_constraints.wl>) and [actual server return](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/plebanski_linearized_constraints.results.json>) contain thirteen exact passes and an empty message list. An independent analytic review confirmed the bracket sign, the isotropic \(\Gamma=\gamma I\) curvature check, and the preservation eigenvalues, while requesting the explicit ambient-background qualification used here.

The literature makes the same structural distinction at nonlinear canonical level: [Alexandrov–Buffenoir–Roche, gr-qc/0612071v1](https://arxiv.org/abs/gr-qc/0612071v1), PDF/printed p. 4, (16)–(17), and pp. 6–7, (35)–(39), retain secondary constraints and perform a consistent Dirac reduction. Their appendix B, pp. 13–14, displays a nonzero primary–secondary block. Those pages were visually checked; their coefficients use different normalizations and are not transplanted into (6.5). The [source record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/Source evidence.md>) states the limited audit. This corroboration does not promote the present diagnostic to a full nonlinear computation or supply regional corner data.

## 7. Independent evidence and audit boundary

The [independent local report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/report.md>) supplies a separate constructive classification and the full normal-space/multiplier proof. Its [Wolfram source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/checks.wl>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/actual-output.txt>) have 28 exact passes and no messages. These include the full twenty-parameter double-dual identity and the non-Einstein product metric, not just representative curvature examples.

The separate [independent regional report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c.md>) derives the wall and metric-potential identities without reading the parent's earlier EC report. Its [Sage/Python source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c.py>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-output.json>) have 28 exact passes. The [actual server diagnostics](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-sage-tool-return.json#L23-L40>) have no error, warnings, stderr, transport stderr, or truncation. The parent inspected and programmatically compared the actual stdout's JSON payload with the saved result; the trailing status line is separately checked. Later exclusive-output plumbing preserves the original evidence and leaves the mathematical code byte-identical. The thirteen-check parent canonical suite is linked in section 6.

A third fresh reviewer evaluated the specified antipodal configuration without a proposed conclusion or the other reports. Its [independent global-lift analysis](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Plebanski global lift independent.md>) proves the sign/time-orientation obstruction and its precise removal. This is independent analysis of a supplied example, not a claim that two investigators independently discovered the example.

Only after the independent work did the reviewers read this synthesis. The [local supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-plebanski-20261031T0044-a6f2/supplied-text-audit-sections1-3.md>) accepts the alternative four-line reconstruction and bulk argument; its requested explicit dual sign relabeling and parameter/ruling precision are incorporated. The [regional supplied-text audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-supplied-synthesis-audit-20261031T010604-9b7c.md>) accepts the full-simple boundary domain, all-Dirichlet torsion remainder, pullback-torsion sufficiency, and ambient canonical scope. The [global quotient follow-up](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Plebanski quotient ODE supplied-text audit.md>) verifies the finite arrows, combined stabilizers, and parameter-dependent coframe ODE. These scoped audits are not advertised as fresh blind derivations or as repeated CAS runs.

## 8. What is and is not established

**Verified:** regular constrained substitution with a unique recovered multiplier; branch-dependent full equations; the action-derived regional form; and, with declared global lift and proper-frame conditions, the gravitational metric correspondence. The counterexamples distinguish competing branches, global sign reconstruction, unrestricted BF shifts, and the degenerate stratum.

**Assumptions:** real four-dimensional Lorentz fields, zero cosmological constant, full antisymmetric-pair sums, nondegenerate simplicity for the reconstruction theorems, explicitly chosen wall/corner and endpoint data, and the stated time-oriented bundle/proper-gauge category for global equivalence. Smooth weakly symplectic reduction is conditional on the same common metric quotient and its descent.

**Not verified or claimed:** equality of Plebanski and metric quantum theories. A quantum comparison must specify whether other components and degenerate strata are excluded or summed over, the simplicity measure, second-class determinant, gauge/ghost system, boundary restrictions, and regularization. The regular rank-twenty statement and the finite diagnostic do not determine those choices. Nor has this report classified the complete finite gauge group of the topological branch, a nonlinear Dirac algebra with boundary, nonzero cosmological constant, spin-foam discretizations, or arbitrary internal bundle sectors.
