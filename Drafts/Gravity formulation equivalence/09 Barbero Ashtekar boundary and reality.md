# Barbero and Ashtekar variables: regional equivalence, reality, and a covariance obstruction

## Result and proof level

**Proved under the domain below:** the nondegenerate real Barbero change of initial-data variables is invertible and preserves the **completed regional** symplectic structure. Its spatial boundary one-form is generally not a field-space-exact generating function. In this project's Holst convention the usual connection parameter is **gamma = minus beta**.

For either chiral value \(\gamma=\pm i\), the same completed holomorphic form pulls back to the real Einstein–Cartan/ADM form on the specified Lorentzian reality slice. The uncorrected regional form generally does not. The polynomial complex constraints alone admit additional nonreal data, and arbitrary complex evolution multipliers do not preserve reality.

The stronger claim that, for real nonzero gamma, the Barbero connections on all hypersurfaces are pullbacks, up to their internal gauge transformations, of one hypersurface-independent spacetime connection is **false**. An exact Minkowski holonomy counterexample proves this without contradicting the canonical equivalence.

These are classical statements about nondegenerate data and the already specified covariant solution domain. Identification of an arbitrary boundary initial-data quotient with all Einstein solutions still requires a common existence/uniqueness and proper-gauge theorem. No such Einstein Dirichlet IBVP theorem, unrestricted complex-gauge equivalence, or quantum equivalence is asserted here.

## 1. Conventions and domain

Use the [CPS conventions](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L27>) and the [four-dimensional wall prescription](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L175-L265>):

\[
\eta_{IJ}=\operatorname{diag}(-,+,+,+),\quad \epsilon_{0123}=1,
\quad\epsilon^{0123}=-1,\quad\kappa=8\pi G>0,
\qquad d\delta=\delta d,
\]
\[
\Theta_\Sigma=\int_\Sigma\theta-\oint_S C,
\qquad\Omega=\delta\Theta,\qquad\iota_{X_H}\Omega=-\delta H,
\qquad S=\partial\Sigma.
\tag{1.1}
\]

Antisymmetric internal pairs are full sums. Products of spacetime forms mean wedge products. The independent real Holst action has

\[
L_\beta=\frac{\epsilon_{IJKL}e^Ie^JF^{KL}}{4\kappa}
+\frac{e_Ie_JF^{IJ}}{2\kappa\beta},\qquad
\ell_\beta=\frac{\epsilon_{IJKL}e^Ie^JN^KDN^L}{2\kappa}
+\frac{e_IT^I}{2\kappa\beta},\quad \beta\in\mathbb R\setminus\{0\}.
\tag{1.2}
\]

The fixed timelike wall has outward spacelike normal \(n\), \(N^I=e^I(n)\), and fixed induced metric \(q_\Gamma\). Frames are not fixed. The previously proved sufficient off-shell wall domain is \(T|_\Gamma=0\); the weaker specified boundary Gauss condition also suffices. Use common caps/endpoint data, fixed embeddings, and finite or convergent integrals. The present canonical map is evaluated on the torsion-free solution/tangent branch; it does not eliminate an arbitrary off-shell connection by fiat.

On an oriented spacelike cut choose the future unit normal \(u\), time gauge \(e^0|_\Sigma=0\), and \(e^0(u)=1\). Then \(\epsilon_\Sigma=\iota_u\epsilon_g=e^1e^2e^3\). Spatial indices are \(i,j,k=1,2,3\), with \(\varepsilon_{123}=1\). Define

\[
\mathsf E_i=\tfrac12\varepsilon_{ijk}e^je^k,
\qquad E^a_i=\tfrac12\varepsilon^{abc}\varepsilon_{ijk}e_b^je_c^k,
\quad
\Gamma^i=-\tfrac12\varepsilon^i{}_{jk}\omega^{jk},
\quad K^i=\omega^{0i},
\]
\[
de^i+\varepsilon^i{}_{jk}\Gamma^je^k=0,
\qquad A_\gamma^i=\Gamma^i(E)+\gamma K^i,
\qquad K_{ab}=K_a^ie_{bi}.
\tag{1.3}
\]

On geometric data \(K_{ab}=q_a{}^\mu q_b{}^\nu\nabla_\mu u_\nu\), with the **plus** sign. Denote the spatial metric by \(h_{ab}\), its determinant by \(h\), and its scalar curvature by \({}^{(3)}R\), to distinguish them from the wall metric. Fix positive spatial coframe orientation and a compatible internal bundle; a global trivialization is a convenient benchmark. All smooth residual \(SO(3)\) maps, including boundary values and disconnected mapping-group components, are included in the declared frame relation. Spin lifts are separate data, not implicit.

## 2. The actual spatial boundary term

The bulk action gives

\[
\theta_\beta=\frac{\epsilon_{IJKL}e^Ie^J\delta\omega^{KL}}{4\kappa}
+\frac{e_Ie_J\delta\omega^{IJ}}{2\kappa\beta}.
\]

Full-pair contraction in time gauge, before using the spatial compatibility equation, gives

\[
\theta_\beta|_\Sigma=\frac1\kappa\mathsf E_i\delta K^i
-\frac1{\kappa\beta}\mathsf E_i\delta\Gamma^i.
\tag{2.1}
\]

Thus the standard notation \(A_\gamma=\Gamma+\gamma K\) has

\[
\boxed{\gamma=-\beta,\qquad
\Theta^{\rm raw}_\gamma=\frac1{\kappa\gamma}\int_\Sigma\mathsf E_i\delta A_\gamma^i.}
\tag{2.2}
\]

This minus sign is a convention conversion, not a physical distinction. A Holst action with the opposite sign for its second term would use the opposite conversion.

Varying spatial compatibility yields \(D_\Gamma\delta e^i+\varepsilon^i{}_{jk}\delta\Gamma^je^k=0\). Contracting with \(e_i\) and using \(D_\Gamma e^i=0\) proves

\[
\boxed{2\mathsf E_i\delta\Gamma^i=d(e_i\delta e^i).}
\tag{2.3}
\]

Consequently

\[
\Theta^{\rm raw}_\gamma=\Theta_K+\mathcal B_\gamma,
\qquad\Theta_K=\frac1\kappa\int_\Sigma\mathsf E_i\delta K^i,
\qquad\mathcal B_\gamma=\frac1{2\kappa\gamma}\oint_S e_i\delta e^i.
\tag{2.4}
\]

The raw difference of symplectic forms is \(\delta\mathcal B_\gamma\). For two commuting parameter variations its evaluation is

\[
\delta\mathcal B_\gamma(\delta_1,\delta_2)
=\frac1{\kappa\gamma}\oint_S\delta_1e_i\wedge\delta_2e^i.
\tag{2.5}
\]

For noncommuting field-space vector fields, the exterior derivative includes their bracket; (2.5) is the tensorial result, not a prescription to omit that bracket in a direct calculation. It need not vanish when the induced metric is fixed and only the frame varies. Thus a spatial total derivative is not automatically a field-space-exact change of potential.

## 3. Action-derived corner and covariant comparison

Direct variation of (1.2), rather than a desired symplectic matching, produces

\[
C_\beta=C_{\rm EC}-\frac{e_I\delta e^I}{2\kappa\beta},
\qquad C_{\rm EC}=\frac{\epsilon_{IJKL}e^Ie^JN^K\delta N^L}{2\kappa}.
\tag{3.1}
\]

On the time-gauge cut, \(C_\gamma=C_{\rm EC}+e_i\delta e^i/(2\kappa\gamma)\). Equations (2.4) and (3.1) give the exact regional equality

\[
\boxed{\Theta^{\rm rel}_\gamma
=\frac1{\kappa\gamma}\int_\Sigma\mathsf E_i\delta A_\gamma^i
-\oint_S\left(C_{\rm EC}+\frac{e_i\delta e^i}{2\kappa\gamma}\right)
=\Theta_K-\oint_S C_{\rm EC}.}
\tag{3.2}
\]

Its derivative is independent of real nonzero gamma. The same right side is the torsion-free EC relative potential. The [already established covariant comparison](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/07 Four-dimensional EC Holst comparison.md#L175-L265>), independently recovered in the present boundary review, gives

\[
\iota^*\Theta_\beta=p^*\Theta_g,
\qquad\iota^*\Omega_\beta=p^*\Omega_g.
\tag{3.3}
\]

Thus (3.2) is a cut expression of that specific covariant structure, not a replacement of it by a new corner chosen solely for convenience. Extra wall-closed corner representatives or added edge variables remain different boundary data to compare separately.

### Nonorthogonal cuts

Let \(s\) be the outward unit normal to \(S\) within \(\Sigma\), \(\epsilon_S=\iota_s\epsilon_\Sigma\), and write

\[
n=\sinh\chi\,u+\cosh\chi\,s.
\]

In time gauge \(\mathsf E_i|_S=s_i\epsilon_S\). Contracting (3.1) gives

\[
C_{\rm EC}|_S=\frac1\kappa\mathsf E_i(N^0\delta N^i-N^i\delta N^0)
=-\frac{\epsilon_S}{\kappa}\delta\chi.
\tag{3.4}
\]

Hence the common regional potential contains \(+\oint_S\epsilon_S\delta\chi/\kappa\). On the stated fixed-wall-metric domain with fixed corner embedding, \(\delta\epsilon_S=0\), so this is field-space exact there. It is still needed to compare potentials. The cut-wall boost angle is common geometric normal data, not determined by \((A,E)\) alone. Orthogonal cuts remove it only if allowed variations preserve \(\chi=0\), not merely if the background happens to have \(\chi=0\). If the boundary metric is relaxed, \(\delta\epsilon_S\wedge\delta\chi/\kappa\) must be retained; that is a different variational problem.

## 4. A real raw-corner counterexample and a genuine generator

Take Minkowski spacetime with \(\Sigma=[0,L]_x\times T^2_{y,z}\), transverse area \(\mathcal A\), and fixed flat wall metric. Let

\[
e^0=dT,\qquad
\begin{pmatrix}e^1\\e^2\\e^3\end{pmatrix}
=R_y(sx/L)R_z(tx/L)
\begin{pmatrix}dx\\dy\\dz\end{pmatrix},\qquad K=0.
\tag{4.1}
\]

Here \(s,t\) are field-family parameters and \(T\) is spacetime time. The rotations have the standard right-handed active matrices. Their torsion-free spatial connection satisfies \(\Gamma_\times=-dR\,R^T\), where \((v_\times)^i{}_k=\varepsilon^i{}_{jk}v^j\). The metric is constant throughout this family, the cuts remain orthogonal, and the internal wall normal rotates freely. A direct bulk computation, not just evaluation of a proposed corner, gives

\[
\Theta^{\rm raw}_\gamma=-\frac{\mathcal A}{\kappa\gamma}\sin t\,ds,
\qquad\Omega^{\rm raw}_\gamma=\frac{\mathcal A}{\kappa\gamma}\cos t\,ds\wedge dt.
\tag{4.2}
\]

The boundary expression \(\mathcal B_\gamma\) equals precisely this raw potential, while \(C_{\rm EC}=0\). Thus the completed potential and form vanish along this entire pure-frame family. For \(\gamma=-\beta\), the raw pairing at the origin is \(-\mathcal A/(\kappa\beta)\). This refutes raw regional symplectic equivalence with unrestricted boundary rotations; it does not refute (3.2).

It also proves that no local scalar functional \(F\) has \(\mathcal B_\gamma=\delta F\) on this free-frame domain: \(\delta\mathcal B_\gamma\ne0\). A scalar boundary counterterm cannot cancel a nonclosed one-form. An extended boundary polarization with extra variables is not ruled out, but is extra structure.

For comparison, a genuine type-II generating functional exists on a **closed** cut in a chosen global trivialization or canonical chart. It is a coordinate generator, not a scalar asserted to descend to the full frame quotient. Normalize old momentum \(p^a_i=E^a_i/\kappa\) and new momentum \(P^a_i=E^a_i/(\kappa\gamma)\). Then

\[
F_2[K,P]=\int_\Sigma P^a_i\bigl[\gamma K_a^i+\Gamma_a^i(\kappa\gamma P)\bigr]
\]
\[
\delta F_2=\int_\Sigma(p^a_i\delta K_a^i+A_a^i\delta P^a_i)
\quad(S=\varnothing).
\tag{4.3}
\]

With a boundary its exact variation has the additional term \(+\mathcal B_\gamma\). Thus the same formula is not the ordinary differentiable bulk generator on the free-frame regional domain. The action-derived corner, not an assumed scalar generating function, resolves the comparison.

## 5. Inverse map, finite frame relations, and the ADM bridge

Write the triad matrix with row \(a\), column \(i\). On the chosen orientation sector,

\[
\det E=(\det e)^2>0,\qquad
 e=\sqrt{\det E}\,E^{-T},\qquad
 K_a^i=\frac{A_a^i-\Gamma_a^i(E)}{\gamma}.
\tag{5.1}
\]

These are mutually inverse smooth maps for every fixed real \(\gamma\ne0\); the spin connection uses finitely many spatial derivatives. In the functional smooth category this gives a smooth field-space isomorphism on the specified nondegenerate domain, not just a formal power-series chart. At \(\gamma=0\), \(A=\Gamma(E)\) loses all extrinsic-curvature information, so invertibility fails.

Under a finite residual rotation \(R:\Sigma\to SO(3)\), \(\Gamma\) and \(A\) transform as connections and \(K,E\) homogeneously. Equation (5.1) intertwines these relations for **all** smooth maps, not only infinitesimal rotations. An invertible triad has trivial pure \(SO(3)\) stabilizer. Two positively oriented triads for the same spatial metric differ by a unique such rotation, and it also matches \(K\) whenever the geometric extrinsic tensors agree. The common cut-wall normal data, including \(\chi\), are carried along unchanged by the coordinate map and by internal rotations. For regional objects, the admitted spatial diffeomorphisms must also preserve the specified wall/corner structures and these retained data. Combined spatial-diffeomorphism/frame stabilizers are then those admitted diffeomorphisms preserving \(h,K\) and the retained corner-normal data, with their unique frame compensators. The bare \((h,K)\) pair alone is not claimed to classify full regional objects. Replacing \(SO(3)\) by \(SU(2)\) introduces its central kernel and spin-lift questions; it is not a silent notational substitution.

Time gauge itself has no additional local boost obstruction in the stated time-oriented frame domain: for internal future unit normal \(U=(U^0,\mathbf U)\), the smooth boost

\[
B(U)=\begin{pmatrix}U^0&\mathbf U^T\\
\mathbf U&I+\mathbf U\mathbf U^T/(1+U^0)\end{pmatrix}
\]

maps \((1,0,0,0)\) to \(U\); its inverse fixes the cut time gauge. Any Lorentz transformation between two frames already in that gauge fixes the same future normal and is a spatial rotation. This statement is within the fixed compatible global bundle category.

The Gauss condition \(D_a^A E^a_i=0\) becomes symmetry of \(K_{ab}\). On that surface define

\[
\pi^{ab}=\frac{\sqrt h}{2\kappa}(K^{ab}-K h^{ab}),\qquad
K^{ab}=\frac{2\kappa}{\sqrt h}\left(\pi^{ab}-\frac\pi2h^{ab}\right),
\quad\pi=h_{ab}\pi^{ab}.
\tag{5.2}
\]

A direct variation gives

\[
\boxed{\Theta_K=\int_\Sigma\pi^{ab}\delta h_{ab}
+\delta\left(\frac1\kappa\int_\Sigma\sqrt h\,K\right).}
\tag{5.3}
\]

The displayed cap term really is field-space exact, unlike \(\mathcal B_\gamma\). Together with (3.4), it identifies the completed form with ADM's on the same boundary domain. It also gives a concrete finite Gauss/frame quotient correspondence with ADM data. Smooth local frame choices provide the inverse on parameter plots, and the unique frame compensator identifies finite arrows and stabilizers.

For closed cuts, or functionals supported strictly in the interior, the usual bulk bracket is \(\{A_a^i(x),E^b_j(y)\}=\kappa\gamma\delta_a^b\delta^i_j\delta(x,y)\). Boundary-supported brackets must instead be calculated from the completed form; the bulk Darboux formula alone is not a boundary theorem.

On a common space of actual Einstein solutions, (3.2) matches the covariant forms on every admissible cut. This does **not** prove that every formal canonical datum has a unique solution of a timelike Dirichlet problem. A full solution-versus-initial-data quotient theorem needs that separate PDE/gauge input. Where the common quotient exists and the form descends regularly, the displayed map gives the corresponding symplectomorphism. Refoliations act through reconstructed geometry and the necessary time-gauge compensation, not necessarily by the Lie derivative of a spacetime connection.

## 6. The complex real slice

For \(\gamma=\pm i\), work in a conjugation-compatible nondegenerate complex chart containing the positive real triads, with a consistent coframe branch. The Lorentzian reality conditions are

\[
\boxed{E=\overline E,\quad \det E>0,\qquad
A+\overline A=2\Gamma(E).}
\tag{6.1}
\]

The last condition is exactly reality of \(K=(A-\Gamma(E))/\gamma\). It is not the condition that \(A\) itself be real. Equations (5.1) and (6.1) identify this slice with real \((e,K)\) data. The completed complex potential is (3.2), with the same geometric corner data carried along. Consequently

\[
\boxed{j_{\mathbb R}^{*}\Theta^{\rm rel}_\gamma
=\Theta_K-\oint_S C_{\rm EC}\ \in\mathbb R,
\qquad j_{\mathbb R}^{*}\Omega^{\rm rel}_\gamma=\Omega_{\rm EC}^{\rm rel}.}
\tag{6.2}
\]

The raw potential instead has the additional, generally imaginary, \(\mathcal B_\gamma\). Its derivative is nonzero for examples such as section 4. A real bulk pullback is therefore insufficient to establish regional reality.

There is a useful local antiholomorphic description:

\[
\rho(E,A)=(\overline E,2\Gamma(\overline E)-\overline A),
\qquad \rho^2=1.
\tag{6.3}
\]

In \((E,K)\) coordinates it is ordinary complex conjugation. With the common EC geometric data conjugated as well, (3.2) implies \(\rho^*\Theta^{\rm rel}_\gamma=\overline{\Theta^{\rm rel}_\gamma}\) and likewise for \(\Omega\). The raw form has a defect: \(\rho^*\Omega^{\rm raw}_\gamma-\overline{\Omega^{\rm raw}_\gamma}=2\delta\mathcal B_\gamma(\overline e)\). The corner removes it. This is a local holomorphic/real-structure statement, not a classification of all complex coframe branches or global complex polarizations.

For pure finite internal transformations, a complex \(SO(3,\mathbb C)\) matrix carrying one nondegenerate real \(E\) to another must itself be real: solve for that matrix using the invertible real triads. Thus the internal arrows between points of the stated reality slice are precisely the real residual rotations. Quotienting by unrestricted complex transformations and then simply discarding reality conditions is not the real theory. Physical evolution/refoliation requires its separately specified reality-preserving combined transformation, as below.

The chiral construction must also not use the real-Holst auxiliary inverse at \(\beta=\mp i\). The internal operator \(\star+\beta^{-1}\) is then rank three on complex bivectors; the opposite chiral connection is invisible to the bulk chiral action. A complex first-order action retaining both chiralities has additional null variables to eliminate or quotient with its boundary domain specified. The present result establishes the selected chiral canonical real slice, not invertibility of that exceptional full auxiliary operator.

## 7. Constraints and a test of reality-preserving evolution

Let \(F^i(A)=dA^i+\tfrac12\varepsilon^i{}_{jk}A^jA^k\), and define the polynomial densities

\[
G_i=D_a^AE^a_i,\qquad V_a=E^b_iF^i_{ab},\qquad
\mathcal S=\varepsilon^{ij}{}_kE^a_iE^b_jF^k_{ab}.
\tag{7.1}
\]

Take zero cosmological constant here. On the Gauss surface with real \(K_{ab}=K_{ba}\), compatibility and the spatial Bianchi identity give

\[
V_a=\gamma\sqrt h\,(\nabla_aK-\nabla_bK^b{}_a),
\qquad
\mathcal S=-h\,{}^{(3)}R+\gamma^2h(K^2-K_{ab}K^{ab}).
\tag{7.2}
\]

The derivative term in \(\mathcal S\) vanishes because it contracts \(\nabla_aK_{bc}\) with a tensor antisymmetric in \(b,c\). The quadratic contribution to \(V_a\) vanishes for symmetric \(K\). At \(\gamma^2=-1\), the normalized constraints are exactly

\[
\frac{V_a}{\kappa\gamma}=\mathcal H_a^{\rm ADM},
\qquad \frac{\mathcal S}{2\kappa\sqrt h}
=\frac{\sqrt h}{2\kappa}(K_{ab}K^{ab}-K^2-{}^{(3)}R)
=\mathcal H^{\rm ADM}.
\tag{7.3}
\]

The spatial-diffeomorphism generator uses \((V_a-A_a^iG_i)/(\kappa\gamma)\). For real gamma the scalar numerator instead includes \(-(1+\gamma^2)h(K^2-K_{ab}K^{ab})\); the same substitution then gives the ADM scalar. Normalization and derivative identities, not just a matching constraint count, establish the correspondence on this domain.

### Extra complex data

On a unit flat three-torus choose constant fields

\[
E^a_i=\delta^a_i,\qquad A_a^i=\operatorname{diag}(1,1,-\tfrac12).
\tag{7.4}
\]

Then \(G=V=\mathcal S=0\), since the three pairwise products of the diagonal entries sum to zero. Its curvature is nonzero, but \(A+\overline A-2\Gamma=2A\ne0\). It is not real Lorentzian data. Nor can a complex internal rotation place it on the stated reality slice: both endpoint triads being real would force the rotation to be real, under which the nonzero reality defect transforms covariantly. This is an exact **constraint-data** counterexample, not a claimed complete complex spacetime development.

### Real lapse is not, by itself, enough

Use compactly supported smearing in the interior, or a closed cut, so there is no omitted Hamiltonian surface term. Normalize

\[
H_{\mathcal S}[N]=\frac1{2\kappa}\int_\Sigma\frac{N}{\sqrt h}\mathcal S,
\qquad G[\lambda]=\frac1{\kappa\gamma}\int_\Sigma\lambda^iG_i.
\tag{7.5}
\]

The density \(\mathcal S\) is polynomial. A polynomial Hamiltonian uses the independent densitized lapse \(\widetilde N=N/\sqrt h\); holding ordinary \(N\) fixed instead introduces the displayed nonpolynomial factor. The two variation prescriptions differ by scalar-constraint terms on the constraint surface. Here the compensator identity uses fixed ordinary \(N\).

At flat data \(E=I,K=0,A=0\), with real nonconstant lapse \(N(x)\) and zero shift,

\[
(X_{H_{\mathcal S}}E)^b{}_k
=\gamma\varepsilon^{abk}\partial_aN.
\tag{7.6}
\]

For chiral gamma this is imaginary. The bare polynomial scalar flow therefore leaves the chosen real-triad section even at Minkowski data. Its induced metric variation at this instant is zero: this is a gauge-compensable failure of the real-frame section, not a physical metric becoming complex in this particular test. Since \(X_{G[\lambda]}E=\lambda\times E\), the required compensating multiplier in these conventions is

\[
\boxed{\lambda_N^i=-\gamma e^{ai}\partial_aN.}
\tag{7.7}
\]

At flat data the combined flow has \(\dot E=0\), \(\dot A_a^i=\gamma\partial_a\partial_iN\), hence \(\dot K_{ab}=\partial_a\partial_bN\), all consistent with real geometric normal deformation and the chosen positive sign of \(K\). The Gauss term is complex by itself, but its **combined** flow with the scalar is tangent to reality; it is not an additional unrestricted complex internal gauge identification. Field-dependent multiplier variations proportional to \(G\) are accounted for on the Gauss surface.

A stronger identity explains this compensation beyond the flat test. Without assuming symmetry of \(K_{ab}\), set \(Q^a=\varepsilon^{abc}e_{ck}K_b^k=-e^{ai}G_i/\gamma\). The linear-in-\(K\) part of \(\mathcal S\) is \(2\gamma\sqrt h\,\partial_aQ^a\). Integration by parts therefore gives, for \(\gamma^2=-1\),

\[
H_{\mathcal S}[N]+G[\lambda_N]
=\frac1{2\kappa}\int_\Sigma N\sqrt h\,
\bigl[\operatorname{tr}(K^2)-(\operatorname{tr}K)^2-{}^{(3)}R\bigr]
+\frac\gamma\kappa\oint_S NQ^a\,dS_a.
\tag{7.8}
\]

Here the trace uses \(K_a{}^b\); for nonsymmetric \(K\), \(\operatorname{tr}(K^2)\) is not its positive Frobenius norm. On a closed cut the right side is manifestly real in real \((E,K)\), and its holomorphic continuation is conjugation compatible. The corrected form is real in the same coordinates, so this Hamiltonian vector preserves that real slice wherever its flow exists. On Gauss it is ADM; treating \(\lambda_N\) as a field-dependent Hamiltonian functional versus an externally specified multiplier differs by terms proportional to \(G\), which vanish there. The displayed surface remainder is not silently dropped on a region: vanishing of its value on \(G=0\) alone is not an off-shell differentiability argument.

There is also a genuine metric-reality counterexample for a complex lapse, distinct from (7.6). On the unit three-torus set \(E=\operatorname{diag}(p_1,p_2,p_3)\), \(A=\gamma\operatorname{diag}(k_1,k_2,k_3)\), initially \(p=(1,1,1)\), \(k=(1,1,-1/2)\). All vacuum constraints hold. A constant densitized lapse \(\widetilde N=i\) gives \(\dot p=(i/2,i/2,2i)\), hence \(\dot h_{ab}=\operatorname{diag}(2i,2i,-i)\) at that datum, while the complex scalar constraint remains conserved. This is not an internal frame rotation; arbitrary complex multipliers do not define real Lorentzian evolution. The exact homogeneous calculation and its limitations are in the [independent reality report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-ashtekar-20261031-xB1k3D/report.md#L424-L452>).

The real ADM Hamiltonian transported through (5.1), together with its common boundary charges when applicable, supplies the unambiguous reality-preserving reduced evolution. Equations (7.6)–(7.8) show why simply choosing an arbitrary multiplier in the polynomial complex equations is not equivalent. They do not constitute a general boundary differentiability theorem or a full nonlinear boundary constraint-algebra computation.

## 8. An exact obstruction to a stronger spacetime-connection claim

Use Minkowski coordinates \((T,x,y,z)\). For \(a,R>0\), the same spacetime circle

\[
C:\quad T=\sqrt{a^2+R^2},\quad z=0,\quad x^2+y^2=R^2
\]

lies both in a constant-\(T\) plane and in the future hyperboloid \(T^2-r^2=a^2\). The plane has a global Cartesian triad with \(\Gamma=K=0\), so its adjoint holonomy trace is 3.

For the other slice use \(T=\tau\cosh\rho\), \(r=\tau\sinh\rho\) and the tetrad

\[
e^0=d\tau,\quad e^1=\tau d\rho,\quad
 e^2=\tau\sinh\rho\,d\theta,\quad
 e^3=\tau\sinh\rho\sin\theta\,d\varphi.
\tag{8.1}
\]

Solving all Cartan equations gives

\[
K=(d\rho,\sinh\rho\,d\theta,\sinh\rho\sin\theta\,d\varphi),
\qquad
\Gamma=(\cos\theta\,d\varphi,-\cosh\rho\sin\theta\,d\varphi,
\cosh\rho\,d\theta).
\tag{8.2}
\]

The full Lorentz curvature is zero. On \(\tau=a\), \(K^i=e^i/a\), but

\[
F^i(A_\gamma)=\frac{1+\gamma^2}{2a^2}\varepsilon^i{}_{jk}e^je^k.
\tag{8.3}
\]

Along the equatorial loop, \(R=a\sinh\rho\), the connection coefficient is the constant vector \(v=(0,-\cosh\rho,\gamma\sinh\rho)\). Its cross-product matrix satisfies \(v_\times^3=-\lambda^2v_\times\), where

\[
\lambda^2=1+(1+\gamma^2)R^2/a^2.
\]

Exponentiating this constant matrix gives

\[
\boxed{\operatorname{Tr}_{\rm ad}H_{\rm plane}=3,\qquad
\operatorname{Tr}_{\rm ad}H_{\rm hyperboloid}
=1+2\cos\left(2\pi\sqrt{1+(1+\gamma^2)R^2/a^2}\right).}
\tag{8.4}
\]

For any real gamma, choosing \(R/a=\sqrt5/(2\sqrt{1+\gamma^2})\) yields trace \(-1\), not 3. At isolated other radii \(\lambda\in\mathbb Z\), the adjoint holonomy is accidentally the identity; the obstruction requires a counterexample, not nontriviality for every loop. For \(\gamma=\pm i\), (8.3) vanishes and the full loop holonomy is the identity, not merely a matrix with trace 3.

The spherical frame is smooth on an annular neighborhood of this loop and periodic as an \(SO(3)\) frame. Its singularity on the polar axis does not invalidate its loop transport. A spin lift of that rotating frame is antiperiodic: the physical spin holonomy includes its \(-I\) endpoint transition. With this transition the fundamental trace is \(-2\cos(\pi\lambda)\), giving \(+2\) on the plane and at the chiral values. A naive \(+2\cos(\pi\lambda)\) in that frame would omit the spin transition.

If one spacetime connection pulled back, up to the claimed internal gauge transformations, to both slice connections, the holonomy conjugacy class of the same spacetime loop would be the same. Equation (8.4) disproves that assertion for real gamma. It does **not** disprove canonical equivalence, and does not exclude a connection depending additionally on a chosen normal field, or a connection over the bundle of points and timelike normals. The Wilson loop in (8.4) is not a refoliation-invariant observable of Einstein geometry alone. Supplying the curve and its normal lift defines a normal-dependent enlarged observable; it does not remove the demonstrated dependence.

The obstruction also holds for genuine global Cauchy slices of all Minkowski space; it does not rely on the full future hyperboloid being Cauchy (it is not). Choose \(\epsilon>0\), \(L>R+\epsilon\), and a smooth \(c(r)\in[0,1]\) equal to one for \(r\le R+\epsilon\) and zero for \(r\ge L\). Define

\[
f(r)=a+\int_0^r c(s)\frac{s}{\sqrt{a^2+s^2}}\,ds.
\]

The graph \(T=f(|x|)\) agrees with the hyperboloid near the entire loop, is smooth at the origin, is bounded, and satisfies \(|\nabla f|\le L/\sqrt{a^2+L^2}<1\). Along any inextendible causal curve, Minkowski time ranges over all \(\mathbb R\), \(|dx/dT|\le1\), and \(T-f(x(T))\) is strictly increasing with limits \(\pm\infty\). Thus the curve crosses this graph exactly once. The function \(T-f(|x|)\) is in fact a Cauchy temporal function; its level sets form a global foliation. The normal and connection near the loop are unchanged, so (8.4) and the spin transitions survive. This supplied extension received a separate [analytic audit](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/postaudit_barbero_section8_20261031_91f8f9a6.md#L77-L106>).

The chiral exception has an algebraic proof beyond this loop family. Let \(L_i,B_i\) be Lorentz rotations and boosts, with \([L_i,L_j]=\varepsilon_{ij}{}^kL_k\), \([L_i,B_j]=\varepsilon_{ij}{}^kB_k\), and \([B_i,B_j]=-\varepsilon_{ij}{}^kL_k\). The projection defining \(A\) is \(p_\gamma(L_i)=J_i\), \(p_\gamma(B_i)=\gamma J_i\). The rotation and mixed brackets agree automatically, while the boost bracket agrees **if and only if** \(\gamma^2=-1\). Those two projections are the chiral spacetime representations, with the appropriate global Lorentz/spin group chosen separately. Their spin group is \(SL(2,\mathbb C)\), not real \(SU(2)\). In general the curvature identity is

\[
F^i(A_\gamma)=p_\gamma(F(\omega))^i
+\frac{1+\gamma^2}{2}\varepsilon^i{}_{jk}K^jK^k.
\tag{8.5}
\]

There is also an explicit positive result for real gamma. Let \(P\to M\) be the oriented/time-oriented Lorentz frame bundle and \(\mathcal H=P/SO(3)\), the bundle of future unit timelike normals. Regard \(P\to\mathcal H\) as a principal \(SO(3)\) bundle. Then \(\mathscr A_\gamma=p_\gamma(\omega)\) is a genuine connection on it: \(p_\gamma\) is \(SO(3)\)-equivariant and reproduces rotation generators on vertical vectors. No Lorentz Lie-algebra homomorphism is needed for this assertion. Pullback along \(x\mapsto(x,u_\Sigma(x))\) gives the slice Barbero connection. The two hypersurfaces lift the same spacetime loop to **different** loops \((C,u_1)\), \((C,u_2)\) in \(\mathcal H\), so their different holonomies are consistent. Choosing one normal field over spacetime likewise supplies a normal-dependent spacetime reduction, but not the normal-independent property disproved above. This explicit construction was independently developed in the [holonomy review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_barbero_holonomy_20261031_91f8f9a6.md#L379-L473>).

This independently calculated example agrees with the loop-trace formula in [Samuel, arXiv:gr-qc/0005095v3](https://arxiv.org/abs/gr-qc/0005095v3), PDF p. 8 / printed p. 7, (9). The paper's connection parameter corresponds to our gamma at the canonical level, not to our action parameter beta without the conversion (2.2). Its printed surface equation omits \(z^2\); our full hyperboloid is explicitly specified, and the two choices have the same normal and tangent connection on the displayed \(z=0\) loop. Its following generic nonidentity statement needs the isolated-radius qualification just given. No broad quantum claim from that paper is used.

## 9. Verification and remaining questions

The parent [Milne/holonomy implementation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/barbero_milne_holonomy.wl>) and [actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/barbero_milne_holonomy.results.json>) give **14 exact passes**, with no kernel messages: the embedding metric, all four torsions, all Lorentz curvatures, spatial compatibility, extrinsic sign, general gamma curvature, holonomy polynomial, explicit real half-turn, and both chiral limits. The proof of the no-go statement is analytic, not an inference from sampled holonomies.

Three fresh independent investigations are collected: the real boundary/ADM suite has **21 exact passes**, the separate holonomy suite **26 exact passes**, and both Ashtekar residual suites have all labelled residuals zero, no failed/aborted expressions, and empty messages. The parent read their mathematical implementations, complete result reports, and raw diagnostics. The [review record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>) and [verification index](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/README.md>) distinguish initial independent derivation from the three subsequent scoped supplied-text audits. Requested chart, corner-normal/stabilizer, lapse-polynomiality, and no-go wording clarifications are incorporated. The independent real report also labels its own off-shell wall-tensor terminology correction; no parent formula or passed calculation needed changing for it. The source-version audit is recorded separately in [source evidence](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/sources/Source evidence.md>).

**Verified:** the boundary identity and its nonexactness; the action sign conversion; real inverse and finite frame relations; normalized ADM bridge; chiral real-slice pullback; constraint correspondence; nonreal constraint datum; the flat-lapse reality test; the spacetime-connection counterexample.

**Assumptions:** nondegenerate fixed-orientation triads, time-oriented compatible frame domain, nonzero gamma, specified free-frame Dirichlet wall/corner data and common caps, appropriate convergence, and common geometric cut-wall data. Complex claims use the stated real slice and conjugation-compatible chart. Hamiltonian local tests have closed cuts or compactly supported smearing.

**Conditional/open:** a general timelike Einstein initial-boundary-value quotient; complete nonlinear boundary generators and their finite refoliation relation; all degenerate or complex-global strata; independent quantization of the selfdual reality conditions; unitary implementability, measures, regulators, operator ordering, and boundary Hilbert spaces. Classically, \(\gamma\) disappears from the specified completed real form. This does not identify quantum representations or determine an inner product satisfying the nonlinear adjointness condition \(\widehat A^\dagger=2\widehat{\Gamma(E)}-\widehat A\). The next quantum comparison should start in the already closed AdS3 vacuum sector, not infer quantum equivalence here from a canonical change of variables.
