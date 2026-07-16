# CPS-pAQFT consistency backend for canonical perturbation theory

日期：2026-07-09

## 0. Direct verdict

This note is a conceptual and consistency backend, not the default computational pipeline. Concrete scalar calculations are performed with the CPS-normalized canonical/Wick pipeline in `../cps canonical quantization to loop corrections.md`.

Physical formulas in the worked examples use $\hbar=1$. Explicit powers of $\hbar$ are retained below only as a formal grading that distinguishes the classical sector from loop sectors; they are set to one after the graph order has been identified. The boundary condition $\mathcal B$, together with the boundary action and allowed field space, is theory data rather than a late prescription. Gauge theory, BV-BRST, and dynamical gravity are outside the present scope.

Correct under the following precise conditions:

1. The bulk and boundary actions together with $\mathcal B$ define a closed free covariant phase space with vanishing symplectic flux on allowed variations.
2. The free linearized operator is Green-hyperbolic on the domain selected by $\mathcal B$.
3. The inverse of the free CPS symplectic form is the Peierls causal propagator \(E=E_R-E_A\).
4. A Hadamard two-point function or equivalent microlocal normal-ordering prescription has been chosen.
5. The time-ordered products \(T_n^{\rm ren}\) are renormalized with locality, covariance, causal factorization, unitarity, field independence, and the Action Ward Identity, up to known anomalies.
6. The present theory is gauge-free matter on a fixed background. Gauge theories, BV-BRST, and dynamical gravity are deferred rather than included in this formalism.

Under these conditions the Bogoliubov map supplies a backend definition of interacting observables that is more precise than the classical solution map alone,

$$\begin{align}
p_g:\mathcal S_0\to\mathcal S_g .
\end{align}$$

namely the Bogoliubov interacting observable

$$\begin{align}
R_V(F) =\frac{\hbar}{i} \left. \frac{d}{d\lambda} \left[ S(V)^{-1}_\star\star S(V+\lambda F) \right] \right|_{\lambda=0}, \qquad S(V)=\exp_T\left(\frac{i}{\hbar}V\right).
\end{align}$$

The retarded tree diagrammatics is recovered as the formal classical sector

$$\begin{align}
R_V(F)\big|_{\hbar^0}.
\end{align}$$

Loops, counterterms, Ward identities, and anomalies enter through the $\star$-product, the renormalized time-ordered products, and the renormalized currents. This object chain constrains the canonical calculation; it does not replace Wick contractions, mode sums, or spectral integrals as the practical method.

The backend consistency chain is therefore:

$$\begin{align}
\boxed{ \text{CPS/Peierls data} \to \text{free algebra} \to T_n^{\rm ren} \to R_V \to \text{EOM and Ward consistency checks}
}.
\end{align}$$

## 1. Data of the theory

The input is a local field theory on a spacetime \(M\), possibly with boundary:

$$\begin{align}
\mathfrak D = \left( M,\mathcal E,L,\mathcal B,L_{\partial},G \right).
\end{align}$$

Here:

1. \(\mathcal E\to M\) is the field bundle.
2. \(L\) is the bulk Lagrangian density.
3. \(\mathcal B\) is the boundary condition or asymptotic condition.
4. \(L_{\partial}\) is a boundary/counterterm density when needed.
5. $G$ is the group of continuous global symmetries under discussion in the present scope.

Changing $\mathcal B$ changes the allowed configurations, symplectic flux, Green operators, spectrum, and quantum algebra; it therefore changes the theory. In the present fixed-boundary scalar scope, the admissible choice is one for which the closed CPS exists without adding dynamical edge degrees of freedom.

The first variation is

$$\begin{align}
\delta L = \mathcal E_i(\phi)\,\delta\phi^i + d\theta(\phi;\delta\phi).
\end{align}$$

The presymplectic current is

$$\begin{align}
\omega(\phi;\delta_1\phi,\delta_2\phi) = \delta_1\theta(\phi;\delta_2\phi) - \delta_2\theta(\phi;\delta_1\phi).
\end{align}$$

For a Cauchy surface or admissible hypersurface \(\Sigma\),

$$\begin{align}
\Omega_\Sigma = \int_\Sigma \omega +\Omega_{\partial\Sigma}.
\end{align}$$

The boundary term \(\Omega_{\partial\Sigma}\) is optional only when the boundary symplectic flux vanishes. If the boundary condition allows nonzero flux, one must either:

1. fix the boundary source strongly enough that the flux vanishes;
2. enlarge the phase space by edge/boundary modes;
3. keep an open-system flux term;
4. or declare that no closed CPS quantization has been defined.

Only the first, closed fixed-boundary option is used in the present scope. Edge-mode and open-system extensions are listed only to diagnose when the scalar pipeline does not apply.

This is the first place where "arbitrary background" is constrained. The formalism is background-covariant, but it is not background-blind.

## 2. Classical CPS and the Peierls kernel

Split the action as

$$\begin{align}
S[\phi]=S_0[\phi]+V[\phi],
\end{align}$$

where \(S_0\) is quadratic around the chosen background. Let \(P\) be the free Euler-Lagrange operator:

$$\begin{align}
P_{ij}\phi^j=0.
\end{align}$$

Assume the boundary condition \(\mathcal B\) gives retarded and advanced Green operators:

$$\begin{align}
P E_R=P E_A=\mathrm{id}, \qquad \mathrm{supp}(E_R f)\subset J^+(\mathrm{supp}f), \qquad \mathrm{supp}(E_A f)\subset J^-(\mathrm{supp}f),
\end{align}$$

with the corresponding boundary behavior. Define

$$\begin{align}
E:=E_R-E_A.
\end{align}$$

For gauge-free bosonic theories, the linear CPS symplectic form is weakly nondegenerate and

$$\begin{align}
\Omega_0^{-1}=E.
\end{align}$$

Equivalently, for functionals \(F,G\),

$$\begin{align}
\{F,G\}_{\rm P} = \left\langle F^{(1)},E\,G^{(1)}\right\rangle.
\end{align}$$

For smeared fields,

$$\begin{align}
\Phi(f)=\int_M f_i\phi^i, \qquad \{\Phi(f),\Phi(g)\}_{\rm P}=E(f,g).
\end{align}$$

This identity is the bridge from CPS to quantization. If it fails, the later quantum algebra has not been normalized correctly.

The Bogoliubov map is first defined off shell. Let $\mathcal I_0$ be the ideal generated by

$$\begin{align}
F_f(\phi)=\langle P\phi,f\rangle
\end{align}$$

on the boundary-compatible domain. The free on-shell algebra is

$$\begin{align}
\mathfrak A_0^{\rm on}=\mathfrak A_0^{\rm off}/\mathcal I_0.
\end{align}$$

On the same domain, $E^{\mathcal B}$ maps compact test data modulo the image of $P$ to the corresponding CPS tangent solutions. This quotient is the step that later turns the off-shell field-equation identity into a vanishing on-shell identity.

## 3. Free quantum algebra

Choose a Hadamard two-point function or parametrix \(H\) such that

$$\begin{align}
H(x,y)-H(y,x)=iE(x,y).
\end{align}$$

Then define the Wick product

$$\begin{align}
F\star_H G = m\circ \exp\left[ \hbar \left\langle H, \frac{\delta}{\delta\phi}\otimes \frac{\delta}{\delta\phi} \right\rangle \right] (F\otimes G).
\end{align}$$

The normalization condition is

$$\begin{align}
[\Phi(f),\Phi(g)]_{\star_H} = i\hbar E(f,g).
\end{align}$$

Important distinction:

1. \(\Omega_0\) fixes \(E\).
2. \(E\) fixes the commutator.
3. \(H\) fixes a Wick ordering or state-dependent positive-frequency splitting.
4. Different \(H\)'s give isomorphic local algebras but different normal-ordering representatives.

For fermions, replace the symplectic form by the graded CPS pairing and replace CCR by CAR:

$$\begin{align}
\{\Psi(f),\overline\Psi(g)\}_\star = i\hbar\langle f,Sg\rangle,
\end{align}$$

where \(S=S_R-S_A\) is the causal Dirac propagator.

## 4. Renormalized time-ordered products

The free algebra is not yet an interacting quantum field theory. The next input is a family of renormalized time-ordered products

$$\begin{align}
T_n^{\rm ren}(F_1,\ldots,F_n).
\end{align}$$

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

$$\begin{align}
F\cdot_T G:=T_2^{\rm ren}(F,G)
\end{align}$$

and

$$\begin{align}
S(V) = \exp_T\left(\frac{i}{\hbar}V\right) = \sum_{n\ge0} \frac{1}{n!} \left(\frac{i}{\hbar}\right)^n T_n^{\rm ren}(V^{\otimes n}).
\end{align}$$

The \(T_n^{\rm ren}\) layer is where:

1. UV divergences are removed;
2. composite fields such as \(\phi^2\), \(T^{\mu\nu}\), and \(j^\mu\) are defined;
3. loop corrections appear;
4. Ward identities can fail by local anomalies.

### 4.1 Split and finite-renormalization consistency

The split $S=S_0+V$ is a computational choice, not additional physical data. For any boundary-compatible local quadratic functional $Q$,

$$\begin{align}
S_0+V=(S_0+Q)+(V-Q).
\end{align}$$

The Principle of Perturbative Agreement requires the two perturbative descriptions to be related by the canonical comparison map after the same physical renormalization conditions have been imposed. This is the backend check behind treating a local mass insertion either perturbatively or through a shifted free propagator.

Likewise, two admissible prescriptions for time-ordered products differ by a local finite-renormalization map $Z$ of Stueckelberg-Petermann type, schematically

$$\begin{align}
\widehat S(V)=S(Z(V)).
\end{align}$$

Predictions can be compared only after the couplings, bulk and boundary counterterms, and composite-operator normalizations are matched. These are consistency requirements; the actual loop integrals remain in the canonical pipeline.

## 5. Interacting observables

For compactly supported interaction \(V\), or a switched interaction \(V_\chi\), define the relative \(S\)-matrix

$$\begin{align}
S_V(F) = S(V)^{-1}_\star\star S(V+F).
\end{align}$$

The interacting observable is

$$\begin{align}
R_V(F) = \frac{\hbar}{i} \left. \frac{d}{d\lambda} S_V(\lambda F) \right|_{\lambda=0}.
\end{align}$$

Equivalently,

$$\begin{align}
R_V(F) = \sum_{n\ge0} \frac{1}{n!} \left(\frac{i}{\hbar}\right)^n R_n(V^{\otimes n};F),
\end{align}$$

where \(R_n\) are the retarded products determined by the \(T_n^{\rm ren}\) and the \(\star\)-inverse of \(S(V)\).

This formula has three simultaneous meanings:

1. As a formal power series in coupling constants.
2. As a formal power series in \(\hbar\), whose \(\hbar^0\) part is classical.
3. As a locality statement: \(R_V(F)\) depends on \(V\) only in the causal past of \(\mathrm{supp}\,F\).

The interacting field equation is not an equation for bare pointwise products. On the off-shell algebra, the field-equation property is the renormalized identity

$$\begin{align}
R_V\left( \left\langle\frac{\delta S_0}{\delta\phi},f\right\rangle + \left\langle\frac{\delta V}{\delta\phi},f\right\rangle \right) =\left\langle\frac{\delta S_0}{\delta\phi},f\right\rangle.
\end{align}$$

Only after passing to $\mathfrak A_0^{\rm on}$ does the right-hand side vanish. Thus the commonly written equation with zero on the right is an on-shell quotient statement, not an identity on the off-shell algebra. Composite-field normalization, switching-function derivatives, and boundary terms must still be included when present.

## 6. Classical limit and tree diagrams

Let \(r_V\) be the classical retarded Moller map from free configurations to interacting configurations. Then

$$\begin{align}
R_V(F) = F\circ r_V +O(\hbar).
\end{align}$$

Thus

$$\begin{align}
R_V(F)\big|_{\hbar^0} = F(\phi_{\rm ret}).
\end{align}$$

For a scalar potential interaction

$$\begin{align}
V[\phi] = -\int_M d\mu_g\, \left[ \frac{g_3}{3!}\phi^3 + \frac{g_4}{4!}\phi^4 \right],
\end{align}$$

the classical retarded solution satisfies

$$\begin{align}
P\phi_{\rm ret} = \frac{g_3}{2}\phi_{\rm ret}^2 + \frac{g_4}{3!}\phi_{\rm ret}^3,
\end{align}$$

or

$$\begin{align}
\phi_{\rm ret}(x) = \phi_0(x) + \int_M d\mu_g(y)\, E_R(x,y) \left[ \frac{g_3}{2}\phi_{\rm ret}(y)^2 + \frac{g_4}{3!}\phi_{\rm ret}(y)^3 \right].
\end{align}$$

Iterating this equation gives rooted retarded trees:

1. root: the observed field point or functional derivative of \(F\);
2. internal line: \(E_R\);
3. vertex: \(-\delta V/\delta\phi\), equivalently the source term in the EOM;
4. leaves: free solutions \(\phi_0\).

This is not the same object as the full quantum Feynman expansion. The relation is:

$$\begin{align}
\text{rooted retarded trees} = \hbar^0\text{ part of }R_V(F),
\end{align}$$

whereas

$$\begin{align}
\text{Feynman diagrams} = \text{expansion of }S(V),T\text{-correlators, and states}.
\end{align}$$

On shell, after LSZ or the appropriate AdS/boundary extraction, both descriptions reproduce the same tree-level physical amplitudes when their normalizations and boundary conditions agree.

## 7. Perturbative symplectic normalization

Suppose the interacting solution is expanded as

$$\begin{align}
\phi[a;g] = \phi_0[a] + \sum_{n\ge1}g^n\phi_n[a],
\end{align}$$

where \(a\) denotes free solution coordinates or free mode coefficients. The interacting CPS form also expands:

$$\begin{align}
\Omega_g = \Omega_0 + \sum_{n\ge1}g^n\Omega_n.
\end{align}$$

The correct normalization condition is not chosen by hand. It is

$$\begin{align}
p_g^*\Omega_g = \Omega_0
\end{align}$$

if \(p_g:a\mapsto\phi[a;g]\) is the retarded Moller map used as a canonical coordinate chart.

Order by order this means, for two tangent vectors \(\delta_1,\delta_2\),

$$\begin{align}
\Omega_1(\delta_1\phi_0,\delta_2\phi_0) + \Omega_0(\delta_1\phi_1,\delta_2\phi_0) + \Omega_0(\delta_1\phi_0,\delta_2\phi_1) =0
\end{align}$$

For non-derivative potential interactions in fixed backgrounds, \(\theta\) often has no explicit interaction correction, so the pullback condition is satisfied by retarded initial-data normalization. For derivative interactions, gravity, boundary terms, or field redefinitions, the higher \(\Omega_n\) terms are essential and must be kept.

Quantum normalization then follows from

$$\begin{align}
[\hat a_\alpha,\hat a_\beta^\dagger] = \delta_{\alpha\beta}
\end{align}$$

or the appropriate continuous delta function. Scattering external legs additionally require the LSZ residue or its curved/boundary analogue. Composite operators and currents require independent renormalization constants.

## 8. Symmetries, local Ward identities, and conditional charges

Let \(X_\lambda\) be a classical symmetry vector on field space:

$$\begin{align}
X_\lambda = \int_M d^dx\, \delta_\lambda\phi^i(x) \frac{\delta}{\delta\phi^i(x)}.
\end{align}$$

The first question is charge existence. A Hamiltonian charge exists only if $X_\lambda$ preserves the theory-defining boundary condition and $\iota_{X_\lambda}\Omega$ is an exact one-form on the chosen phase space:

$$\begin{align}
\delta Q_\lambda = \iota_{X_\lambda}\Omega
\end{align}$$

up to the boundary and improvement terms fixed by the same variational problem. In the free quantum algebra, a charge with an appropriate operator domain then obeys, with $\hbar=1$,

$$\begin{align}
\delta_\lambda F = i[Q_\lambda^{(0)},F]_{\star}
\end{align}$$

for observables \(F\) in the domain of the charge.

For the interacting theory, first define a renormalized local current:

$$\begin{align}
j^\mu_{\lambda,V,{\rm ren}} = R_V(j^\mu_\lambda) + j^\mu_{\lambda,{\rm ct}} + j^\mu_{\lambda,\partial}.
\end{align}$$

After a Ward-preserving normalization has been chosen, its on-shell local divergence has the form

$$\begin{align}
\nabla_\mu j^\mu_{\lambda,V,{\rm ren}}=a_{\lambda,V}+b_{\lambda,V}.
\end{align}$$

Here $a_{\lambda,V}$ is a genuine local anomaly density, while $b_{\lambda,V}$ is explicit breaking by switching functions or by the specified boundary data. Contact terms arise when this local identity is inserted into time-ordered products; they generate the symmetry variations of the other insertions and are not an extra failure of operator conservation.

For a spacetime region $\mathcal R$ bounded by $\Sigma_1$, $\Sigma_2$, and a timelike or asymptotic boundary $\mathcal T$, the corresponding balance law is

$$\begin{align}
Q_{\lambda,V}^{\rm ren}[\Sigma_2]-Q_{\lambda,V}^{\rm ren}[\Sigma_1] +\int_{\mathcal T}d\Sigma_\mu\,j^\mu_{\lambda,V,{\rm ren}} =\int_{\mathcal R}d^dx\,(a_{\lambda,V}+b_{\lambda,V}),
\end{align}$$

where, when it exists,

$$\begin{align}
Q_{\lambda,V}^{\rm ren}[\Sigma]=\int_\Sigma d\Sigma_\mu\,j^\mu_{\lambda,V,{\rm ren}}+Q_{\lambda,\partial}.
\end{align}$$

This surface integral defines a global interacting charge only if it is finite, or admits a controlled compactly smeared limit, its operator domain is specified, the required adiabatic or infrared limit exists, and boundary flux is controlled. Only when $a_{\lambda,V}=b_{\lambda,V}=0$ and the $\mathcal T$ flux vanishes is the charge independent of $\Sigma$ and eligible to implement

$$\begin{align}
\delta_\lambda R_V(F)=i[Q_{\lambda,V}^{\rm ren},R_V(F)]_\star.
\end{align}$$

Otherwise the local Ward identity and balance law remain meaningful, but existence of an integrated generator has not been established. Finite counterterms can move cohomologically trivial local terms between the current and the Ward identity, but cannot remove a genuine anomaly.

## 9. Deferred scope marker: gauge theory and gravity

This section is retained only to mark a future extension. It is not part of the current object chain, examples, completion criteria, or practical pipeline. The symbol $\Gamma_{\rm ren}$ below is future 1PI shorthand and is not defined or used elsewhere in the present scalar formalism.

For gauge theory and gravity the CPS form on unreduced fields is presymplectic. Therefore the statement

$$\begin{align}
\Omega^{-1}=E
\end{align}$$

is false before reduction or gauge fixing. The correct completion is BV-BRST.

The BV field space contains fields, ghosts, antifields, and possibly antighosts/Nakanishi-Lautrup fields:

$$\begin{align}
\Phi^A=(\phi^i,c^\alpha,\phi_i^+,c_\alpha^+,\ldots).
\end{align}$$

It carries an odd BV symplectic form and antibracket \((\cdot,\cdot)\). The classical BV action satisfies

$$\begin{align}
(S_{\rm BV},S_{\rm BV})=0.
\end{align}$$

The BRST differential is

$$\begin{align}
sF=(S_{\rm BV},F).
\end{align}$$

After gauge fixing, the free kinetic operator on the BV complex must be Green-hyperbolic. One then constructs:

1. the free graded algebra;
2. BRST-invariant time-ordered products;
3. interacting observables as BRST cohomology classes;
4. quantum Ward identities from the Master Ward Identity or Quantum Master Equation.

The anomaly is a ghost-number-one local cohomology class:

$$\begin{align}
s\Gamma_{\rm ren} = \hbar\,\mathcal A +O(\hbar^2), \qquad s\mathcal A=0, \qquad \mathcal A\not=sB.
\end{align}$$

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
4. impose vanishing symplectic flux on the allowed variations;
5. construct \(E_R^{\mathcal B}\), \(E_A^{\mathcal B}\), and \(E^{\mathcal B}\).

Boundary/edge-mode enlargements and open-system flux laws are outside the present fixed-boundary scalar scope.

Only then can one define

$$\begin{align}
[\Phi(f),\Phi(g)]_\star = i\hbar E^{\mathcal B}(f,g).
\end{align}$$

The Hadamard and time-ordering layer must also respect the boundary:

1. \(H^{\mathcal B}\) must have the correct short-distance Hadamard singularity and boundary condition.
2. \(T_n^{\rm ren,\mathcal B}\) require bulk local counterterms and, generally, boundary local counterterms.
3. Boundary composite operators and boundary currents may mix with bulk operators.
4. Ward identities can contain boundary flux or boundary anomalies.

For global AdS, the free spectrum is discrete. For a scalar in global AdS3 with standard quantization,

$$\begin{align}
\omega_{n,m} = \Delta+2n+|m|.
\end{align}$$

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
5. No gauge degeneracy is present; gauge theories lie outside the present scope.

What fails on a generic background is not the local algebraic formalism, but extra structures such as:

1. a preferred vacuum;
2. particle interpretation;
3. global scattering matrix;
4. adiabatic limit;
5. time-independent Hamiltonian spectrum.

Therefore local interacting observables \(R_V(F)\) are more fundamental than an \(S\)-matrix on curved or bounded backgrounds.

## 12. Backend audit checklist

The actual contractions and spectral or embedding-space integrals are performed in `../cps canonical quantization to loop corrections.md`. This note supplies the following audit:

1. Verify that $\mathcal B$ gives a well-posed variational problem, a closed CPS, and boundary-compatible $E_R^{\mathcal B}$, $E_A^{\mathcal B}$, and $E^{\mathcal B}$.
2. Verify that the antisymmetric part of the canonical mode sum is $iE^{\mathcal B}$ and that every propagator obeys $\mathcal B$.
3. Verify that extensions of loop products differ only by allowed bulk- and boundary-local counterterms.
4. Verify PPA/split independence when a boundary-compatible quadratic term is moved between $S_0$ and $V$, after matching physical renormalization conditions.
5. Verify the off-shell equation of motion, its on-shell quotient, Schwinger-Dyson identities, and the relevant local Ward identities.
6. If an integrated charge is claimed, verify integrability, finiteness or smearing, the adiabatic/infrared limit, and boundary flux separately.
7. Only then take an AdS boundary, long-time, adiabatic, or LSZ limit.

The backend and canonical outputs are identified only when they use the same $\mathcal B$, state, propagator, and renormalization conditions.

## 13. Minimal scalar benchmark

For 4d flat real scalar

$$\begin{align}
V = -\int d^4x\,\chi(x) \left( \frac{g_3}{3!}\phi^3 + \frac{g_4}{4!}\phi^4 \right),
\end{align}$$

the EOM convention is

$$\begin{align}
K\phi = \frac{g_3}{2}\phi^2 + \frac{g_4}{3!}\phi^3, \qquad K=\Box-m^2.
\end{align}$$

The first retarded correction is

$$\begin{align}
\phi_1(x) = \int d^4z\, E_R(x,z)\chi(z) \left( \frac{g_3}{2}\phi_0(z)^2 + \frac{g_4}{3!}\phi_0(z)^3 \right).
\end{align}$$

This equals \(R_V(\phi(x))|_{\hbar^0}\) to first order and iterates to all rooted trees.

The same \(S(V)\) gives the standard tree four-point amplitude

$$\begin{align}
\mathcal M_4^{\rm tree} = -g_4 -g_3^2 \left[ \frac{1}{s-m^2} + \frac{1}{t-m^2} + \frac{1}{u-m^2} \right],
\end{align}$$

with the usual \(i\epsilon\) prescription.

The two-point Schwinger-Dyson identity is schematically

$$\begin{align}
K_xG_2(x,y) = i\delta^{(4)}(x-y) + \omega\left( T\,R_V\left[ \frac{g_3}{2}\phi(x)^2 + \frac{g_4}{3!}\phi(x)^3 \right] R_V(\phi(y)) \right) +{\rm ct}.
\end{align}$$

The \(\phi^4\) tadpole and \(\phi^3\) bubble terms are produced by \(T_n^{\rm ren}\) and \(\star\)-contractions. They are not present in the classical tree solution.

## 14. Minimal symmetry benchmarks

For flat scalar translations, the CPS charge relation

$$\begin{align}
\delta P_\xi=\iota_{X_\xi}\Omega
\end{align}$$

becomes

$$\begin{align}
i[P_\xi^{(0)},\phi(x)]_\star = \xi^\mu\partial_\mu\phi(x).
\end{align}$$

The interacting stress tensor must be renormalized:

$$\begin{align}
T_{V,\chi}^{\mu\nu} = R_{V_\chi}(T_\chi^{\mu\nu})+T_{\rm ct}^{\mu\nu}.
\end{align}$$

With compact switching,

$$\begin{align}
\partial_\mu T_{V,\chi}^{\mu\nu} = -(\partial^\nu\chi)\mathcal L_{{\rm int},V}.
\end{align}$$

This is the on-shell local identity after the counterterms are included in the renormalized fields. Time-ordered insertions add the standard contact terms.

After the controlled adiabatic limit in flat scalar theory,

$$\begin{align}
\mathcal A_{\rm translation}=0.
\end{align}$$

This removes the local anomaly obstruction; it does not by itself prove existence of the integrated interacting momentum.

For complex \(\phi^4\), with

$$\begin{align}
X_\alpha\phi=i\alpha\phi, \qquad X_\alpha\phi^*=-i\alpha\phi^*,
\end{align}$$

the CPS charge generates

$$\begin{align}
i[Q_\alpha,\phi]_\star=i\alpha\phi, \qquad i[Q_\alpha,\phi^*]_\star=-i\alpha\phi^*.
\end{align}$$

The scalar vector $U(1)$ Ward identity has no anomaly obstruction and can be imposed as a renormalization condition with

$$\begin{align}
\mathcal A_{U(1)}=0.
\end{align}$$

The corresponding interacting current counterterm and global charge are not explicitly constructed in this benchmark.

As a separate background-field illustration outside the scalar completion claim, a 4d Dirac fermion in a background $U(1)$ gauge field has the ABJ anomaly:

$$\begin{align}
\partial_\mu j_{5,{\rm ren}}^\mu = 2im\,\bar\psi\gamma_5\psi + \frac{q^2}{16\pi^2} F_{\mu\nu}\widetilde F^{\mu\nu}.
\end{align}$$

This is the prototype for a nonzero \(\mathcal A_\lambda\). It is a failure of the renormalized Ward identity, not a failure of the free CPS algebra.

## 15. Status of the backend

The scalar/global-symmetry backend is formulated and benchmarked at the following levels:

1. Classical rooted trees are \(R_V|_{\hbar^0}\).
2. Flat \(\phi^3/\phi^4\) scattering is reproduced at tree level.
3. Tadpoles, bubbles, and Schwinger-Dyson contact terms occur at the \(T_n^{\rm ren}\) layer.
4. Free translation and scalar $U(1)$ charges are normalized by $\delta Q=\iota_X\Omega$; the interacting notes instantiate local Ward and balance-law structures, while global interacting charges remain conditional on existence and flux assumptions.
5. ABJ supplies a separate background-field illustration of a genuine anomaly and is not part of the scalar completion claim.
6. Global AdS3 exposes the correct finite-time versus long-time distinction.

For the current goal this is a consistency backend, not the advertised calculation method. The usable computational frontends are the canonical/Wick pipeline and, on a stationary background with a self-adjoint free Hamiltonian, the spectral OFPT pipeline in `cps_old_fashioned_perturbation_theory.md`. The present note checks that their causal kernel, off-shell equations, renormalization freedom, and Ward statements are formulated consistently.

The remaining in-scope consistency tasks are:

1. boundary-compatible renormalized products for the chosen AdS scalar boundary condition;
2. explicit PPA/split-independence checks for mass resummation in the AdS examples;
3. a connection between global AdS resonant normal form and the canonical loop pipeline;
4. explicit existence and flux checks whenever an interacting global charge is claimed.

Gauge theory, BV-BRST, and gravity are deferred outside this scope rather than counted as completion gates.

## 16. How to use this formalism in later notes

When applying the formalism to a new example, every claim should be labeled as one of:

1. **Classical CPS:** statement about \(\Omega\), \(E\), Peierls brackets, or retarded trees.
2. **Free quantum algebra:** statement about \(\star_H\), CCR/CAR, or mode normalization.
3. **Renormalized quantum layer:** statement about \(T_n^{\rm ren}\), composite fields, loops, or counterterms.
4. **Ward/charge layer:** statement about \(Q_{\lambda,V}^{\rm ren}\), current conservation, anomaly, or boundary flux.
5. **Limit/extraction:** statement about LSZ, adiabatic limit, AdS boundary limit, or long-time normal form.
6. **Hamiltonian spectral layer:** statement about $V_{\rm R}$ matrix elements, free-energy projectors, OFPT denominators, effective Hamiltonians, or anomalous dimensions.

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
9. `global_ads3_phi4_tadpole_embedding_check.md`
10. `global_ads3_phi3_bubble_embedding_check.md`
11. `tree_cps_pipeline_note.md`
12. `2606_24442_higher_order_cps_check.md`
13. `cps_old_fashioned_perturbation_theory.md`

External references:

1. K. Fredenhagen and K. Rejzner, *Perturbative algebraic quantum field theory*, arXiv:1208.1428, https://arxiv.org/abs/1208.1428
2. M. Duetsch and K. Fredenhagen, *Causal perturbation theory in terms of retarded products, and a proof of the Action Ward Identity*, Rev. Math. Phys. 16 (2004) 1291-1348, https://doi.org/10.1142/S0129055X04002266
3. R. Brunetti, M. Duetsch and K. Fredenhagen, *Perturbative algebraic quantum field theory and the renormalization groups*, Adv. Theor. Math. Phys. 13 (2009) 1541-1599.
4. S. Hollands and R. M. Wald, *Axiomatic quantum field theory in curved spacetime*, arXiv:0803.2003, https://arxiv.org/abs/0803.2003
5. S. Hollands, *The operator product expansion for perturbative quantum field theory in curved spacetime*, arXiv:gr-qc/0605072, https://arxiv.org/abs/gr-qc/0605072
