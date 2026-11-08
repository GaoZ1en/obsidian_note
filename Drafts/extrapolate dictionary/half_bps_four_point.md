# A neutral IIB four-point sector: contact extrapolation and the required graviton

## 1. What is determined, and what is not

There is a useful four-scalar channel in the actual two-derivative IIB reduction in which **all retained $20'$ scalar and $SO(6)$ vector exchange vertices vanish**, but gravity does not decouple. Choose the unit $20'$ polarization

$$
Y=\frac1{\sqrt6}\operatorname{diag}(1,1,1,-1,-1,-1),\qquad
\operatorname{Tr}Y^2=1.
\tag{1.1}
$$

For four identical components, the classical connected tree consists of a quartic potential contact and graviton exchange in the three pairings. The canonical quartic coupling is

$$
\boxed{\lambda_4=-\frac{32\kappa_5^2}{3\ell^2},\qquad
S_{E,\mathrm{int}}=\int\sqrt g\,\frac{\lambda_4}{4!}\phi^4.}
\tag{1.2}
$$

This report computes its finite-radial contact coefficient, proves the joint boundary limit for overlapping Schwartz sources, and determines the leading quadratic radial correction. The boundary contact has constant Mellin amplitude $16/(3N^2)$ in the convention below. It cannot reproduce the nonzero stress-tensor three-point coefficient squared $8/(45N^2)$ in the explicitly specified tensor normalization.

**The full graviton exchange is not evaluated here.** Its finite-insertion stress sources are not conserved: their divergences contain interior insertion contacts. This identifies a concrete obstruction to replacing the required full off-shell inverse by a transverse propagator borrowed from a boundary Witten diagram. The result is an evaluated contact contribution and a quantitative diagnostic for the missing exchange, not a completed supergravity four-point function.

## 2. The actual reduction and the neutral scalar restriction

### 2.1 Conventions and the general quartic scalar action

Continue the [BF/IIB conventions](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps.md>) and the bulk insertion prescription of the [reference](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>): $\Omega=z/\ell$, $E=\nabla^2+4/\ell^2$, $EG=-\delta_g$, conformal source measure $d^4x$, and $W=\log[Z[J]/Z[0]]$. Radial mollification precedes the thin-layer limit. The BF vacuum is logfree and includes its quadratic boundary completion.

Write $\kappa=\kappa_5$, $T=e^t$, $t=2\kappa\Phi$, $\Phi=\phi^IY^I$, with real symmetric traceless matrices normalized by $\operatorname{Tr}Y^IY^J=\delta^{IJ}$. The reduction contains

$$
S_L=\frac1{2\kappa^2}\int\sqrt{-g}
\left[R-\frac14\operatorname{Tr}(T^{-1}DT)^2-V+\text{vector terms}\right],
\qquad
V=\frac1{2\ell^2}\left[2\operatorname{Tr}T^2-(\operatorname{Tr}T)^2\right].
\tag{2.1}
$$

Expanding in logarithmic matrix coordinates gives

$$
V=-\frac{12}{\ell^2}-\frac{\operatorname{Tr}t^2}{\ell^2}
+\frac{\operatorname{Tr}t^3}{3\ell^2}
+\frac1{\ell^2}\left[\frac5{12}\operatorname{Tr}t^4
-\frac18(\operatorname{Tr}t^2)^2\right]+O(t^5),
$$

$$
\operatorname{Tr}(e^{-t}de^t)^2
=\operatorname{Tr}(dt)^2-\frac1{12}\operatorname{Tr}[t,dt]^2+O(t^5).
\tag{2.2}
$$

The quadratic term in the commutator expansion follows from
$\operatorname{Tr}(dt[t,[t,dt]])=-\operatorname{Tr}[t,dt]^2$. Thus the pure-scalar Euclidean quartic density, excluding its volume form, is

$$
\boxed{
\mathcal L_{E,4}=-\frac{\kappa^2}{6}
\operatorname{Tr}([\Phi,\nabla_\mu\Phi][\Phi,\nabla^\mu\Phi])
+\frac{\kappa^2}{\ell^2}\left[\frac{10}{3}\operatorname{Tr}\Phi^4
-(\operatorname{Tr}\Phi^2)^2\right].}
\tag{2.3}
$$

For general polarizations the potential vertex is

$$
\lambda^{\mathrm{pot}}_{IJKL}=\frac{\kappa^2}{\ell^2}
\left[80\operatorname{STr}(Y^IY^JY^KY^L)
-8(\delta_{IJ}\delta_{KL}+\delta_{IK}\delta_{JL}+\delta_{IL}\delta_{JK})\right],
\tag{2.4}
$$

where $\operatorname{STr}$ averages over all $4!$ permutations. This potential tensor does not replace the derivative vertex or the vector/graviton exchanges in a generic $20'$ four-point function.

### 2.2 Exact one-scalar potential and exchange selection

Restrict to $\Phi=\phi Y$ with (1.1). Since $Y^2=\mathbf1_6/6$,

$$
\lambda_{YYI}=\frac{8\kappa}{\ell^2}\operatorname{Tr}(Y^2Y^I)=0
\quad\text{for every }20'\text{ component }I.
\tag{2.5}
$$

The identical-component vector current vanishes as well: its group factor is $\operatorname{Tr}(Y[Q^a,Y])=0$. More strongly, $[t,dt]=0$ on this entire field ansatz, so its exact vector source vanishes, not only the cubic approximation.

Put $a=2\kappa\phi/\sqrt6$. Then

$$
T=\operatorname{diag}(e^a\mathbf1_3,e^{-a}\mathbf1_3),\qquad
\operatorname{Tr}(T^{-1}dT)^2=4\kappa^2(d\phi)^2,
$$

$$
\mathcal V(\phi)=\frac{V}{2\kappa^2}
=-\frac{3}{2\kappa^2\ell^2}
\left[3+\cosh\left(\frac{4\kappa\phi}{\sqrt6}\right)\right]
=-\frac6{\kappa^2\ell^2}-\frac{2\phi^2}{\ell^2}
-\frac{4\kappa^2\phi^4}{9\ell^2}+O(\phi^6).
\tag{2.6}
$$

There is no pure-$\phi$ derivative quartic. The mass is the BF value $-4/\ell^2$, and the fourth derivative of $\mathcal V$ gives (1.2).

The restriction closes within the retained scalar sector: the traceless part of $2T^2-(\operatorname{Tr}T)T$ is proportional to $Y$, and $d(T^{-1}*dT)$ also lies along $Y$. The transverse scalar forces vanish. The metric, however, is sourced quadratically and must remain dynamical. This is an Einstein–scalar restriction, not a fixed-background scalar-only truncation.

### 2.3 Consistency is not the absence of higher harmonics

The metric/five-form reduction retaining gravity, 15 vectors and the $20'$ permits the other maximal-supergravity fields to be consistently set to zero. The diagonal restriction above then eliminates the vector sources. Thus, in truncation-adapted variables, no additional independent omitted-field propagators are appended to the four-identical-$Y$ tree.

This statement uses nonlinear consistent truncation; it does not follow solely from (2.5). For example, on $\mathbb R^6$ let $q(\xi)=\xi^TY\xi$, $r^2=\xi^T\xi$. Then

$$
q^2=H_4+\frac{r^4}{24},\qquad \Delta_{\mathbb R^6}H_4=0,
\qquad H_4(1,0,\ldots,0)=\frac18.
\tag{2.7}
$$

The product has nonzero degree-four harmonic content despite its vanishing degree-two projection. Therefore neither a vanishing extremal $\langle O_2O_2O_4\rangle$ nor the absence of protected dimension-four operators in the CFT OPE may be inferred. Nonlinear KK maps, extremal boundary contributions and operator mixing distinguish exchange bookkeeping in a consistent five-dimensional variable from a decomposition of the full CFT operator algebra.

Source scope is important. [hep-th/0003103v2](<https://arxiv.org/pdf/hep-th/0003103v2>) gives the retained sector on PDF p.3/printed p.2, the equations/action/potential on PDF p.5/printed p.4, eqs.(7)–(9), and the diagonal exception on PDF pp.6–7/printed pp.5–6. These pages were visually checked in the independent source audit. The same paper notes the limits of its original ten-dimensional Einstein-equation checks. The full nonlinear consistency result is supplied by [1506.01385v2, abstract and §1](<https://arxiv.org/html/1506.01385v2>), consulted in HTML; it is not attributed to the older partial check alone.

## 3. The evaluated finite-radius contact contribution

Define the unit field and Newton normalization by

$$
U=\mathcal N\Omega^{-2}\phi,\qquad
\mathcal N=\sqrt{2\pi^2/\ell},\qquad
\kappa^2=\frac{4\pi^2\ell^3}{N^2}.
\tag{3.1}
$$

The scalar quartic action in these variables is

$$
S_{E,4}=-\frac4{9\pi^2N^2}\int_0^\infty du\,u^3\int d^4v\,U(u,v)^4.
\tag{3.2}
$$

This sign is a local coupling of a formal tree expansion, not a positive real quartic measure. Write the free unit covariance from a finite slice as

$$
C_z(u,r)=\frac{r^2+u^2+z^2}
{[(r^2+(u-z)^2)(r^2+(u+z)^2)]^{3/2}},
\qquad
C_0(u,r)=\frac1{(u^2+r^2)^2},
$$

$$
\widehat C_z(u,k)=2\pi^2 I_0(k\min(u,z))K_0(k\max(u,z)).
\tag{3.3}
$$

The connected four-point contact coefficient, with all four radii independent, is therefore

$$
\boxed{
\mathcal G^{\rm ct}_{\boldsymbol z}(x_1,\ldots,x_4)
=\frac{32}{3\pi^2N^2}\int_0^\infty du\,u^3\int d^4v
\prod_{i=1}^4 C_{z_i}(u,v-x_i).}
\tag{3.4}
$$

For a general canonical quartic the prefactor would be $-\lambda_4/(4\pi^4\ell)$. Wick contractions cancel the vertex factorial. In Euclidean momentum space, with the total-momentum delta removed,

$$
\boxed{
\widetilde{\mathcal G}^{\rm ct}_{\boldsymbol z}(k_i)
=\frac{512\pi^6}{3N^2}\int_0^\infty du\,u^3
\prod_{i=1}^4 I_0(k_i\min(u,z_i))K_0(k_i\max(u,z_i)),}
\tag{3.5}
$$

where $k_i=|\mathbf k_i|$ and $\sum_i\mathbf k_i=0$. Exact zero momenta are treated distributionally, not assigned finite point values. Equations (3.4)–(3.5) are direct bulk insertion diagrams; neither a wall response nor a one-sided on-shell action has replaced the covariance.

## 4. Boundary theorem and the leading radial correction

Let $\mathcal T_{\boldsymbol z}(j_1,\ldots,j_4)$ be (3.4) paired with four Schwartz sources. The pairing is multilinear, not Hermitian. Put $R=\max_i z_i$ and fix a reference length for logarithms and the split at $u=1$. Then

$$
\boxed{
\mathcal T_{\boldsymbol z}(j_i)
=\mathcal T_{\boldsymbol0}(j_i)
+\frac14\sum_i z_i^2\mathcal T_{\boldsymbol0}(j_1,\ldots,-\Delta j_i,\ldots,j_4)
+O\!\left(R^4(1+|\log R|)^4\right).}
\tag{4.1}
$$

The remainder is uniform on bounded sets of Schwartz sources, for arbitrary overlaps and radius ratios. In particular the joint boundary error is $O(R^2)$ and no quartic source contact subtraction is needed. This is a theorem for the **contact contribution**; it does not assert the same result for the uncomputed graviton exchange. The ordinary quadratic BF subtraction remains necessary in the full Euclidean generating functional.

Here is the estimate. Set $f_z(u)=C_z(u,\cdot)*j$. Hausdorff–Young with Fourier exponent $4/3$, the small-argument logarithm, and the large-argument Bessel bound give

$$
\|f_z(u)\|_4\le C_j
\begin{cases}1+|\log u|,&0<u\le1,\\u^{-3},&u\ge1,\ z\le1/2.
\end{cases}
\tag{4.2}
$$

For the second line use $I_0(kz)K_0(ku)\le C K_0(ku/2)$ and the four-dimensional scaling of the $L^{4/3}$ norm. Hölder bounds the radial integrand by $u^3(1+|\log u|)^4$ near zero and $u^{-9}$ at infinity. Both are integrable. A common Fourier–Schwartz seminorm envelope permits dominated convergence uniformly on bounded source sets, proving the joint boundary limit.

To obtain (4.1), split at $u=2R$. The core contributes $O(R^4(1+|\log R|)^4)$ to the raw or boundary functional. Its quadratic-bias term is smaller by $R^2$. On the complement every external Bessel factor has $z_i<u/2$, and the positive series coefficients imply

$$
0\le I_0(x)-1-\frac{x^2}{4}\le\frac{x^4}{64}I_0(x),\qquad x\ge0.
$$

Consequently

$$
f_z=f_0+\frac{z^2}{4}C_0*(-\Delta j)+e_z,
\qquad
\|e_z(u)\|_4\le C_jz^4
\begin{cases}1+|\log u|,&u\le1,\\u^{-7},&u\ge1.
\end{cases}
\tag{4.3}
$$

The needed $k^4$-weighted Fourier norms are bounded by finitely many Schwartz seminorms. Expanding the product of four legs, all remainders and cross-products of two quadratic biases integrate to $O(R^4)$ on the complement. This proves (4.1). The negative Laplacian is fixed by the positive Fourier factor $k^2$.

The quadratic rate is generically sharp. Choose identical real-even, nonnegative Fourier bumps supported near $\pm p\ne0$, positive on open balls. The momentum-conservation surface intersects their support, and the quadratic coefficient is strictly positive for the coupling in (3.4). An arbitrary nonnegative Fourier source without this support condition need not give a nonzero coefficient.

For a concrete momentum check, take all $k_i=1$ and $z_i=R(1,1/2,1/3,1/4)$. If $J(R)$ denotes the radial integral in (3.5),

$$
\frac{J(R)-J(0)}{R^2}\longrightarrow
\frac{205}{576}\int_0^\infty du\,u^3K_0(u)^4
=0.02685284592198\ldots .
\tag{4.4}
$$

The saved calculation evaluates unequal-radius examples with a separate analytic tail bound. No exact zeta-value reduction of this Bessel moment is required for the result.

## 5. Boundary contact kernel, flat box and Mellin constant

Define the unnormalized AdS contact integral explicitly by

$$
D_{2222}(x_i)=\int_0^\infty du\,u^3\int_{\mathbb R^4}d^4v
\prod_i(u^2+|v-x_i|^2)^{-2}.
$$

With $s_{ij}=|x_i-x_j|^2$, $Q(\alpha)=\sum_{i<j}\alpha_i\alpha_js_{ij}$ and $\sum_i\alpha_i=1$, Schwinger integration gives

$$
\boxed{
D_{2222}=3\pi^2\int_{\alpha_i\ge0,\,\sum\alpha_i=1}
\frac{\alpha_1\alpha_2\alpha_3\alpha_4\,d^3\alpha}{Q(\alpha)^4},
\qquad
\mathcal G^{\rm ct}_{\partial}=\frac{32}{3\pi^2N^2}D_{2222}.}
\tag{5.1}
$$

The factors are $\pi^2/T^2$ from the four-dimensional Gaussian, $1/(2T^2)$ from $\int u^3e^{-Tu^2}du$, and $\Gamma(4)=6$ from the Schwinger scale. This also gives a convergent simplex representation for separated points.

A useful reduction is to the finite flat-space box

$$
B(x_i)=\int_{\mathbb R^4}d^4v\prod_i|v-x_i|^{-2}
=\pi^2\int_{\sum\alpha_i=1}\frac{d^3\alpha}{Q(\alpha)^2}.
$$

Treating the six squared separations as independent analytic variables,

$$
\boxed{D_{2222}=\frac12\partial_{s_{12}}\partial_{s_{34}}B.}
\tag{5.2}
$$

If $A=s_{13}s_{24}$, $u_c=s_{12}s_{34}/A$, $v_c=s_{14}s_{23}/A$, and $B=\pi^2\Phi(u_c,v_c)/A$, this is $D_{2222}=\pi^2\partial_{u_c}(u_c\partial_{u_c}\Phi)/(2A^2)$. The box is not the literal AdS$_5$ bulk $D_{1111}$ integral: the latter has a boundary logarithmic divergence because $\sum\Delta_i=d$.

Fix the Mellin convention

$$
\mathcal G(x_i)=\int\frac{d\delta_{12}d\delta_{14}}{(2\pi i)^2}
M(\delta)\prod_{i<j}\Gamma(\delta_{ij})s_{ij}^{-\delta_{ij}},
\qquad \sum_{j\ne i}\delta_{ij}=2.
\tag{5.3}
$$

The Symanzik parameter identity gives a prefactor $\pi^2/2$ for $D_{2222}$ in this convention, and hence

$$
\boxed{M_{\rm ct}=\frac{16}{3N^2}.}
\tag{5.4}
$$

Writing $\delta_{12}=2-s/2$ and similarly for $t,u$, with $s+t+u=8$, the gamma-function poles start at $s=4+2n$. A constant contact amplitude supplies double-trace twists starting at four, not the twist-two spin-two stress exchange required below.

## 6. A nonzero stress-tensor diagnostic

### 6.1 Ward and normalization conventions

Let $\mathcal O=\lim U$ with $\langle\mathcal O(x)\mathcal O(0)\rangle=|x|^{-4}$. Define

$$
\langle T_{ab}(x)T_{cd}(0)\rangle=\frac{C_T}{|x|^8}\mathcal I_{ab,cd}(x),
\quad I_{ab}=\delta_{ab}-2x_ax_b/x^2,
\quad \mathcal I_{ab,cd}=\tfrac12(I_{ac}I_{bd}+I_{ad}I_{bc})-\tfrac14\delta_{ab}\delta_{cd}.
$$

Use the Ward convention $\partial^a\langle T_{ab}(x)\prod\mathcal O(x_i)\rangle=-\sum_i\delta(x-x_i)\partial_{x_i^b}\langle\prod\mathcal O(x_i)\rangle$, with trace contact $-\Delta\delta$. For separated points put $V_a=(x_3-x_1)_a/s_{31}-(x_3-x_2)_a/s_{32}$. Then

$$
\langle\mathcal O_1\mathcal O_2T_{ab}(x_3)\rangle
=\frac{A_T}{s_{12}s_{31}s_{32}}
\left(V_aV_b-\frac14\delta_{ab}V^2\right),
\qquad
\boxed{A_T=-\frac4{3\pi^2}.}
\tag{6.1}
$$

Indeed the small-sphere dilation flux is $A_T S_3(3/4)=-\Delta=-2$, with $S_3=2\pi^2$. A Ward-preserving contact extension is still needed at coincident points; (6.1) is the separated tensor coefficient.

The Einstein quadratic normalization for $S_L=(2\kappa^2)^{-1}\int\sqrt{-g}(R+12/\ell^2)$ is

$$
C_T=\frac{\Gamma(d+2)}{\pi^{d/2}(d-1)\Gamma(d/2)}\frac{\ell^{d-1}}{\kappa^2}
\bigg|_{d=4}
=\frac{40\ell^3}{\pi^2\kappa^2}=\frac{10N^2}{\pi^4}.
\tag{6.2}
$$

This is the standard stress two-point normalization, not a new four-point calculation. It agrees with the leading protected SYM central charge: $C_T=40c/\pi^4$, $c=(N^2-1)/4$ for $SU(N)$. The classical bulk relation is not changed by hand to $N^2-1$.

For $\widehat T=T/\sqrt{C_T}$, the square of the explicit tensor-three-point coefficient is

$$
\boxed{\lambda_{\mathcal O\mathcal O\widehat T,\mathrm{tensor}}^2
=\frac{A_T^2}{C_T}=\frac8{45N^2}}
\quad\text{at tree level}.
\tag{6.3}
$$

This is not an unqualified conformal-block coefficient. For blocks with leading behavior $g_{\Delta,l}\sim r^\Delta C_l^{(1)}(\eta)$, the tensor contraction $\eta^2-1/4=C_2^{(1)}(\eta)/4$ makes the stress-block coefficient $2/(45N^2)$. Blocks rescaled by $2^{-l}$ instead use (6.3). As a normalization check, the same convention gives the free four-dimensional scalar's spin-two block coefficient $1/3$.

### 6.2 Why the contact graph is insufficient

The $YYI$ and $YY$-current zeros do not affect the metric coupling, proportional to $\operatorname{Tr}Y^2=1$. The four-identical-$Y$ function must contain the nonzero stress contribution (6.3). The contact Mellin constant has no $s=2$ stress pole; its spin-two double traces start at dimension six rather than the stress dimension four. Thus a purported complete four-point answer containing only (3.4), or only scalar reconstruction terms, fails this Ward/OPE test.

This does not use a nonprotected free-SYM four-point function at the supergravity point. It uses protected normalization and the universal stress Ward identity only. It does not exclude the protected higher-dimensional OPE data discussed in §2.3.

## 7. What the finite-radius graviton calculation must retain

Let the unit-insertion external canonical scalar line be

$$
\psi_i(X)=\mathcal N\Omega_i^{-2}G(X,X_i),\qquad
E\psi_i=-J_i,\qquad
J_i=\mathcal N\Omega_i^{-2}\delta_g(X,X_i).
\tag{7.1}
$$

These are first paired with radial mollifiers and spacetime sources. Define the cross-polarized stress

$$
B^{ij}_{ab}=\nabla_a\psi_i\nabla_b\psi_j+\nabla_a\psi_j\nabla_b\psi_i
-g_{ab}(\nabla\psi_i\cdot\nabla\psi_j+m^2\psi_i\psi_j),\qquad m^2=-4/\ell^2.
$$

The covariant product rule and scalar Hessian symmetry imply

$$
\boxed{\nabla^a B^{ij}_{ab}
=-J_i\nabla_b\psi_j-J_j\nabla_b\psi_i.}
\tag{7.2}
$$

The right side is an interior insertion contact at finite radius. In contrast, the limiting boundary external kernels satisfy $EK_i=0$ at interior points, so their bilinear is conserved there, with boundary Ward flux still present.

For a structural exchange formula, define the metric fluctuation by $\delta g_{ab}=2\kappa h_{ab}$; an unrescaled metric perturbation $\gamma_{ab}$ is therefore $2\kappa h_{ab}$. The Euclidean scalar coupling is $-\kappa\int\sqrt g\,h_{ab}T^{ab}[\phi]$. Once a complete admissible, scalar-independent metric gauge and the associated Dirichlet gravity boundary completion are fixed, let $H^{\mathfrak g}$ denote the full covariance of $h$. Scalar-dependent gauge fixing or a dressed insertion can add further vertices or observable contacts and is not covered by this bare structural formula. Gaussian elimination gives the formal exchange contribution

$$
\mathcal G^{\rm grav}_{\boldsymbol z}
=\kappa^2\sum_{(ij|kl)}\int d\mu_g(X)d\mu_g(Y)\,
B_{ij}^{ab}(X)H^{\mathfrak g}_{ab;cd}(X,Y)B_{kl}^{cd}(Y),
\tag{7.3}
$$

where the sum has three unordered pairings. This is an **unevaluated structural identity**, not an explicit solution for the finite-radial inverse. The chosen finite-coordinate scalar, residual metric gauge and source/observable contacts must be specified consistently with the asymptotically FG frame used in the earlier reports.

A longitudinal change of $H^{\mathfrak g}$ cannot simply be integrated away: (7.2) converts it into external-insertion contacts. Keeping only radiative or transverse modes can therefore discard needed terms. Even conservation of the boundary kernels is not a blanket argument for removing every trace or constraint sector. The source is paired with the fixed conformal slice measure; rewriting it with $\delta_g$ must not silently change which source density is held fixed when the metric varies.

A nonlinear diffeomorphism-invariant finite-radius observable would additionally require an explicit dressing. The coordinate-field computation and a dressed observable are different questions. The contact result here neither supplies that dressing nor renders the unspecified exchange gauge independent.

## 8. Verification and the remaining calculation

[Scalar/contact checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_checks.wl>) and their [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_checks_results.txt>) verify the potential, a noncommuting kinetic example, all 20 scalar and 15 vector selection zeros, transverse scalar closure, canonical and unit-field normalizations, box differentiation, Ward coefficients, the higher-harmonic counterexample and external Bessel expansion. The final run has 24 labelled exact groups containing 132 zero scalar residuals and no messages. Four unequal-radius four-Bessel integrals include an analytic tail bound. These numerical samples test the asymptotic formula; the uniform source theorem follows from §4.

The [xAct check](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_tensor_checks.wl>) and its [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_four_point_tensor_checks_results.txt>) verify (7.2) abstractly in five dimensions for arbitrary constant mass. Metric contraction alone leaves antisymmetric scalar-Hessian terms; explicitly commuting those derivatives gives zero. The final sorted residual is zero with no messages. No background field equation is needed for this identity.

Independent derivations checked the actual reduction and neutral restriction, the quartic boundary theorem and leading radial correction, and the Ward/source-divergence diagnostic. Source inspection distinguished visually checked PDF pages from the full-reduction HTML statement. Two additional fresh manuscript reviews independently checked the quartic factors, uniform source estimates, Mellin and Ward normalizations, exchange combinatorics, source-contact identity and limitations of the four-point claim.

**Verified:** the exact neutral Einstein–scalar potential and exchange classification; the evaluated contact four-point coefficient and its unsubtracted boundary limit with sharp quadratic leading error; the required nonzero stress contribution; and the finite-source obstruction to a transverse-only exchange calculation.

**Assumptions:** classical two-derivative IIB in the large-$N$, strong-coupling window, the stated nonlinear consistent truncation and field coordinates, fixed boundary metric, no independent sources for omitted fields, the logfree BF vacuum, and the reference insertion/source pairing. No finite-$N$ correction is inserted into the classical action.

**Not computed:** the full constrained finite-radius graviton exchange, its joint boundary-limit estimate, the complete neutral-channel four-point function or anomalous dimensions, generic-polarization four-point matching, and nonlinear dressing. The next calculation is precisely (7.3) with its constraint and insertion-contact sectors retained; its boundary stress contribution must satisfy (6.3).
