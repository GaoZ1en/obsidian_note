# CPS-based quantum perturbation theory: complete formalism v1

日期：2026-07-09

## 0. Direct verdict

Correct under the following precise conditions:

1. The free variational problem has a well-defined covariant phase space after imposing boundary conditions or adding boundary/edge degrees of freedom.
2. The free linearized operator is Green-hyperbolic, or becomes Green-hyperbolic after a specified boundary condition or gauge fixing.
3. The inverse of the free CPS symplectic form is the Peierls causal propagator \(E=E_R-E_A\).
4. A Hadamard two-point function or equivalent microlocal normal-ordering prescription has been chosen.
5. The time-ordered products \(T_n^{\rm ren}\) are renormalized with locality, covariance, causal factorization, unitarity, field independence, and the Action Ward Identity, up to known anomalies.
6. Gauge theories and gravity are treated in BV-BRST language; the unreduced CPS form is presymplectic and cannot be inverted directly.

Under these conditions the correct object is not just the classical solution map

\[
p_g:\mathcal S_0\to\mathcal S_g .
\]

The correct quantum object is the Bogoliubov interacting observable

\[
R_V(F)
=\frac{\hbar}{i}
\left.
\frac{d}{d\lambda}
\left[
S(V)^{-1}_\star\star S(V+\lambda F)
\right]
\right|_{\lambda=0},
\qquad
S(V)=\exp_T\left(\frac{i}{\hbar}V\right).
\]

The old tree diagrammatics is still useful, but it is only

\[
R_V(F)\big|_{\hbar^0}.
\]

Loops, counterterms, Ward identities, and anomalies enter through the \(\star\)-product, the renormalized time-ordered products, and the renormalized currents.

The whole program is therefore:

\[
\boxed{
\text{CPS}
\to
\text{free CCR/CAR algebra}
\to
\text{renormalized }T\text{-products}
\to
\text{Bogoliubov }R_V
\to
\text{Ward identities/anomalies}
}.
\]

## 1. Data of the theory

The input is a local field theory on a spacetime \(M\), possibly with boundary:

\[
\mathfrak D
=
\left(
M,\mathcal E,L,\mathcal B,L_{\partial},G
\right).
\]

Here:

1. \(\mathcal E\to M\) is the field bundle.
2. \(L\) is the bulk Lagrangian density.
3. \(\mathcal B\) is the boundary condition or asymptotic condition.
4. \(L_{\partial}\) is a boundary/counterterm density when needed.
5. \(G\) is the group of continuous global, gauge, or asymptotic symmetries under discussion.

The first variation is

\[
\delta L
=
\mathcal E_i(\phi)\,\delta\phi^i
+
d\theta(\phi;\delta\phi).
\]

The presymplectic current is

\[
\omega(\phi;\delta_1\phi,\delta_2\phi)
=
\delta_1\theta(\phi;\delta_2\phi)
-
\delta_2\theta(\phi;\delta_1\phi).
\]

For a Cauchy surface or admissible hypersurface \(\Sigma\),

\[
\Omega_\Sigma
=
\int_\Sigma \omega
+\Omega_{\partial\Sigma}.
\]

The boundary term \(\Omega_{\partial\Sigma}\) is optional only when the boundary symplectic flux vanishes. If the boundary condition allows nonzero flux, one must either:

1. fix the boundary source strongly enough that the flux vanishes;
2. enlarge the phase space by edge/boundary modes;
3. keep an open-system flux term;
4. or declare that no closed CPS quantization has been defined.

This is the first place where "arbitrary background" is constrained. The formalism is background-covariant, but it is not background-blind.

## 2. Classical CPS and the Peierls kernel

Split the action as

\[
S[\phi]=S_0[\phi]+V[\phi],
\]

where \(S_0\) is quadratic around the chosen background. Let \(P\) be the free Euler-Lagrange operator:

\[
P_{ij}\phi^j=0.
\]

Assume the boundary condition \(\mathcal B\) gives retarded and advanced Green operators:

\[
P E_R=P E_A=\mathrm{id},
\qquad
\mathrm{supp}(E_R f)\subset J^+(\mathrm{supp}f),
\qquad
\mathrm{supp}(E_A f)\subset J^-(\mathrm{supp}f),
\]

with the corresponding boundary behavior. Define

\[
E:=E_R-E_A.
\]

For gauge-free bosonic theories, the linear CPS symplectic form is weakly nondegenerate and

\[
\Omega_0^{-1}=E.
\]

Equivalently, for functionals \(F,G\),

\[
\{F,G\}_{\rm P}
=
\left\langle F^{(1)},E\,G^{(1)}\right\rangle.
\]

For smeared fields,

\[
\Phi(f)=\int_M f_i\phi^i,
\qquad
\{\Phi(f),\Phi(g)\}_{\rm P}=E(f,g).
\]

This identity is the bridge from CPS to quantization. If it fails, the later quantum algebra has not been normalized correctly.

## 3. Free quantum algebra

Choose a Hadamard two-point function or parametrix \(H\) such that

\[
H(x,y)-H(y,x)=iE(x,y).
\]

Then define the Wick product

\[
F\star_H G
=
m\circ
\exp\left[
\hbar
\left\langle
H,
\frac{\delta}{\delta\phi}\otimes
\frac{\delta}{\delta\phi}
\right\rangle
\right]
(F\otimes G).
\]

The normalization condition is

\[
[\Phi(f),\Phi(g)]_{\star_H}
=
i\hbar E(f,g).
\]

Important distinction:

1. \(\Omega_0\) fixes \(E\).
2. \(E\) fixes the commutator.
3. \(H\) fixes a Wick ordering or state-dependent positive-frequency splitting.
4. Different \(H\)'s give isomorphic local algebras but different normal-ordering representatives.

For fermions, replace the symplectic form by the graded CPS pairing and replace CCR by CAR:

\[
\{\Psi(f),\overline\Psi(g)\}_\star
=
i\hbar\langle f,Sg\rangle,
\]

where \(S=S_R-S_A\) is the causal Dirac propagator.

## 4. Renormalized time-ordered products

The free algebra is not yet an interacting quantum field theory. The next input is a family of renormalized time-ordered products

\[
T_n^{\rm ren}(F_1,\ldots,F_n).
\]

For separated supports these are determined by Feynman contractions. For local functionals with coincident points, they require extension to the diagonal. The allowed extension freedom is local and is precisely the counterterm freedom.

The required conditions are:

1. causal factorization;
2. microlocal spectrum condition;
3. locality and covariance on curved backgrounds;
4. unitarity;
5. graded symmetry;
6. field independence;
7. Action Ward Identity;
8. compatibility with boundary conditions when a boundary is present.

Define

\[
F\cdot_T G:=T_2^{\rm ren}(F,G)
\]

and

\[
S(V)
=
\exp_T\left(\frac{i}{\hbar}V\right)
=
\sum_{n\ge0}
\frac{1}{n!}
\left(\frac{i}{\hbar}\right)^n
T_n^{\rm ren}(V^{\otimes n}).
\]

The \(T_n^{\rm ren}\) layer is where:

1. UV divergences are removed;
2. composite fields such as \(\phi^2\), \(T^{\mu\nu}\), and \(j^\mu\) are defined;
3. loop corrections appear;
4. Ward identities can fail by local anomalies.

## 5. Interacting observables

For compactly supported interaction \(V\), or a switched interaction \(V_\chi\), define the relative \(S\)-matrix

\[
S_V(F)
=
S(V)^{-1}_\star\star S(V+F).
\]

The interacting observable is

\[
R_V(F)
=
\frac{\hbar}{i}
\left.
\frac{d}{d\lambda}
S_V(\lambda F)
\right|_{\lambda=0}.
\]

Equivalently,

\[
R_V(F)
=
\sum_{n\ge0}
\frac{1}{n!}
\left(\frac{i}{\hbar}\right)^n
R_n(V^{\otimes n};F),
\]

where \(R_n\) are the retarded products determined by the \(T_n^{\rm ren}\) and the \(\star\)-inverse of \(S(V)\).

This formula has three simultaneous meanings:

1. As a formal power series in coupling constants.
2. As a formal power series in \(\hbar\), whose \(\hbar^0\) part is classical.
3. As a locality statement: \(R_V(F)\) depends on \(V\) only in the causal past of \(\mathrm{supp}\,F\).

The interacting field equation is not an equation for bare pointwise products. It is a renormalized operator identity:

\[
R_V\left(
\left\langle\frac{\delta S_0}{\delta\phi},f\right\rangle
+
\left\langle\frac{\delta V}{\delta\phi},f\right\rangle
\right)
=0
\]

up to local counterterms and cutoff-breaking terms. With the Action Ward Identity imposed, this becomes the usual renormalized quantum equation of motion.

## 6. Classical limit and tree diagrams

Let \(r_V\) be the classical retarded Moller map from free configurations to interacting configurations. Then

\[
R_V(F)
=
F\circ r_V
+O(\hbar).
\]

Thus

\[
R_V(F)\big|_{\hbar^0}
=
F(\phi_{\rm ret}).
\]

For a scalar potential interaction

\[
V[\phi]
=
-\int_M d\mu_g\,
\left[
\frac{g_3}{3!}\phi^3
+
\frac{g_4}{4!}\phi^4
\right],
\]

the classical retarded solution satisfies

\[
P\phi_{\rm ret}
=
\frac{g_3}{2}\phi_{\rm ret}^2
+
\frac{g_4}{3!}\phi_{\rm ret}^3,
\]

or

\[
\phi_{\rm ret}(x)
=
\phi_0(x)
+
\int_M d\mu_g(y)\,
E_R(x,y)
\left[
\frac{g_3}{2}\phi_{\rm ret}(y)^2
+
\frac{g_4}{3!}\phi_{\rm ret}(y)^3
\right].
\]

Iterating this equation gives rooted retarded trees:

1. root: the observed field point or functional derivative of \(F\);
2. internal line: \(E_R\);
3. vertex: \(-\delta V/\delta\phi\), equivalently the source term in the EOM;
4. leaves: free solutions \(\phi_0\).

This is not the same object as the full quantum Feynman expansion. The relation is:

\[
\text{rooted retarded trees}
=
\hbar^0\text{ part of }R_V(F),
\]

whereas

\[
\text{Feynman diagrams}
=
\text{expansion of }S(V),T\text{-correlators, and states}.
\]

On shell, after LSZ or the appropriate AdS/boundary extraction, both descriptions reproduce the same tree-level physical amplitudes when their normalizations and boundary conditions agree.

## 7. Perturbative symplectic normalization

Suppose the interacting solution is expanded as

\[
\phi[a;g]
=
\phi_0[a]
+
\sum_{n\ge1}g^n\phi_n[a],
\]

where \(a\) denotes free solution coordinates or free mode coefficients. The interacting CPS form also expands:

\[
\Omega_g
=
\Omega_0
+
\sum_{n\ge1}g^n\Omega_n.
\]

The correct normalization condition is not chosen by hand. It is

\[
p_g^*\Omega_g
=
\Omega_0
\]

if \(p_g:a\mapsto\phi[a;g]\) is the retarded Moller map used as a canonical coordinate chart.

Order by order this means, for two tangent vectors \(\delta_1,\delta_2\),

\[
\Omega_1(\delta_1\phi_0,\delta_2\phi_0)
+
\Omega_0(\delta_1\phi_1,\delta_2\phi_0)
+
\Omega_0(\delta_1\phi_0,\delta_2\phi_1)
=0
\]

For non-derivative potential interactions in fixed backgrounds, \(\theta\) often has no explicit interaction correction, so the pullback condition is satisfied by retarded initial-data normalization. For derivative interactions, gravity, boundary terms, or field redefinitions, the higher \(\Omega_n\) terms are essential and must be kept.

Quantum normalization then follows from

\[
[\hat a_\alpha,\hat a_\beta^\dagger]
=
\delta_{\alpha\beta}
\]

or the appropriate continuous delta function. Scattering external legs additionally require the LSZ residue or its curved/boundary analogue. Composite operators and currents require independent renormalization constants.

## 8. Symmetries, charges, and Ward identities

Let \(X_\lambda\) be a classical symmetry vector on field space:

\[
X_\lambda
=
\int_M d^dx\,
\delta_\lambda\phi^i(x)
\frac{\delta}{\delta\phi^i(x)}.
\]

If the CPS form is nondegenerate and the charge exists, then

\[
\delta Q_\lambda
=
\iota_{X_\lambda}\Omega
\]

up to boundary and improvement terms. In the free quantum algebra this becomes

\[
\delta_\lambda F
=
\frac{i}{\hbar}[Q_\lambda^{(0)},F]_{\star}
\]

for observables \(F\) in the domain of the charge.

For the interacting theory, the current must be renormalized:

\[
j^\mu_{\lambda,V,{\rm ren}}
=
R_V(j^\mu_\lambda)
+
j^\mu_{\lambda,{\rm ct}}
+
j^\mu_{\lambda,\partial}.
\]

The integrated charge is

\[
Q_{\lambda,V}^{\rm ren}[\Sigma]
=
\int_\Sigma d\Sigma_\mu\,j^\mu_{\lambda,V,{\rm ren}}
+Q_{\lambda,\partial}.
\]

The quantum Ward identity has the schematic form

\[
\delta_\lambda R_V(F)
=
\frac{i}{\hbar}
[Q_{\lambda,V}^{\rm ren},R_V(F)]_\star
+
\mathcal A_\lambda(F)
+
\mathcal B_\lambda(F;\chi,\partial M).
\]

Here:

1. \(\mathcal A_\lambda\) is a genuine local anomaly, a cohomologically nontrivial obstruction to satisfying the Ward identity.
2. \(\mathcal B_\lambda\) is explicit breaking by switching functions, boundary flux, or imposed boundary conditions.
3. Counterterm ambiguities can move trivial local terms between the current and the Ward identity, but cannot remove a nontrivial anomaly.

If \(\mathcal A_\lambda=0\) and \(\mathcal B_\lambda=0\), the symmetry is quantum implemented. If not, the formalism tells us precisely where the failure lives.

## 9. Gauge theory and gravity: BV-BRST completion

For gauge theory and gravity the CPS form on unreduced fields is presymplectic. Therefore the statement

\[
\Omega^{-1}=E
\]

is false before reduction or gauge fixing. The correct completion is BV-BRST.

The BV field space contains fields, ghosts, antifields, and possibly antighosts/Nakanishi-Lautrup fields:

\[
\Phi^A=(\phi^i,c^\alpha,\phi_i^+,c_\alpha^+,\ldots).
\]

It carries an odd BV symplectic form and antibracket \((\cdot,\cdot)\). The classical BV action satisfies

\[
(S_{\rm BV},S_{\rm BV})=0.
\]

The BRST differential is

\[
sF=(S_{\rm BV},F).
\]

After gauge fixing, the free kinetic operator on the BV complex must be Green-hyperbolic. One then constructs:

1. the free graded algebra;
2. BRST-invariant time-ordered products;
3. interacting observables as BRST cohomology classes;
4. quantum Ward identities from the Master Ward Identity or Quantum Master Equation.

The anomaly is a ghost-number-one local cohomology class:

\[
s\Gamma_{\rm ren}
=
\hbar\,\mathcal A
+O(\hbar^2),
\qquad
s\mathcal A=0,
\qquad
\mathcal A\not=sB.
\]

For gravity, diffeomorphism charges require extra care:

1. pure gauge parameters vanish at the boundary and act trivially on physical cohomology;
2. asymptotic or corner-preserving parameters can generate nonzero boundary charges;
3. the charge algebra can acquire boundary extensions or anomalies;
4. the perturbative vector field may itself have a coupling or background expansion.

Thus the scalar formalism is not wrong for gravity, but it is incomplete unless lifted to BV-BRST plus boundary CPS.

## 10. Boundaries and AdS

AdS and finite-boundary problems require a boundary-compatible version of every previous layer.

The classical variational problem must be fixed first:

1. choose standard, alternative, mixed, Robin, or more general boundary condition;
2. add holographic or variational counterterms to make \(\delta S\) well-defined;
3. compute the renormalized symplectic current;
4. impose vanishing symplectic flux, or add boundary/edge modes;
5. construct \(E_R^{\mathcal B}\), \(E_A^{\mathcal B}\), and \(E^{\mathcal B}\).

Only then can one define

\[
[\Phi(f),\Phi(g)]_\star
=
i\hbar E^{\mathcal B}(f,g).
\]

The Hadamard and time-ordering layer must also respect the boundary:

1. \(H^{\mathcal B}\) must have the correct short-distance Hadamard singularity and boundary condition.
2. \(T_n^{\rm ren,\mathcal B}\) require bulk local counterterms and, generally, boundary local counterterms.
3. Boundary composite operators and boundary currents may mix with bulk operators.
4. Ward identities can contain boundary flux or boundary anomalies.

For global AdS, the free spectrum is discrete. For a scalar in global AdS3 with standard quantization,

\[
\omega_{n,m}
=
\Delta+2n+|m|.
\]

Finite-time retarded tree perturbation theory works exactly as before, with \(E_R^{\rm AdS}\) replacing the flat retarded Green function. The long-time expansion is more delicate because integer-spaced frequencies produce resonances. A source at a resonant frequency creates secular terms. Therefore:

1. finite-time \(R_V(F)|_{\hbar^0}\) is the retarded tree expansion;
2. long-time dressed normal modes require Poincare-Lindstedt or resonant normal form;
3. the quantum \(R_V\) layer must be built after choosing the AdS boundary algebra and boundary-compatible \(T_n^{\rm ren}\);
4. a holographic dictionary requires an additional boundary extraction map, not just the bulk CPS algebra.

## 11. Arbitrary spacetime backgrounds

The formalism is local and covariant, but the answer to "does it apply on arbitrary backgrounds?" is:

Correct under the following precise conditions:

1. The background plus boundary condition gives a Green-hyperbolic free operator.
2. A Hadamard parametrix or state exists.
3. The renormalized time-ordered products can be chosen locally and covariantly.
4. The symmetry vector preserves the boundary/asymptotic structure.
5. Gauge degeneracies have been treated by reduction or BV-BRST.

What fails on a generic background is not the local algebraic formalism, but extra structures such as:

1. a preferred vacuum;
2. particle interpretation;
3. global scattering matrix;
4. adiabatic limit;
5. time-independent Hamiltonian spectrum.

Therefore local interacting observables \(R_V(F)\) are more fundamental than an \(S\)-matrix on curved or bounded backgrounds.

## 12. Practical computation pipeline

The actual workflow should be:

1. Define the variational problem: \(L\), boundary terms, allowed field space, and symmetry group.
2. Compute \(\theta\), \(\omega\), and \(\Omega_\Sigma\); verify boundary flux or add edge terms.
3. Linearize and construct \(E_R,E_A,E\) with the chosen boundary condition.
4. Check that \(\Omega^{-1}=E\) in the physical or gauge-fixed sector.
5. Choose \(H\) and build the free \(\star_H\)-algebra.
6. Specify the interaction \(V_\chi\) with compact support or controlled cutoff.
7. Choose \(T_n^{\rm ren}\), including composite-field and boundary counterterms.
8. Define \(S(V)\), \(S_V(F)\), and \(R_V(F)\).
9. Extract the classical tree limit by taking \(\hbar^0\).
10. Extract quantum corrections by counting contractions and counterterms.
11. Construct currents as \(j_{\lambda,V}^{\rm ren}=R_V(j_\lambda)+j_{\rm ct}+j_{\partial}\).
12. Test Ward identities and identify \(\mathcal A_\lambda\) or boundary flux.
13. Only after these steps take an adiabatic limit, LSZ limit, or AdS boundary limit.

This pipeline prevents the common mistake of importing flat-space Feynman rules before proving that the CPS/boundary problem has supplied the correct causal kernel.

## 13. Minimal scalar benchmark

For 4d flat real scalar

\[
V
=
-\int d^4x\,\chi(x)
\left(
\frac{g_3}{3!}\phi^3
+
\frac{g_4}{4!}\phi^4
\right),
\]

the EOM convention is

\[
K\phi
=
\frac{g_3}{2}\phi^2
+
\frac{g_4}{3!}\phi^3,
\qquad
K=\Box-m^2.
\]

The first retarded correction is

\[
\phi_1(x)
=
\int d^4z\,
E_R(x,z)\chi(z)
\left(
\frac{g_3}{2}\phi_0(z)^2
+
\frac{g_4}{3!}\phi_0(z)^3
\right).
\]

This equals \(R_V(\phi(x))|_{\hbar^0}\) to first order and iterates to all rooted trees.

The same \(S(V)\) gives the standard tree four-point amplitude

\[
\mathcal M_4^{\rm tree}
=
-g_4
-g_3^2
\left[
\frac{1}{s-m^2}
+
\frac{1}{t-m^2}
+
\frac{1}{u-m^2}
\right],
\]

with the usual \(i\epsilon\) prescription.

The two-point Schwinger-Dyson identity is schematically

\[
K_xG_2(x,y)
=
i\hbar\delta^{(4)}(x-y)
+
\omega\left(
T\,R_V\left[
\frac{g_3}{2}\phi(x)^2
+
\frac{g_4}{3!}\phi(x)^3
\right]
R_V(\phi(y))
\right)
+{\rm ct}.
\]

The \(\phi^4\) tadpole and \(\phi^3\) bubble terms are produced by \(T_n^{\rm ren}\) and \(\star\)-contractions. They are not present in the classical tree solution.

## 14. Minimal symmetry benchmarks

For flat scalar translations, the CPS charge relation

\[
\delta P_\xi=\iota_{X_\xi}\Omega
\]

becomes

\[
\frac{i}{\hbar}[P_\xi^{(0)},\phi(x)]_\star
=
\xi^\mu\partial_\mu\phi(x).
\]

The interacting stress tensor must be renormalized:

\[
T_{V,\chi}^{\mu\nu}
=
R_V(T^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\]

With compact switching,

\[
\partial_\mu T_{V,\chi}^{\mu\nu}
=
-(\partial^\nu\chi)\mathcal L_{{\rm int},V}
+{\rm contact}
+{\rm ct}.
\]

After the controlled adiabatic limit in flat scalar theory,

\[
\mathcal A_{\rm translation}=0.
\]

For complex \(\phi^4\), with

\[
X_\alpha\phi=i\alpha\phi,
\qquad
X_\alpha\phi^*=-i\alpha\phi^*,
\]

the CPS charge generates

\[
\frac{i}{\hbar}[Q_\alpha,\phi]_\star=i\alpha\phi,
\qquad
\frac{i}{\hbar}[Q_\alpha,\phi^*]_\star=-i\alpha\phi^*.
\]

The scalar vector \(U(1)\) Ward identity can be renormalized with

\[
\mathcal A_{U(1)}=0.
\]

For a 4d Dirac fermion in a background \(U(1)\) gauge field, the axial current has the ABJ anomaly:

\[
\partial_\mu j_{5,{\rm ren}}^\mu
=
2im\,\bar\psi\gamma_5\psi
+
\frac{q^2}{16\pi^2}
F_{\mu\nu}\widetilde F^{\mu\nu}.
\]

This is the prototype for a nonzero \(\mathcal A_\lambda\). It is a failure of the renormalized Ward identity, not a failure of the free CPS algebra.

## 15. Status of the program

The scalar/global-symmetry part is internally consistent:

1. Classical rooted trees are \(R_V|_{\hbar^0}\).
2. Flat \(\phi^3/\phi^4\) scattering is reproduced at tree level.
3. Tadpoles, bubbles, and Schwinger-Dyson contact terms occur at the \(T_n^{\rm ren}\) layer.
4. Translation and scalar \(U(1)\) charges are correctly generated from \(\delta Q=\iota_X\Omega\).
5. ABJ supplies a genuine anomaly example at the background-field level.
6. Global AdS3 exposes the correct finite-time versus long-time distinction.

For the current v1 goal, this is enough to call the scalar/CPS-pAQFT formalism usable: the object chain is defined, the flat \(\phi^3/\phi^4\) scattering and correlator checks have been used to repair the formalism, and the CPS symplectic form enters through \(E\), CCR/CAR, mode normalization, and charge normalization.

This does not claim that every gauge, gravity, and AdS boundary problem is solved. The next-stage research gates are sharply identified:

1. Full BV-BRST implementation for dynamical gauge theory and gravity.
2. Boundary-compatible renormalized time-ordered products for AdS/CPS.
3. A precise treatment of boundary charges, edge modes, and possible charge algebra extensions.
4. A connection between global AdS resonant normal form and the quantum \(R_V\) layer.
5. Concrete gravitational examples where the perturbative CPS vector field and charge normalization are checked off shell.

## 16. How to use this formalism in later notes

When applying the formalism to a new example, every claim should be labeled as one of:

1. **Classical CPS:** statement about \(\Omega\), \(E\), Peierls brackets, or retarded trees.
2. **Free quantum algebra:** statement about \(\star_H\), CCR/CAR, or mode normalization.
3. **Renormalized quantum layer:** statement about \(T_n^{\rm ren}\), composite fields, loops, or counterterms.
4. **Ward/charge layer:** statement about \(Q_{\lambda,V}^{\rm ren}\), current conservation, anomaly, or boundary flux.
5. **Limit/extraction:** statement about LSZ, adiabatic limit, AdS boundary limit, or long-time normal form.

This labeling is not cosmetic. It prevents category errors such as:

1. treating a classical rooted tree as a quantum loop expansion;
2. deriving an anomaly from the classical solution map;
3. using a flat-space propagator before solving the CPS boundary problem;
4. quantizing a gauge presymplectic form without BV reduction;
5. normalizing charges without checking \(\delta Q=\iota_X\Omega\).

## 17. References and local companion notes

Companion notes in this output directory:

1. `cps_paqft_quantum_perturbation_formalism.md`
2. `cps_paqft_goal_completion_audit.md`
3. `flat4_phi3_phi4_paqft_check.md`
4. `flat4_phi3_phi4_quantum_eom_ward_check.md`
5. `flat4_phi3_phi4_stress_tensor_charge_check.md`
6. `flat4_complex_phi4_u1_current_check.md`
7. `flat4_abj_anomaly_cps_paqft_check.md`
8. `global_ads3_interacting_scalar_tree_cps.md`
9. `tree_cps_pipeline_note.md`
10. `2606_24442_higher_order_cps_check.md`

External references:

1. K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
2. M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
3. R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599.
4. S. Hollands and R. M. Wald, *Axiomatic quantum field theory in curved spacetime*, arXiv:0803.2003, https://arxiv.org/abs/0803.2003
5. S. Hollands, *The operator product expansion for perturbative quantum field theory in curved spacetime*, arXiv:gr-qc/0605072, https://arxiv.org/abs/gr-qc/0605072
