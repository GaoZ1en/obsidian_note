# Independent regional reduction of real Lorentzian nonchiral Plebanski theory

## Result

On a **selected regular nondegenerate simplicity branch**, with the wall action and corner potential specified below, the natural metric reconstruction gives

\[
\boxed{\Omega_{G,s}=s\chi\,\Omega_{\mathrm{EH+GHY}},\qquad
\Omega_{T,s}=0.}
\]

Here \(G,s\) denotes \(B^{IJ}=s\star(e^I\wedge e^J)\), \(T,s\) denotes \(B^{IJ}=s e^I\wedge e^J\), \(s=\pm1\), and \(\chi=\epsilon(e)/\epsilon_g=\pm1\) is the coframe-orientation sign relative to the fixed spacetime orientation. For an orientation-compatible coframe, the positive gravitational branch matches metric Einstein–Hilbert plus GHY; the negative gravitational branch is its negative under the same metric reconstruction. Both have the same rank and kernel. The topological branches instead have an identically zero induced regional two-form for this boundary completion, not the Einstein two-form with a different sign.

The full equations on the gravitational branches impose \(R_{\mu\nu}=0\). On the topological branches **every smooth nondegenerate metric** is locally admitted: its Levi–Civita curvature determines the multiplier. This is not an Einstein-equation equivalence. A real de Sitter coframe with \(R_{\mu\nu}=3H^2g_{\mu\nu}\), \(H\ne0\), is an explicit topological-branch solution of the theory whose action has \(\Lambda=0\).

No unrestricted BF-shift quotient enters these statements. A compactly supported BF-shift parameter can already violate simplicity at first order.

## Independence, inputs, and evidence

Before derivation I read the root [AGENTS.md](</Users/koishi/Documents/Note/AGENTS.md>), the applicable [Quantization-in-AdS rules](</Users/koishi/Documents/Note/Articles/Quantization in AdS/AGENTS.md>), and the CPS convention anchor [formalism.md:5–27](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L27>). I loaded the `math-computation` skill and its Sage instructions. **No parent candidate, parent synthesis, or other review report was read before deriving the branch, wall, and corner results.** No established EC–HW formula is used as an unlabelled validation input: the relevant metric descent and tetrad-to-metric potential identity are derived below.

A later parent message supplied a separate homogeneous primary/secondary canonical diagnostic. Its limited analytic review appears at the end; it was not used to obtain the covariant results.

The standalone [exact-check script](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c.py>) was executed in a fresh SageMath 10.9 kernel. Its [actual saved output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-output.json>) records **28/28 exact checks passing**, using rational arithmetic and polynomial identities, not floating-point tests. No parent files were modified.

## 1. Objects and conventions

Let

\[
\eta_{IJ}=\operatorname{diag}(-1,1,1,1),\quad
\epsilon_{0123}=+1,\quad \epsilon^{0123}=-1,
\qquad (\star X)^{IJ}=\frac12\epsilon^{IJ}{}_{KL}X^{KL}.
\]

Then \(\star^2=-1\) on real internal bivectors. All repeated antisymmetric pairs are **full sums**, not sums restricted to \(I<J\). Define

\[
\Sigma^{IJ}=e^I\wedge e^J,\quad
T^I=de^I+\omega^I{}_J\wedge e^J,\quad
F^{IJ}=d\omega^{IJ}+\omega^I{}_K\wedge\omega^{KJ}.
\]

The connection is real and Lorentz-valued. The coframe is invertible. The metric is \(g=\eta_{IJ}e^I\otimes e^J\), and

\[
\epsilon(e)=e^0\wedge e^1\wedge e^2\wedge e^3=\chi\epsilon_g.
\]

The branch sign \(s\) and orientation sign \(\chi\) are locally constant on the declared nondegenerate domain. The ambiguity \(e\mapsto-e\) leaves the reconstructed metric, \(\chi\), and all displayed wall actions invariant.

The action and multiplier restrictions are

\[
L_P=\frac1{2\kappa}\left(B_{IJ}\wedge F^{IJ}
-\frac12\phi_{IJKL}B^{IJ}\wedge B^{KL}\right),\qquad \kappa=8\pi G>0,
\]

\[
\phi_{IJKL}=\phi_{[IJ][KL]}=\phi_{KLIJ},\qquad
\epsilon^{IJKL}\phi_{IJKL}=0.
\]

Spacetime and field-space differentials commute: \(d\delta=\delta d\). The regional convention is

\[
\Theta_\Sigma=\int_\Sigma\theta-\oint_{\partial\Sigma}C,
\qquad \Omega_\Sigma=\delta\Theta_\Sigma.
\]

The timelike wall \(\Gamma\) has fixed embedding, outward spacelike unit normal \(n^\mu\), induced metric \(q\), and orientation

\[
\epsilon_\Gamma=\iota_n\epsilon_g,\qquad
K_{ij}=q_i{}^\mu q_j{}^\nu\nabla_\mu n_\nu.
\]

Metric Dirichlet means \(\delta q_{ij}=0\), not \(\delta e_i^I=0\). Lorentz-frame variations at the wall are retained.

## 2. Natural BF potential and full equations

The connection variation is

\[
B_{IJ}\wedge D\delta\omega^{IJ}
=d(B_{IJ}\wedge\delta\omega^{IJ})-DB_{IJ}\wedge\delta\omega^{IJ}.
\]

Therefore the natural potential, before any improvement, is

\[
\boxed{\theta_P=\frac1{2\kappa}B_{IJ}\wedge\delta\omega^{IJ}.}
\]

There is no multiplier contribution to \(\theta_P\). The equations are

\[
DB^{IJ}=0,\qquad F_{IJ}=\phi_{IJKL}B^{KL},
\]

and the trace-free symmetric-pair projection of \(B^{IJ}\wedge B^{KL}\) vanishes. Equivalently,

\[
B^{IJ}\wedge B^{KL}=-\epsilon^{IJKL}\,V_B,
\qquad V_B=\frac1{24}\epsilon_{MNPQ}B^{MN}\wedge B^{PQ}.
\]

On either selected branch the multiplier term in the Lagrangian vanishes, because it contracts the epsilon-trace of \(\phi\). Its field equation must nevertheless be retained when reconstructing the full solution space.

## 3. Regular constraint reduction, without treating constraints as gauge

At an invertible coframe the simplicity locus has dimension 16 inside the 36-dimensional space of bivector-valued two-forms. Its 20 independent normal equations are exactly the multiplier equations. The script verifies rank 20 for the simplicity Jacobian and rank 16 for the coframe-to-\(B\) tangent map on both branches. Their product is zero, so their kernel/image agree.

A transparent matrix representation uses the pair order \((01,02,03,12,13,23)\):

\[
J_{(IJ)(KL)}=\epsilon_{IJKL},\qquad
G_{(IJ)(IJ)}=\eta_{II}\eta_{JJ},\qquad S=GJ.
\]

Here \(S^2=-1\). For the matrix of two-form coefficients \(B\), simplicity says \(BJB^T\propto J\). The standard topological and gravitational representatives are \(B=1\) and \(B=S\). The exact rank computation exhausts the corresponding linear spaces; it is not sampling a few numerical perturbations. Coframe covariance carries the result to every nondegenerate point.

Both branches give

\[
DB=0\quad\Longleftrightarrow\quad D\Sigma=0
\quad\Longleftrightarrow\quad T^I\wedge e^J-T^J\wedge e^I=0.
\]

To see the final implication explicitly, set \(v=\sum_J\iota_{E_J}T^J\) and contract the preceding equation with \(\sum_J\iota_{E_J}\). In four dimensions this gives \(T^I=v\wedge e^I\). Contracting again gives \(v=-3v\), hence \(T^I=0\). The independent exact component check finds rank 24 for the 24-by-24 torsion map.

Thus \(\omega=\omega(e)\) is uniquely fixed locally. This is a secondary/differential constraint, not an unrestricted connection gauge quotient. The corresponding tangent equation fixes \(\delta\omega=\delta\omega(e)\).

Write the Levi–Civita curvature as

\[
F_{IJ}=\frac12R_{IJKL}e^K\wedge e^L,
\]

with the usual Riemann pair symmetries and first Bianchi identity in the curvature convention fixed above.

### 3.1 Topological branches

For \(B=s\Sigma\), the full \(B\)-equation fixes

\[
\boxed{\phi_{IJKL}=\frac{s}{2}R_{IJKL}.}
\]

Pair-exchange symmetry and epsilon-tracelessness of this \(\phi\) are precisely properties of any Levi–Civita Riemann tensor. **There is no remaining Einstein equation.** The branch-reduced coframe equation \(e_J\wedge F^{IJ}=0\) is the torsion-free first Bianchi identity.

### 3.2 Gravitational branches

Define the right dual

\[
(R\star)_{IJKL}=\frac12R_{IJMN}\epsilon^{MN}{}_{KL}.
\]

For \(B=s\star\Sigma\), the full \(B\)-equation fixes

\[
\boxed{\phi_{IJKL}=-\frac{s}{2}(R\star)_{IJKL}.}
\]

Pair-exchange symmetry of \(R\star\) removes the traceless Ricci tensor; the epsilon-trace condition removes the scalar curvature. More specifically,

\[
\epsilon^{IJKL}\phi_{IJKL}=sR.
\]

Thus \(R_{IJ}=0\). In the bivector-matrix representation this statement is particularly directly checkable: algebraic curvature is a symmetric matrix \(R\) obeying \(\operatorname{tr}(JR)=0\), and \(\phi=-sRS/2\). On this full 20-dimensional algebraic-curvature space, the multiplier-admissibility matrix, the Ricci matrix, and their stacked matrix all have rank 10. Their row spaces and kernels therefore coincide exactly. This is also the usual Hodge-block statement that traceless Ricci curvature is the off-diagonal part of the curvature operator.

There is no hidden free multiplier sector: invertibility of the \(B\) basis fixes \(\phi\) uniquely once \(e\) and its curvature are fixed. Algebraic simplicity removes normal \(B\) directions by equations; torsion fixes connection directions; multiplier admissibility supplies Einstein curvature only on the gravitational branches. None of these removals was called an unrestricted BF gauge quotient.

## 4. Independent branch reduction of the Lagrangian

For the gravitational branches,

\[
L_{G,s}=\frac{s}{4\kappa}\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL}.
\]

On the torsion-free connection,

\[
\epsilon_{IJKL}e^I\wedge e^J\wedge F^{KL}
=2R\epsilon(e),
\qquad
\boxed{L_{G,s}\big|_{T=0}=s\chi\frac{R\epsilon_g}{2\kappa}.}
\]

This fixes the sign directly. For example, \(F^{IJ}=\lambda e^I\wedge e^J\) gives \(R=12\lambda\) and \(L_{G,+}=6\lambda\epsilon(e)/\kappa\), not its negative. The script checks the coefficient for the entire algebraic-curvature space.

For the topological branches,

\[
L_{T,s}=\frac{s}{2\kappa}e_I\wedge e_J\wedge F^{IJ}.
\]

The Nieh–Yan identity in these conventions follows directly from \(DT^I=F^I{}_J\wedge e^J\):

\[
d(e_I\wedge T^I)=T_I\wedge T^I-e_I\wedge e_J\wedge F^{IJ}.
\]

Consequently,

\[
\boxed{L_{T,s}=\frac{s}{2\kappa}T_I\wedge T^I
-\frac{s}{2\kappa}d(e_I\wedge T^I).}
\]

It vanishes on every torsion-free coframe, not just Einstein coframes.

The finite operation \((B,\phi,\omega)\mapsto(-B,-\phi,\omega)\) maps equations to equations but sends the complete bulk Lagrangian to its negative. It is not an action-preserving gauge identification at fixed positive \(\kappa\). The disconnected signs and orientation sheets are not removed by an infinitesimal null-direction argument.

## 5. Honest wall actions and their domain

### 5.1 What “in reconstructed B data” means

On the selected regular simple locus reconstruct \(e(B)\), \(g(B)\), and the internal normal

\[
n^I(B)=e^I{}_{\mu}(B)n^\mu[g(B)].
\]

The displayed expressions are independent of the lift \(e\mapsto-e\), and are covariant under the allowed local Lorentz transformations. They therefore define wall actions using reconstructed \(B\) data **on that branch**. They still depend on the independent connection before its torsion equation is solved.

There are two honest ways to use this prescription:

1. eliminate regular algebraic simplicity first, and use the branch-reduced first-order action in \((e,\omega)\), reconstructing \(\phi\) afterward as above; or
2. retain full independent \((B,\omega,\phi)\) in the bulk, but require boundary \(B\) and its allowed boundary variations to lie in the selected simple branch, with the reconstructed \(q\) fixed.

The second option retains unrestricted interior variations normal to simplicity and hence retains the full multiplier equations. A branch-reconstructed wall expression is **not** a canonical functional of every nonsimple off-shell \(B\). Such a larger off-shell domain needs an explicit extension or an additional boundary contract; neither is silently supplied here.

Replacing the first-order gravitational wall action by the purely metric GHY functional before eliminating \(\omega\) would leave an uncancelled independent \(\delta\omega\) boundary variation. The metric GHY expression is its torsion-free pullback, not a substitute on the unreduced field space.

### 5.2 Gravitational wall action

Use

\[
\boxed{\ell_{G,s}=\frac1\kappa B_{IJ}n^I Dn^J
=\frac{s}{2\kappa}\epsilon_{IJKL}e^I\wedge e^J n^K Dn^L.}
\]

Its derivative-of-variation term gives

\[
\boxed{C_{G,s}=\frac1\kappa B_{IJ}n^I\delta n^J
=\frac{s}{2\kappa}\epsilon_{IJKL}e^I\wedge e^J n^K\delta n^L.}
\]

These formulas use the outward spacelike normal with \(n_In^I=1\). To fix the wall-action sign independently, choose an orientation-compatible adapted coframe with \(n^I=\delta^I_3\), \(e^3|_\Gamma=0\). Then \(\epsilon_\Gamma=-e^0\wedge e^1\wedge e^2\), and if \(Dn^a=K^a{}_b e^b\),

\[
\ell_{G,+}=-(\operatorname{tr}K)e^0\wedge e^1\wedge e^2/\kappa
=K\epsilon_\Gamma/\kappa.
\]

The connection variations in \(\theta+\delta\ell\) cancel. On the torsion-free domain,

\[
\boxed{\ell_{G,s}=s\chi\,\frac{K\epsilon_\Gamma}{\kappa}.}
\]

### 5.3 Topological wall action

Use the branch-dependent Nieh–Yan completion

\[
\boxed{\ell_{T,s}=\frac{s}{2\kappa}e_I(B)\wedge D_\omega e^I(B).}
\]

It is Lorentz invariant and lift-independent. It is not the same as the gravitational formula \(B_{IJ}n^I Dn^J/\kappa\): the latter vanishes on a topological branch after pullback because \(n_Ie^I|_\Gamma=0\), and would not cancel the independent connection variation.

A direct variation, before setting torsion to zero, gives

\[
\begin{aligned}
\delta(e_I\wedge T^I)
&=2\delta e_I\wedge T^I-d(e_I\wedge\delta e^I)
-e_I\wedge e_J\wedge\delta\omega^{IJ},\\
\theta_{T,s}+\delta\ell_{T,s}
&=\frac{s}{\kappa}\delta e_I\wedge T^I+dC_{T,s},\\
\boxed{C_{T,s}}&\boxed{=-\frac{s}{2\kappa}e_I\wedge\delta e^I.}
\end{aligned}
\]

The script verifies this identity as a universal polynomial identity in independent torsion, coframe variation, its covariant derivative, and connection variation at a point.

If the wall is the only boundary component supplied with this completion, the Nieh–Yan identity gives

\[
S_{T,s}=\frac{s}{2\kappa}\int_M T_I\wedge T^I
-\frac{s}{2\kappa}\left(\int_{\Sigma_f}e_I\wedge T^I-
\int_{\Sigma_i}e_I\wedge T^I\right).
\]

Thus the phrase “torsion-squared action” is understood with these endpoint functionals retained. They vanish on the smooth solution space, and their tangent variations vanish there as well.

### 5.4 Off-shell versus solution-space boundary descent

Metric Dirichlet does not mean that every first-order torsion term vanishes for arbitrary off-shell histories. In particular, for a local Lorentz variation

\[
\delta_\lambda\omega^{IJ}=-D\lambda^{IJ},\qquad
\delta_\lambda e^I=\lambda^I{}_Je^J,
\]

both wall Lagrangians are invariant, and the natural corner potentials obey \(C(\delta_\lambda)=-B_{IJ}\lambda^{IJ}/(2\kappa)\). Hence

\[
\boxed{\theta(\delta_\lambda)+\delta_\lambda\ell-dC(\delta_\lambda)
=\frac1{2\kappa}(DB_{IJ})\lambda^{IJ}.}
\]

This is an explicit obstruction to claiming the strict HW boundary identity on an off-shell domain with only \(\delta q=0\) and completely unrestricted torsion. It vanishes on every smooth bulk solution; the extra first-order boundary equation is redundant with the torsion equation, not a restriction on Einstein metric modes. One may impose the torsion-compatible wall domain \(T^I|_\Gamma=0\), with tangent variations preserving it, if a strict off-shell boundary identity is desired. Alternatively one can formulate the first-order variational problem with the redundant natural torsion boundary equation made explicit.

All regional equalities below are pullbacks to the **full constrained solution and tangent space**, not claims that the off-shell remainder is zero without qualification.

## 6. Independent metric and corner descent

Write \(h_{\mu\nu}=\delta g_{\mu\nu}\), \(h=g^{\mu\nu}h_{\mu\nu}\), and

\[
w^\mu=q^{\mu\nu}h_{\nu\rho}n^\rho.
\]

The metric Einstein–Hilbert potential in the stated curvature convention is

\[
\theta_{\rm EH}=\frac1{2\kappa}(\nabla_\nu h^{\mu\nu}-\nabla^\mu h)\,\epsilon_\mu,
\qquad \epsilon_\mu=\iota_{\partial_\mu}\epsilon_g.
\]

Take Gaussian normal coordinates for the background metric at the wall, but do **not** require the variation to remain Gaussian. Set \(h_t=q^{ij}h_{ij}\). Then

\[
\begin{aligned}
\theta_{{\rm EH},n}&=\frac1{2\kappa}
(D_iw^i+K h_{nn}-K^{ij}h_{ij}-\partial_n h_t),\\
\delta K&=-D_iw^i-\frac12K h_{nn}+\frac12\partial_n h_t,
\qquad \delta\epsilon_\Gamma=\frac12h_t\epsilon_\Gamma.
\end{aligned}
\]

Adding the GHY variation yields

\[
\boxed{(\theta_{\rm EH}+\delta\ell_{\rm GHY})|_\Gamma
=-\frac1{2\kappa}(K^{ij}-Kq^{ij})\delta q_{ij}\epsilon_\Gamma+dC_{\rm EH},}
\]

\[
\boxed{\ell_{\rm GHY}=K\epsilon_\Gamma/\kappa,
\qquad C_{\rm EH}=-\frac1{2\kappa}\iota_w\epsilon_\Gamma.}
\]

This derivation fixes the corner sign without importing a pre-existing EC–HW formula.

For the tetrad-to-metric comparison first take \(\chi=+1\). Define

\[
t_{\mu\nu}=e_{I\mu}\delta e^I{}_{\nu},\qquad
A_{\mu\nu}=t_{[\mu\nu]},\qquad h_{\mu\nu}=2t_{(\mu\nu)},
\]

\[
\alpha=\frac1{2\kappa}\star_g(e_I\wedge\delta e^I).
\]

Variation of the torsion-free tetrad postulate gives

\[
\theta_{\rm EC}^{\mu}=\frac1\kappa e_I{}^\mu e_J{}^\nu\delta\omega_\nu{}^{IJ}
=\theta_{\rm EH}^{\mu}-\frac1\kappa\nabla_\nu A^{\mu\nu}.
\]

Since \(d\alpha=(\nabla_\nu A^{\mu\nu}/\kappa)\epsilon_\mu\),

\[
\boxed{\theta_{\rm EC}|_{T=0}=\theta_{\rm EH}-d\alpha.}
\]

The wall-normal corner formula independently satisfies

\[
\boxed{C_{\rm EC}=C_{\rm EH}-\alpha|_\Gamma.}
\]

For example, at \(n=e_3\), arbitrary \(\delta e^I=t^I{}_Je^J\) gives
\(w^a=\eta^{aa}h_{a3}\) and \(\delta n^a=t^a{}_3-w^a\). Substitution proves the identity for all 16 tetrad-variation components; the script checks it as a polynomial identity, retaining Lorentz variations rather than fixing them away.

Restoring the branch and orientation signs gives

\[
\theta_{G,s}=s\chi(\theta_{\rm EH}-d\alpha),\qquad
C_{G,s}=s\chi(C_{\rm EH}-\alpha|_\Gamma).
\]

Consequently the corner contributions cancel exactly:

\[
\boxed{\Theta_{G,s}=s\chi\Theta_{\rm EH+GHY},\qquad
\Omega_{G,s}=s\chi\Omega_{\rm EH+GHY}.}
\]

No orthogonality gauge for the Cauchy-surface/wall intersection is used in this cancellation. The statement concerns the displayed wall action and CPS endpoint convention. If a separate fully Dirichlet action on all spacelike and timelike boundary pieces is wanted, its spacelike and joint actions must be added consistently on both formulations; independent joint dynamics is outside this report.

## 7. Topological regional two-form and retained null directions

On solutions \(T=0\), and tangent vectors obey \(\delta T=0\). Therefore

\[
D\delta e^I+\delta\omega^I{}_J\wedge e^J=0,
\qquad d(e_I\wedge\delta e^I)=-e_I\wedge e_J\wedge\delta\omega^{IJ}.
\]

It follows that

\[
\boxed{\theta_{T,s}=dC_{T,s}\quad\hbox{on the full solution/tangent space}.}
\]

The declared regional convention then gives

\[
\boxed{\Theta_{T,s}=0,\qquad\Omega_{T,s}=0.}
\]

This includes arbitrary metric variations compatible with the fixed wall metric, not merely vacuum-Einstein variations. Compactly supported interior metric variations provide immediate examples. Generically the corresponding Einstein regional form is not zero, so this is a genuine rank distinction.

For either branch a Lorentz variation gives

\[
\theta(\delta_\lambda)=-\frac1{2\kappa}d(B_{IJ}\lambda^{IJ})
\quad (DB=0),\qquad
C(\delta_\lambda)=-\frac1{2\kappa}B_{IJ}\lambda^{IJ}|_\Gamma.
\]

Thus its integrated potential vanishes without imposing \(\lambda|_\Gamma=0\). Gauge covariance then makes these Lorentz directions null directions of \(\Omega\). There are no extra frame corner modes in this specified completion. Boundary-compatible diffeomorphisms and possible boundary isometry charges are handled just as in metric EH on the gravitational branches; no unrestricted boundary diffeomorphism quotient is claimed.

The topological result establishes an infinitesimal presymplectic degeneracy statement. It does **not**, on its own, identify every null direction with a globally integrated gauge transformation or prove that the full global quotient is a point. Discrete sectors, topology, large gauge transformations, singular strata, and additional boundary/edge theories are not covered.

## 8. Explicit counterexamples and finite tests

### 8.1 Unrestricted BF shift versus simplicity

At a flat coframe \(e^I=dx^I\), with \(\omega=0\), let \(B=\star\Sigma\). Then

\[
B^{01}=-dx^2\wedge dx^3.
\]

An unconstrained BF shift \(\delta B^{IJ}=D\eta^{IJ}\), \(\delta\omega=0\), with

\[
\eta^{01}=x^0dx^1
\]

gives

\[
\delta B^{01}=dx^0\wedge dx^1,\qquad
\boxed{\delta(B^{01}\wedge B^{01})=-2\,d^4x\ne0.}
\]

Simplicity requires this component to vanish, because \(\epsilon^{0101}=0\). Multiplying the parameter by a bump function equal to one near the test point makes it compactly supported in the interior without changing the local violation. No wall effect is needed.

For the topological branch \(B=\Sigma\), the choice \(\eta^{01}=x^2dx^3\) instead yields \(\delta(B^{01}\wedge B^{01})=+2d^4x\). Both signs are exactly checked.

Moreover the simplicity term changes under the unrestricted shift by a generally non-boundary term proportional to \(\phi_{IJKL}D\eta^{IJ}\wedge B^{KL}\). The unconstrained BF shift is therefore not a symmetry of the declared constrained domain/action. Certain field-dependent branch-preserving combinations may exist, but they must be demonstrated separately.

### 8.2 A real non-Einstein solution at zero action cosmological constant

Let \(H\) be a nonzero real constant and take

\[
e^0=dt,\qquad e^i=e^{Ht}dx^i,\qquad
\omega^{0i}=He^i,\qquad\omega^{ij}=0.
\]

Direct exterior differentiation gives

\[
T^I=0,\qquad F^{IJ}=H^2e^I\wedge e^J,
\qquad R_{IJKL}=H^2(\eta_{IK}\eta_{JL}-\eta_{IL}\eta_{JK}).
\]

The script verifies the torsion and all six curvature two-forms as exact polynomials in \(H\). Set

\[
B^{IJ}=s e^I\wedge e^J,\qquad
\phi_{IJKL}=\frac{sH^2}{2}(\eta_{IK}\eta_{JL}-\eta_{IL}\eta_{JK}).
\]

Then every full Plebanski equation, including multiplier symmetry and epsilon-trace, is satisfied. Yet

\[
R_{\mu\nu}=3H^2g_{\mu\nu}\ne0.
\]

A finite coordinate wall \(x^1=\text{constant}\) is timelike, has spacelike outward normal \(\pm e^{-Ht}\partial_{x^1}\), and can be assigned its induced metric as the fixed Dirichlet data. Thus the example is compatible with a regional timelike-wall setup.

The same constant curvature on a gravitational branch would require

\[
\phi_{IJKL}=-\frac{sH^2}{2}\epsilon_{IJKL},\qquad
\epsilon^{IJKL}\phi_{IJKL}=12sH^2\ne0,
\]

so it is excluded there at \(\Lambda=0\). This directly exhibits the branch-dependent multiplier obstruction.

## 9. Exact-check interpretation and execution record

The [saved output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/plebanski-independent-covariant-20261031T004402-9b7c-output.json>) contains all 28 labelled results. Principal values are:

| Exact object | Result |
|---|---:|
| Simplicity Jacobian rank, each branch | 20 |
| Coframe tangent-map rank | 16 |
| Covariant torsion map rank | 24 |
| Gravitational multiplier-admissibility rank on algebraic curvature | 10 |
| Ricci-map rank, and stacked rank with multiplier conditions | 10, 10 |
| Constant-curvature \(\lambda=1\) scalar curvature | 12 |
| Topological / gravitational candidate multiplier epsilon trace at \(\lambda=1\) | 0 / 12 |
| Gravitational / topological BF-shift simplicity violation | −2 / +2 |
| Gravitational adapted-wall Lagrangian coefficient of \(e^{012}\) at \(\kappa=s=1\) | \(-K^0{}_0-K^1{}_1-K^2{}_2\) |

The tangent/constraint rank checks and polynomial corner checks exhaust their finite algebraic spaces; they are exact identities at an arbitrary nondegenerate point, not statistical numerical support. They do not establish a nonlinear global canonical or BV theorem.

Execution history is stated explicitly: the first attempt stopped before producing a result because Python `list(matrix)` returns Sage row vectors, not flattened matrix entries. Replacing that conversion by the matrix `.list()` method resolved the implementation error. A fresh run then passed the original 26 checks. Two explicit de Sitter Cartan checks were added, and the final fresh run produced the saved 28/28 output with no warnings or exceptions. An intermediate tool response printed the `runpy` namespace and was truncated; the final invocation assigned that namespace and returned the full compact actual output. No truncation is being treated as a verification result.

## 10. Limited review of the separately supplied canonical diagnostic

This section reviews only the later parent-supplied formulas, without rerunning their CAS or reading their source/candidate notes. It does not contribute to the independent branch derivation above.

For the reported ambient linearized variables and conventions,

\[
\Theta_\Sigma=\frac1\kappa\int(p\,\delta K+q\,\delta\Gamma),
\]

one obtains \(\{q_A,\Gamma_B\}=-\kappa\delta_{AB}\), consistently with \(\Omega=\delta\Theta\). With \(\omega^{ij}=-\epsilon^{ij}{}_k\Gamma^k\), a homogeneous \(\Gamma=\gamma1\) produces \(R_{\rm spatial}=-6\gamma^2\). This confirms the sign of

\[
L_\Gamma=\frac{\operatorname{tr}\Gamma^2-(\operatorname{tr}\Gamma)^2}{2\kappa},
\qquad H_\Gamma=-L_\Gamma.
\]

Preservation of symmetric primary \(q_A\) gives the map

\[
\operatorname{sym}\Gamma-(\operatorname{tr}\Gamma)1.
\]

Its eigenvalues on \(\mathrm{Sym}_3\) are \(1\) on the five traceless directions and \(-2\) on the trace direction. Thus the quoted local six-pair second-class diagnostic and bracket sign are analytically consistent. Whether the torsion matrix is written \(\operatorname{tr}\Gamma\,1-\Gamma\) or its transpose depends on the declared placement of spatial/internal matrix indices; the rank and symmetric-block conclusions are unchanged.

An essential scope condition is to use a **time-gauge background**, or a partial fixing of boost directions, while retaining the ambient off-constraint variations \(q_A\). If full tetrad time gauge *and* simplicity have already been substituted, then \(q=0\) identically and that already-reduced space cannot simultaneously be used to calculate the unreduced \(\{q_A,\Gamma_B\}\) bracket. The homogeneous check is not a calculation of the derivative-dependent nonlinear secondary constraint algebra, its global rank, or the complete gauge group.

## 11. What is and is not established

**Established within the declared regular regional domain:** natural BF potential; explicit signed EC versus topological branch reductions; the full multiplier reconstruction; torsion and tangent-connection elimination without an unrestricted gauge quotient; branch-dependent wall actions in reconstructed simple \(B\) data; corner cancellation with the stated CPS convention; \(s\chi\) times the EH+GHY form on gravitational branches; zero induced form on topological branches; explicit failure of unrestricted BF shift to preserve simplicity; and an explicit non-Einstein topological solution.

**Conditions retained:** real nondegenerate local coframes; a selected simplicity/orientation sheet; Lorentz-valued connection; smooth extension to a fixed timelike metric-Dirichlet wall; the displayed wall actions; a torsion-compatible solution-space/boundary descent; no independent edge-mode or joint theory; fixed positive \(\kappa\); and \(\Lambda=0\).

**Not established:** equivalence across degenerate strata or changes of sheet; a canonical extension of the wall functional to all nonsimple off-shell \(B\); a full nonlinear Dirac/BV/global reduction theorem; integrability and global quotient of every topological null direction; large-gauge or bundle/topology classification; global well-posedness of the timelike Einstein initial-boundary value problem; or quantum equivalence. No nested independent reviewer could be launched under the delegation-depth limit; the present derivation is the fresh independent review of the parent research, supplemented by the stated exact kernel checks.
