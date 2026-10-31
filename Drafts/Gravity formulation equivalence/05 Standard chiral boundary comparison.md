# Standard chiral CS versus Einstein–GHY–counterterm boundary data

## Result and proof level

**Proved on the specified Bañados collar and its smooth fillings with fixed transition data.** The independently specified chiral CS action and the metric Einstein–GHY–counterterm action do not have identical finite-wall variational problems. Their wall-action defect is

\[
\boxed{(B+l_\chi-l_g)|_{r=R}
=-\frac{k}{\pi R^2}\,\mathcal L_+\mathcal L_-\,\tau,\qquad
\tau=-dt\wedge d\phi.}
\tag{0.1}
\]

It vanishes in the Brown–Henneaux limit, uniformly on finite time intervals and bounded smooth sets of the boundary functions. The actual corner defect of these prescriptions vanishes on the radial, normal-adapted frame slice. Consequently their pulled-back integrated presymplectic forms coincide there, without replacing the standard chiral action by an artificially matched action.

This closes the boundary-prescription comparison on this slice. By itself it is **not** a global bijection between independently reduced gravitational solution spaces, an off-shell equivalence of all boundary sources, or a quantum-equivalence statement. The subsequent [complete-sector theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>) supplies the global classical quotient argument for an explicitly geodesically complete geometric domain. Finite-wall Dirichlet gravity is not the same variational problem as chiral CS with freely varying stresses.

The new calculation uses the local identities already proved in the [boundary/corner report](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/02 Boundary and corner calculation.md>), but specifies the two boundary actions independently before comparing them.

## 1. Conventions, coordinates, and domain

Use

\[
\eta_{ab}=\operatorname{diag}(-,+,+),\quad
\epsilon=e^0\wedge e^1\wedge e^2,\quad
\gamma=\frac1{16\pi G},\quad k=\frac\ell{4G}=4\pi\gamma\ell.
\]

The fundamental matrices are

\[
J_0=\frac12\begin{pmatrix}0&1\\-1&0\end{pmatrix},\quad
J_1=\frac12\begin{pmatrix}0&1\\1&0\end{pmatrix},\quad
J_2=\frac12\begin{pmatrix}1&0\\0&-1\end{pmatrix},
\qquad \operatorname{tr}(J_aJ_b)=\frac12\eta_{ab}.
\]

On an outer collar take dimensionless coordinates

\[
u=t+\phi,\qquad v=\phi-t,\qquad \phi\sim\phi+2\pi,
\]

and write \(a=\mathcal L_+(u)\), \(b=\mathcal L_-(v)\). Both functions are real and smooth periodic. If the other convention is \(x^-=t-\phi\), then \(v=-x^-\) and \(\mathcal L_-^{(v)}(v)=\mathcal L_-^{(x^-)}(-v)\). The orientation-preserving lift is correspondingly \(f_v(v)=-f_{x^-}(-v)\); this is not an illicit reversal of the chiral orbit orientation.

The radial representative is

\[
A=J_2\frac{dr}{r}+\begin{pmatrix}0&a/r\\r&0\end{pmatrix}du,
\qquad
\bar A=-J_2\frac{dr}{r}+\begin{pmatrix}0&-r\\-b/r&0\end{pmatrix}dv.
\tag{1.1}
\]

These connections are flat for arbitrary such \(a,b\). Define

\[
e=\frac\ell2(A-\bar A),\qquad \omega=\frac12(A+\bar A),\qquad
D=r^2-\frac{ab}{r^2}.
\]

Only the outer collar \(D>0\), \(r>0\), is used; boundary cuts are chosen sufficiently far out that \(q_{\phi\phi}>0\). The condition \(D>0\) alone fixes the timelike-wall branch, not the causal character of every coordinate circle deeper inside. This is not a claim that (1.1) supplies a regular radial chart at the center. For bounded \(a,b\), a common sufficiently large collar exists, locally uniformly in field space. The coframe orientation is

\[
\epsilon=-\ell^3\frac{D}{r}\,dt\wedge d\phi\wedge dr,
\qquad n=\frac r\ell\partial_r,
\qquad \epsilon_\Gamma=\iota_n\epsilon=\ell^2D\,\tau.
\tag{1.2}
\]

Here \(e^0_t<0\); the chosen future direction is the one for which \(-e^0\) is positive. The coordinate-volume sign is explicit and must not be replaced by \(+dt\wedge d\phi\wedge dr\). All wall coefficients below multiply \(\tau\), the induced oriented coordinate two-form.

The CPS conventions are \(d\delta=\delta d\), \(\Omega=\delta\Theta\), \(\Theta=\int_\Sigma\theta-\oint C\), and \(\iota_{X_H}\Omega=-\delta H\), as in the [authoritative formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L7-L25>). Embeddings and the cutoff coordinate \(R\) are fixed under variation.

## 2. The chiral action, specified before comparison

Let \(\widetilde A=A_rdr+A_\phi d\phi\), and let \(\widetilde F\) be its spatial curvature. The exact canonical decomposition is

\[
\operatorname{cs}(A)=dt\wedge\operatorname{tr}
\left(-\widetilde A\wedge\dot{\widetilde A}+2A_t\widetilde F\right)
+d\left[dt\wedge\operatorname{tr}(A_t\widetilde A)\right].
\tag{2.1}
\]

The last term cannot be discarded when identifying a covariant wall Lagrangian. Starting with the canonical CS bulk action and the chiral Hamiltonian wall term

\[
-\frac{k}{4\pi}\int_\Gamma
\operatorname{tr}(A_\phi^2+\bar A_\phi^2)\,\tau,
\tag{2.2}
\]

the equivalent covariant specification is

\[
S_\chi=\frac{k}{4\pi}\int_M
[\operatorname{cs}(A)-\operatorname{cs}(\bar A)]
+\int_\Gamma l_\chi,
\]

\[
\boxed{l_\chi=\frac{k}{4\pi}\operatorname{tr}
\left(A_tA_\phi-\bar A_t\bar A_\phi-A_\phi^2-\bar A_\phi^2\right)\tau.}
\tag{2.3}
\]

Indeed, the pullback of the total derivative in (2.1) is
\(-\operatorname{tr}(A_tA_\phi)\tau\). On fixed-time caps this particular two-form pulls back to zero. Thus (2.3), rather than (2.2) alone, is the wall term to add to the covariant CS three-form.

This is the canonical chiral prescription in Cotler–Jensen, [arXiv:1808.03263v3](https://arxiv.org/abs/1808.03263v3), PDF pp. 20–21 / printed pp. 19–20, (3.14)–(3.18), with their \(\ell=1\) restored and the oriented form convention made explicit. Both pages were visually inspected. Their expression in temporal/spatial variables uses the spatial ordering \((\phi,r)\); converting to the coframe orientation in (1.2) accounts for the bulk coordinate sign. The boundary variation below gives a separate, unambiguous normalization/sign check.

The natural covariant potential is

\[
\theta_{\rm CS}=-\frac{k}{4\pi}
\operatorname{tr}(A\wedge\delta A-\bar A\wedge\delta\bar A).
\]

Before imposing any chirality condition, direct variation gives

\[
\boxed{(\theta_{\rm CS}+\delta l_\chi)|_\Gamma
=\frac{k}{2\pi}\operatorname{tr}
\left[(A_t-A_\phi)\delta A_\phi
-(\bar A_t+\bar A_\phi)\delta\bar A_\phi\right]\tau.}
\tag{2.4}
\]

There is no tangential integration by parts here. With the unmodified action representative (2.3) and exact chiral boundary conditions

\[
A_t=A_\phi,\qquad \bar A_t=-\bar A_\phi,
\tag{2.5}
\]

one can and does take \(C_\chi=0\). In CJ's components \(A_-=(A_\phi-A_t)/2\), \(\bar A_+=(\bar A_\phi+\bar A_t)/2\), (2.4) is precisely the coefficient \(-k/\pi\) multiplying \(\operatorname{tr}(A_-\delta A_\phi+\bar A_+\delta\bar A_\phi)\). Equation (1.1) satisfies (2.5), and \(l_\chi=0\) on this slice. A vanishing restricted wall density does not mean its unrestricted variation can be discarded before (2.4).

## 3. Metric Dirichlet descent with arbitrary fixed-wall variations

Independently specify

\[
S_g=\gamma\int_M(R+2/\ell^2)\epsilon
+\int_\Gamma l_g,\qquad
l_g=2\gamma(K-\ell^{-1})\epsilon_\Gamma,
\tag{3.1}
\]

where \(K_{ij}=q_i{}^\mu q_j{}^\nu\nabla_\mu n_\nu\) and \(q\) is the induced metric. No extra spacelike-cap or Hayward-joint action is added in this representative; adding one changes endpoint data and must be tracked separately.

For \(h_{\mu\nu}=\delta g_{\mu\nu}\), define the tangential vector

\[
w^i=q^{i\mu}n^\nu h_{\mu\nu}.
\]

The exact off-shell boundary identity is

\[
\boxed{(\theta_g+\delta l_g)|_\Gamma
=\gamma\big[(K-\ell^{-1})q^{ij}-K^{ij}\big]\delta q_{ij}\,\epsilon_\Gamma+dC_g,
\qquad C_g=-\gamma\iota_w\epsilon_\Gamma.}
\tag{3.2}
\]

Here \(\theta_g=\gamma(\nabla_\nu h^{\mu\nu}-\nabla^\mu h)\iota_{\partial_\mu}\epsilon\). In Gaussian coordinates at the background wall, put \(H=q^{ij}h_{ij}\) and \(h_{nn}=h_{\mu\nu}n^\mu n^\nu\). The two elementary geometric identities are

\[
n_\mu(\nabla_\nu h^{\mu\nu}-\nabla^\mu h)
=D_iw^i-K^{ij}h_{ij}+Kh_{nn}-\partial_n H,
\]

\[
\delta K=\frac12\partial_n H-D_iw^i-\frac12Kh_{nn},\qquad
\delta\epsilon_\Gamma=\frac12H\epsilon_\Gamma.
\]

Their sum gives (3.2), including the minus sign of \(C_g\), since \(d\iota_w\epsilon_\Gamma=(D_iw^i)\epsilon_\Gamma\). This is valid for arbitrary mixed and normal metric variations, not only for \(h_{n\mu}=0\). An independent derivation and generic-jet verification are retained in the [metric-boundary review](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-wall-corner-20261030-2313-ec35c5d3bc2d.md>).

### 3.1 What fixing the internal normal actually removes

Set \(N^a=e^a(n)\), \(E^a=e^a|_\Gamma\), and use the Lorentzian boundary Hodge star defined by \(\beta\wedge *_\Gamma\chi=\langle\beta,\chi\rangle_q\epsilon_\Gamma\). Then the following is an algebraic identity, requiring neither torsion-freeness nor Einstein's equation:

\[
\boxed{(C_g-\alpha)|_\Gamma
=-2\gamma *_\Gamma(N_a\delta E^a)
=2\gamma *_\Gamma(E^a\delta N_a),\qquad
\alpha=\gamma*(e_a\wedge\delta e^a).}
\tag{3.3}
\]

For example, at a point with \(N^a=(0,0,1)\), write \(\delta e^a=m^a{}_b e^b\). Then

\[
\alpha|_\Gamma=\gamma[-(m^0{}_2+m^2{}_0)e^1+(m^1{}_2-m^2{}_1)e^0],
\]

\[
C_g=\gamma[(-m^0{}_2+m^2{}_0)e^1+(m^1{}_2+m^2{}_1)e^0].
\]

Since \(*_\Gamma e^0=-e^1\), \(*_\Gamma e^1=-e^0\), their difference proves (3.3). Varying \(N_aE^a=0\) proves its second form.

Thus on a fixed-internal-normal slice, \(\delta N^a=0\), one has \(C_g=\alpha\) on the wall, including their pulled-back field-space derivatives. More precisely, writing the right side as \(2\gamma(*_\Gamma E_a)\delta N^a\) shows that its exterior derivative also vanishes on any pair of tangent vectors that both obey \(\delta N=0\) at a point. The regular distribution \(\ker dN\) is the integrable level-set distribution of the internal-normal map. Merely checking that the one-form evaluates to zero on two selected vectors, without these normal conditions, would not imply that its exterior derivative vanishes. A normal–tangent Lorentz rotation need not preserve the slice; a tangential \(SO(1,1)\) boost does. Metric radial gauge alone does not remove the frame obstruction.

For the stronger radial frame choice in (1.1),

\[
g_{ri}=0,\quad g_{rr}=\ell^2/r^2,\qquad
e_i^2=e_r^0=e_r^1=0,\quad e_r^2=\ell/r,
\tag{3.4}
\]

and variations preserving it give separately

\[
C_g|_\Gamma=0,\qquad \alpha|_\Gamma=0.
\tag{3.5}
\]

The vanishing of \(\alpha|_\Gamma\) follows also because \(e_a\wedge\delta e^a\) is a tangential two-form and its three-dimensional Hodge dual is normal.

## 4. Exact finite-cutoff calculation

The metric reconstructed from (1.1) is

\[
ds^2=\ell^2\left[\frac{dr^2}{r^2}
+a\,du^2+b\,dv^2+\left(r^2+\frac{ab}{r^2}\right)du\,dv\right].
\tag{4.1}
\]

In \((t,\phi)\) coordinates its induced matrix is

\[
q_{ij}=\ell^2\begin{pmatrix}
-r^2+a+b-ab/r^2&a-b\\
a-b&r^2+a+b+ab/r^2
\end{pmatrix},\qquad
\det q=-\ell^4D^2.
\]

Consequently

\[
K=\frac r\ell\partial_r\log(\ell^2D)
=\frac2\ell\frac{r^2+ab/r^2}{r^2-ab/r^2},
\]

\[
\boxed{l_g=2\gamma\ell\left(r^2+\frac{3ab}{r^2}\right)\tau.}
\tag{4.2}
\]

The established transgression is \(L_{\rm CS}=L_g+dB\) on the torsion-free coframe pullback, with

\[
B=-\gamma\omega_a\wedge e^a
=\gamma\ell\operatorname{tr}(A\wedge\bar A).
\]

Using \(du\wedge dv=2dt\wedge d\phi=-2\tau\), direct matrix multiplication yields

\[
\boxed{B|_\Gamma=2\gamma\ell\left(r^2+\frac{ab}{r^2}\right)\tau.}
\tag{4.3}
\]

Together with \(l_\chi=0\), this proves (0.1). In a single common trivialization, with the stated cap convention, the full action relation reads

\[
S_\chi-S_g=\int_{\Sigma_f}B-\int_{\Sigma_i}B
-\frac{k}{\pi R^2}\int_{\Gamma_R}ab\,\tau.
\tag{4.4}
\]

**Global qualification:** (0.1) is an exact collar-density statement. If a polar SL frame cannot be extended over the disk as one trivialization, (4.4) requires the corresponding overlap descent contributions. They have not been evaluated here. In particular, neither (0.1) nor taking \(R\to\infty\) removes endpoint or spin-frame transition phases in the quantum theory.

### 4.1 The nonzero finite-wall source

Substituting the matrix \(q\) into (3.2), at fixed \(R\), gives

\[
\boxed{(\theta_g+\delta l_g)|_{\Gamma_R}
=\frac{k}{\pi R^2}\,\delta(ab)\,\tau.}
\tag{4.5}
\]

The same result follows from \(\theta_{\rm CS}=\theta_g+\delta B-d\alpha\), \(\theta_{\rm CS}|_\Gamma=0\), and (3.5). This provides an independent sign check on (4.2)–(4.3).

Arbitrary stress variations do not preserve \(q_{ij}\) at finite \(R\). Accordingly, (4.5) is generically nonzero: the metric action (3.1) is not stationary on that whole finite-wall family, whereas the chiral CS action is. Finite Dirichlet conditions \(\delta q=0\) and fixed leading Brown–Henneaux source \(\delta q^{(0)}=0\) must not be identified.

For smooth bounded stresses and tangent variations, (4.5) is \(O(R^{-2})\); hence the asymptotic variational problems agree on this slice. This statement concerns finite time slabs. It does not interchange an infinite-time action integral with the cutoff limit. The finite-wall source is field-space exact, so its field-space curl vanishes on the restricted family; nonstationarity of the finite-wall action does not imply nonzero symplectic flux there.

## 5. The integrated presymplectic comparison

For the independently fixed prescriptions above, \(C_\chi=0\). On the fixed-normal slice, (3.3) gives \(C_g=\alpha\). Therefore

\[
\begin{split}
\Omega_\chi-\Omega_g
&=\int_\Sigma(\omega_{\rm CS}-\omega_g)
+\delta\oint_{\partial\Sigma}C_g\\
&=\delta\oint_{\partial\Sigma}(C_g-\alpha)=0.
\end{split}
\tag{5.1}
\]

This is the actual corner test, not an inference from equality of bulk equations or the Virasoro algebra. On (3.4), both terms in the integrand vanish separately. At finite \(R\), (5.1) compares the pulled-back regional two-forms; because of (4.5), it must not be relabeled as equivalence of two finite-wall Dirichlet variational problems. In the Brown–Henneaux limit the wall source vanishes and these are the corresponding CPS forms.

For any smooth fillings with a common collar (1.1), convergence of this two-form comparison is particularly simple. Tangent variations obey \(\delta A_r=\delta\bar A_r=0\), and each chirality varies only along its one tangential light-cone form. Thus the CS symplectic current vanishes identically in the collar. The regulated CS integral is independent of the cutoff once the cut lies in that collar. Equation (5.1) proves the same cutoff independence for the integrated metric form. The interior/transition region carries the nonzero orbit form; a zero collar current does not imply a zero reduced symplectic form.

The current proof needs less global data than (4.4): if patch transitions are fixed, field-independent diagonal Lorentz transformations, then \(\alpha\), \(\delta\alpha\), and the current identity glue, even when \(B\) itself does not. This suffices for Stokes' theorem in (5.1). Field-dependent transition functions require additional overlap variations and are outside this established result.

## 6. Tests, scope, and the remaining interface

The [runnable Wolfram suite](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/chiral_boundary_checks.wl>) and [actual machine output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/verification/chiral_boundary_checks.results.json>) give **19 exact passed checks**, including the generic canonical total derivative, unrestricted chiral wall variation, induced metric/extrinsic trace, independent direct \(\omega\wedge e\) transgression, source, cutoff limits, and corner pullback. The message list and nonzero-residual list are empty. The transparent normalization is \(\operatorname{Cancel}\circ\operatorname{Together}\); no numerical tolerance is used.

Special cases include the global vacuum \(a=b=-1/4\), for which the wall defect is \(-k/(16\pi R^2)\,\tau\), and \(ab=0\), for which it is zero already at finite cutoff. These are diagnostics, not substitutes for the arbitrary-\(a,b\) calculation. Generic metric variations and non-adapted Lorentz variations were analyzed independently rather than inferred from these examples.

Two fresh reviewers independently derived the metric descent and the canonical/chiral comparison from the questions and conventions, without being supplied the candidate wall coefficient. Their evidence is indexed in the [review record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/Independent reviews.md>).

**What is now established:** the standard chiral prescription has the same pulled-back asymptotic integrated two-form as metric Einstein–GHY–counterterm/Harlow–Wu on these geometric representatives, and the finite-wall action/source discrepancy is explicitly known.

**What is not established by this calculation:** that every connection in an independently defined CS vacuum sector admits an admissible nondegenerate smooth filling in this slice; that the full proper gauge equivalence relations agree; that all smooth BH metrics belong to the global-AdS diffeomorphism orbit; global action-overlap phases; arbitrary source variations; or any equality of quantum measures and representations.

The remaining classical interface after this calculation is global admissibility, smooth filling, and the finite gauge relation, not another local transgression calculation. It is resolved for the explicitly geodesically complete geometric domain in the subsequent [complete-sector theorem](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/06 Complete vacuum sector theorem.md>); the broader and quantum qualifications above remain.
