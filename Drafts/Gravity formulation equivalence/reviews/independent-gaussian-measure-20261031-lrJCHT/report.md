# Independent Gaussian-measure comparison on complete thermal AdS3

## Result and scope

**A finite Gaussian shear gives an exact identity, but it does not by itself identify independently regulated continuum measures.** There are explicit high-frequency counterexamples even when both sequences of mode spaces exhaust the same Hilbert space. A compatible transported regulator does give equality, including phases and algebraic normalization factors. A common homogeneous-Casimir regulator is a promising additional realization, but its complete-quotient trace/domain hypotheses must actually be proved.

For a constant auxiliary fiber Hessian, the minimal complete-L2 **Laplace heat finite-part mode count is zero** on a three-dimensional smooth hyperbolic quotient with a positive reference operator and no omitted zero modes. Thus this prescription assigns no finite auxiliary magnitude or phase, and no auxiliary boundary Weyl-anomaly shift. This statement is about counting the identity, **not** about real spectral determinants: those have nonzero finite volume terms. Source covariance alone is weaker: finite bulk-local normalization, or a different covariant counting prescription exhibited below, can change a renormalized-volume term and hence the boundary Weyl anomaly.

No numerical eigenvalues of the actual 9-by-9 gravitational auxiliary Hessian were used or derived. No parent candidate reports or original research notes were read. Only the vault instructions and computation-skill instructions were read. The ordinary-CS interpretation is not assumed. An additional supplied-route assessment, received after the initial independent conclusions, is segregated in Section 12.

## 1. Objects, metric prescription, and conventions

Let M be the complete oriented thermal hyperbolic quotient, with curvature radius one and Ric(g) = -2g. The boundary source gamma is a fixed marked representative, and spatial renormalization uses its geodesic defining function. All fluctuation operators act on complete-L2 sections. There is no finite-radius boundary-value problem.

The supplied metric Gaussian has

\[
 O_1=\nabla^*\nabla+2\quad\text{on complex Grassmann vectors},\qquad
 O_2=\nabla^*\nabla-2\quad\text{on all symmetric traceless tensors},
 \qquad O_0=-\Delta+4.
\]

The trace is integrated on its imaginary conformal contour. After specifying the field-space normalization and this contour, its determinant part is

\[
 Z_{\rm met}\propto
 \frac{\det O_1}{(\det_{\rm ST}O_2)^{1/2}(\det O_0)^{1/2}}.
\]

Here each determinant means the prescribed complete heat kernel, geodesic spatial finite part first, and proper-time/Mellin continuation. Constants in the quadratic action are not silently dropped: their possible contributions are weighted mode counts. The full ST operator is not replaced by a TT operator in this report.

Write E_ab = e_b^mu delta e^a_mu and

\[
 E=\frac12h+r,\qquad h_{ab}=h_{ba},\qquad r_{ab}=-r_{ba}.
\]

The contorsion fluctuation is

\[
 K=\delta\omega-\delta\omega_{\rm LC}(E).
\]

Use the convention that a frame rotation acts by delta e = r e and delta omega = -nabla r. In antisymmetric connection indices,

\[
 (\delta\omega_{\rm LC})_{\mu ab}
 =\frac12(\nabla_bh_{a\mu}-\nabla_ah_{b\mu})-\nabla_\mu r_{ab}.
\]

Substitution in the linearized torsion equation verifies the sign. This is a first-order differential map, denoted D. It is generally unbounded on L2. Calling it a triangular transformation does not make it a bounded Hilbert-space change of variables.

Let C be the actual algebraic connection Hessian, normalized to be dimensionless with respect to an explicitly chosen Gaussian measure. It is assumed nondegenerate and self-adjoint in the real fiber norm. At the hyperbolic saddle its eigenvalues are constants; write them abstractly as c_j with multiplicities r_j. A dimensionful Hessian requires a measure scale before log c_j has meaning. None of the results below selects these constants or that scale.

## 2. Pointwise metric normalization is not the derivative shear

With the ordinary Frobenius norm on E,

\[
 \|E\|^2=\frac14\|h\|^2+\|r\|^2.
\]

Take six orthonormal symmetric coordinates for h. If three antisymmetric coordinates r are also Frobenius-orthonormal, the absolute pointwise Jacobian is 2^(-6). If instead r_ab = epsilon_abc theta_c and the group coordinates theta have ordinary Euclidean measure, then

\[
 \|r\|^2=2|\theta|^2,\qquad
 d^9E=2^{-9/2}\,d^6h\,d^3\theta.
\]

The actual 9-by-9 coordinate Jacobian, its Gram matrix diag((1/4)I_6,2I_3), and its determinant were computed in the kernel. The absolute determinant is 1/(16 sqrt(2)). This is a coordinate Jacobian, not the unknown auxiliary Hessian.

The two Jacobian conventions do not contradict one another. Dividing by a Lorentz-group measure d^3theta gives the second factor; dividing by the induced orbit-volume measure 2^(3/2)d^3theta gives the first. The algebraic Lorentz FP determinant depends on this same convention. One must fix the group measure, gauge delta function, and ghost normalization together. A DeWitt norm changes the trace normalization again. For h = t + (s/3)g, the ordinary tensor norm is |t|^2+s^2/3, so the unit-norm scalar is s/sqrt(3).

In the gauge r=0, the Lorentz/diffeomorphism FP matrix can be made triangular: the metric de Donder condition is Lorentz invariant, while a diffeomorphism can induce a frame rotation. Its diagonal blocks are the algebraic Lorentz block and O1, up to the fixed overall sign convention for the ghost action. Compatible ghost mode spaces are needed as well; triangularity does not license independent infinite determinant manipulations.

For the complex connection variables A = omega+i e and Abar = omega-i e, each pair has

\[
 dA\wedge d\bar A=-2i\,d\omega\wedge de.
\]

There are nine such pairs per point. This constant can be absorbed by a specified normalization of the holomorphic measure on the transported geometric cycle. Treating A and Abar as independent ordinary real-CS integration cycles is a different operation, not this change of variables. After conformal/auxiliary contour rotation the transported cycle need not obey pointwise complex conjugacy.

## 3. Exact finite Gaussian identity, including the contour

For x in R^m and y in R^n, let

\[
 q(x,y)=\frac12x^THx+\frac12(y-Dx)^TC(y-Dx),\qquad
 T=\begin{pmatrix}1&0\\-D&1\end{pmatrix}.
\]

Then

\[
 A=\begin{pmatrix}H+D^TCD&-D^TC\\-CD&C\end{pmatrix}
 =T^T\begin{pmatrix}H&0\\0&C\end{pmatrix}T,
\]

and therefore

\[
 \det T=1,\qquad \det A=\det H\det C,
 \qquad n_-(A)=n_-(H)+n_-(C).
\]

The last statement is Sylvester inertia, not merely a determinant-sign statement. For negative directions rotate K = +i kappa, with the positive orientation dK = i d kappa. Define

\[
 \operatorname{Log}_{-}c=\log|c|-i\pi\quad(c<0).
\]

Then a normalized one-dimensional Gaussian gives exp[-(1/2)Log_- c] = i |c|^(-1/2). The metric trace contour is handled in exactly the same way. The x,K product contour must be mapped back by y=Dx+K. An unrelated real y contour is not automatically that contour. With this transported contour the phase as well as the magnitude factorizes.

A symbolic 2+3 block calculation returned the exact zero congruence residual and exact zero determinant-factorization residual. An indefinite toy C = diag(-2,3,5), unrelated to the gravitational C, gave determinant -2310 and inertia (4 positive, 1 negative), as required.

## 4. Independent cutoffs: the term which fails to cancel

Let P and Q be finite orthogonal projectors for x and y. Restrict the original q to x in im P, y in im Q, rather than transporting the cutoff. Its Schur complement is

\[
 S_{P,Q}=H_P+PD^\dagger CDP
 -PD^\dagger CQ\,(QCQ)^{-1}\,QCDP.
\]

When Q commutes with C this simplifies to

\[
 \boxed{S_{P,Q}=H_P+PD^\dagger C(1-Q)DP.}
\]

Thus the cancellation requires the derivative image DP to lie in the retained connection space, or an equivalent transported regulator. For positive C the error is a nonnegative quadratic form. For indefinite C it need not have either sign; this does not make it absent.

### A finite counterexample

Take x one-dimensional, y two-dimensional, H=1, C=I_2, and D=(0,lambda)^T. The full Hessian is

\[
 \begin{pmatrix}1+\lambda^2&0&-\lambda\\0&1&0\\-\lambda&0&1\end{pmatrix},
 \qquad\det A=1.
\]

Retain only y1. The restricted determinant is 1+lambda^2. This is an exact finite failure, not a subtle regularized trace issue.

### A high-frequency counterexample with a finite surviving discrepancy

On Fourier modes, take H_n=n^2+1 and D_n=n, with C=1. Retain x modes 1,...,N but y modes 1,...,N-1. Both sequences exhaust the appropriate infinite mode spaces. Matched modes cancel, but the highest x mode gives

\[
 \frac{\det A_{N,N-1}}{\det H_{1,...,N}\det C_{1,...,N-1}}
 =\frac{2N^2+1}{N^2+1}\longrightarrow2.
\]

The normalized Gaussian ratio tends to 2^(-1/2), not one. Exact matrix determinants for N=1,...,7 gave 3/2, 9/5, 19/10, 33/17, 51/26, 73/37, 99/50. With H=1 instead, the same error diverges. In three dimensions a missing high-frequency shell can have growing degeneracy and generate power divergences as well.

Even equal ranks do not suffice. Replace the retained highest connection mode by cos(theta)e_N+sin(theta)e_(N+1), keeping all lower modes. Both projectors still converge strongly to the identity, but the top-mode determinant ratio tends to 1+sin^2(theta). At N=4, mass squared one, theta=pi/3 the ratio is 29/17 and its limit is 7/4. Strong convergence of cutoffs is therefore not a sufficient regulator theorem.

## 5. Sufficient regulator statements

### 5.1 Compatible finite-dimensional regulators

Assume:

1. H and C define nondegenerate quadratic forms, with explicitly transported steepest-descent contours and consistently normalized bosonic and ghost measures.
2. V_N lies in the domain of D. Either choose W_N so D V_N is contained in W_N, or define the original regulated field space to be T^(-1)(V_N direct-sum W_N). In the latter case the original cutoff is generally a sheared subspace, not an independent rectangular cutoff.
3. The Lorentz/diffeomorphism ghost blocks, algebraic Jacobians and any zero-mode quotients use the same compatible finite-dimensional construction.
4. A single specified renormalization operation is applied to the exact finite logarithmic identity. Its subtraction and finite normalization rules are the same on both sides. The metric limits are verified to equal the prescribed complete-L2 heat/Mellin determinants, and the regulated algebraic counts have specified limits.

Then the continuum Gaussian comparison is the limit of the exact finite identity. Its only remaining factors are the explicitly regulated algebraic C, coframe/group-normalization and contour counts. This is a sufficient theorem for those regulators. It does **not** assert that an arbitrary independently chosen spectral cutoff obeys the hypotheses, and it does not insert a hard-wall boundary condition.

For a noncompact manifold, constructing finite-dimensional approximations with the stated complete-heat limit is a genuine analytic obligation. A finite-radius Dirichlet spectrum cannot simply be substituted for it.

### 5.2 A stronger spectral/fiber sufficient criterion

A useful alternative is a common positive reference operator R and a joint decomposition into representation labels pi, with common multiplicity distribution, such that:

* C, H and the closable differential map D preserve each label; D intertwines the self-adjoint realizations of R, not just their formal differential expressions.
* On each label the nontrivial field multiplicity spaces are finite-dimensional, and T(pi), H(pi), C(pi) satisfy the preceding congruence identity with the chosen branch/contour. Their growth and inverse growth are at most polynomial in the spectral parameter; zero modes and threshold singularities are separately treated.
* For every epsilon>0, exp(-epsilon R) Log_- of the blocks defines smoothing kernels whose specified geodesic finite-part trace is linear and agrees with the labelwise trace distribution. The nonidentity orbital sums, spatial finite part and labelwise integrations can be interchanged. Source variations obey corresponding uniform bounds.
* Ghost and algebraic measure factors use this same R prescription.

Then finite-matrix trace-log additivity holds label by label and can be integrated at every epsilon. Taking the prescribed finite part gives the desired Gaussian identity, without assuming cyclicity of an arbitrary renormalized trace or boundedness of the unbounded shear. These are checkable sufficient hypotheses, but the third bullet is substantive, especially at conformal infinity. It is not supplied by the algebraic Schur identity.

## 6. What an ultralocal determinant actually means

For a constant multiplication operator C, the expression Tr(C^(-s)) has infinite degeneracy for every s. There is no positive-order spectral-zeta half-plane from which this expression automatically continues. One must say how the identity is counted.

For a positive reference Laplace-type operator R preserving the constant fiber projectors P_j, one explicit prescription is

\[
 \log\det_R C
 =\operatorname{FP}_{t\to0}\operatorname{Tr}_{\rm ren}
       (e^{-tR}\operatorname{Log}_{-} C)
 =\sum_j\operatorname{Log}_{-}(c_j)\,
       \operatorname{FP}_{t\to0}\operatorname{Tr}_{\rm ren}(e^{-tR}P_j).
\]

The negative-mode phase is therefore regulated by the same weighted count as the magnitude. A formal infinity of negative eigenvalues does not come with a canonical value of i^infinity. Replacing the counting prescription only for the phase breaks the comparison.

Suppose the renormalized heat trace has the standard smooth complete hyperbolic expansion

\[
 \operatorname{Tr}_{\rm ren}(e^{-tR}P_j)
 \sim (4\pi t)^{-3/2}\sum_{k\ge0} A_{2k,j}[\gamma]t^k
       +\text{nonidentity image terms}.
\]

For the cyclic thermal quotient, nonidentity heat terms have the short-time geodesic suppression exp[-ell^2/(4t)] and no t^0 coefficient. There is no physical wall supplying half-integer boundary heat coefficients. The identity term also has no t^0 coefficient in bulk dimension three. Consequently, with the spatial finite part taken first,

\[
 \operatorname{FP}_{t\to0}\operatorname{Tr}_{\rm ren}(e^{-tR}P_j)=0,
 \qquad \log\det_R C=0.
\]

This remains true when A_(2k,j) contains a source-dependent renormalized volume. A function multiplying t^(-3/2), t^(-1/2), t^(1/2),... still cannot contribute at t^0. For a strictly positive R, the equivalent zeta count is zeta_(R,j)(0)=0. Removing a finite-dimensional kernel changes the count by minus its dimension; that case is outside the zero-free statement. An actual boundary, a different limiting order, cusp/threshold issues, or logarithmic heat terms would require a separate analysis.

## 7. Zero counting is not zero spectral determinant

For the scalar hyperbolic identity contribution, write R=-Delta+m^2 and a^2=m^2+1>0. Then

\[
 K_{R,\rm id}(t)=\frac{V_{\rm ren}}{(4\pi t)^{3/2}}e^{-a^2t},
 \qquad
 \zeta_{R,\rm id}(s)=\frac{V_{\rm ren}}{(4\pi)^{3/2}}
 \frac{\Gamma(s-3/2)}{\Gamma(s)}a^{3-2s}.
\]

Hence

\[
 \zeta_{R,\rm id}(0)=0,\qquad
 \log\det R\big|_{\rm id}=-\zeta'_{R,\rm id}(0)
 =-\frac{V_{\rm ren}a^3}{6\pi}.
\]

Both limits were computed symbolically. The nonidentity part adds the genuine thermal spectral information. It is an error to infer that this determinant, or its source variation, vanishes because constant mode counting vanishes.

Similarly,

\[
 \operatorname{FP}_{\epsilon\to0}\operatorname{Tr}_{\rm ren}
       (e^{-\epsilon R}\log R)=-\zeta'_R(0)
\]

provided the usual Mellin inversion and trace hypotheses hold. Indeed the inverse Mellin integrand is -Gamma(z) epsilon^(-z) zeta'_R(z), and its z=0 residue is -zeta'_R(0). In the present odd-dimensional zero-free case a constant added to log R contributes zero because the count zeta_R(0) is zero.

## 8. Source covariance alone does not fix the finite normalization

Take the boundary-anomaly convention

\[
 W=-\log Z,\qquad
 \delta_\sigma W=-\frac{c}{24\pi}\int_{\partial M}\sqrt\gamma\,\sigma R_\gamma.
\]

The geodesic volume expansion follows from tr_gamma g_(2)=-R_gamma/2:

\[
 dV_g=z^{-3}\sqrt\gamma\,[1-(R_\gamma/4)z^2+\cdots]dz\,d^2x,
 \qquad
 \delta_\sigma V_{\rm ren}=-\frac14\int\sqrt\gamma\,\sigma R_\gamma.
\]

Therefore a finite bulk-local normalization W_add=lambda V_ren shifts

\[
 \delta c=6\pi\lambda.
\]

Such a term is allowed by source covariance alone: it is the on-shell value of a finite local bulk volume counterterm. On the fixed-curvature family, other local bulk curvature counterterms can reduce to the same expression. It is **not** a harmless finite local boundary counterterm; its dependence on the boundary source is generally nonlocal. If the physical renormalized bulk couplings and measure normalization are fixed, this freedom must be fixed as part of the comparison. Conversely, finite covariant boundary counterterms alone do not shift the two-dimensional Euler/Weyl coefficient: integral sqrt(gamma) R_gamma is topological.

The flat torus does not eliminate this issue. At a flat representative the first infinitesimal variation vanishes, but under a finite Weyl change

\[
 V_{\rm ren}[e^{2\sigma}\gamma]-V_{\rm ren}[\gamma]
 =-\frac14\int\sqrt\gamma\,(|\nabla\sigma|^2+R_\gamma\sigma).
\]

For a flat 2pi-by-2pi torus and sigma=alpha cos x, the difference is -pi^2 alpha^2/2, verified by integration. Testing only a flat-source first variation would miss the anomaly coefficient.

### An explicit alternative source-covariant counting regulator

Let P=sqrt(R), and count instead with exp[-epsilon(P+mu)], with P+mu positive. This is still a complete-L2 source-covariant spectral regulator, but it is not the minimal Laplace heat prescription. For the scalar identity density on H3,

\[
 \frac1{V_{\rm ren}}\operatorname{Tr}_{\rm ren}e^{-\epsilon(P+\mu)}\Big|_{\rm id}
 =\frac{a^2e^{-\mu\epsilon}}{2\pi^2\epsilon}K_2(a\epsilon).
\]

The expansion is

\[
 \frac1{\pi^2\epsilon^3}-\frac\mu{\pi^2\epsilon^2}
 +\frac{2\mu^2-a^2}{4\pi^2\epsilon}
 +\frac{\mu(3a^2-2\mu^2)}{12\pi^2}+O(\epsilon\log\epsilon).
\]

Thus the finite identity count is

\[
 N_{\rm ren}^{P+\mu}=\frac{V_{\rm ren}\mu(3a^2-2\mu^2)}{12\pi^2},
\]

rather than zero. On the thermal quotient, subordination of the nonidentity heat terms gives O(epsilon) rather than a constant, under the positive-gap convergence conditions. The Bessel formula was checked both by its symbolic series and by a 50-digit numerical integral. For tensor auxiliary sectors the same mechanism uses their local heat coefficients; their actual coefficient was not computed here.

This is an explicit demonstration that covariance alone does not uniquely set the auxiliary count. It does not contradict the vanishing result for the specific Laplace regulator. A change of finite local subtraction gives another way to make the same freedom manifest.

## 9. Multiplicative anomalies are a separate question

Ordinary positive-order zeta determinants need not be multiplicative, even for commuting operators. One must not transplant the finite block identity into independently zeta-regularized factors without checking the regulator. Some parity classes of even-order differential operators have vanishing closed odd-dimensional multiplicative anomalies, but that fact does not apply to every first-order or mixed-order system, nor automatically to a renormalized trace at infinity.

An explicit three-dimensional example is the round unit S3. Let P=sqrt(-Delta+1), whose scalar eigenvalues are n=1,2,... with degeneracy n^2. Set A=P+a and B=P+b, with |a|,|b|<1 and positive spectra. Direct meromorphic continuation gives

\[
 \log\det_\zeta(AB)-\log\det_\zeta A-\log\det_\zeta B
 =-\frac{(a-b)^2(a+b)}4.
\]

For a=1/4, b=1/2 this is -3/256. The derivation is particularly transparent: expand (1+a/n)^(-s)(1+b/n)^(-s); only the n^(-3) coefficient meets the pole of zeta_Riemann(2s+1). Comparing it with the individual zeta_Riemann(s+1) poles gives the displayed polynomial. The kernel computed these coefficients and the derivative difference exactly. This is a local spectral anomaly, not a gravitational-C eigenvalue calculation.

For local elliptic regulator changes with compatible domains, such discrepancies are controlled by local symbol/heat terms. Arbitrary projectors or unrelated integration cycles need not differ only locally. The finite-cutoff counterexamples above should not be relabeled as a universally determined multiplicative-anomaly coefficient.

## 10. Infinite negative-mode phases and independent eta prescriptions

For the geometric finite-dimensional contour the auxiliary phase is i^(n_-(C)). Its continuum meaning requires the same mode counting used for the magnitude. Minimal Laplace counting makes both zero in the exponent under the hypotheses of Section 6.

A first-order spectral eta invariant is different:

\[
 \eta_B(s)=\operatorname{Tr}(\operatorname{sign}B\,|B|^{-s}).
\]

It weights signs by the actual first-order eigenvalue magnitudes. It is not the undefined unweighted eta of a constant multiplication operator. Under the Log_- convention, the spectral negative count is (zeta_|B|(0)-eta_B(0))/2; the Euclidean Gaussian phase is exp[i pi N_-/2]. The more familiar oscillatory-CS Fresnel phase uses a corresponding eta convention and is not to be identified without tracking the overall i in the action.

### Explicit first-order phase mismatch

On two scalar copies take P=sqrt(R), R=-Delta+m0^2 with scalar hyperbolic spectral parameter p^2=r^2+a^2. For m>0 define

\[
 B=\begin{pmatrix}m&-P\\-P&-1\end{pmatrix},\qquad
 C=-1,\quad D=-P,\quad H=P^2+m.
\]

This is exactly the finite Schur system in Section 3. At each r it has one negative direction. Set delta=(m-1)/2 and M^2=a^2+(m+1)^2/4. The two eigenvalues are

\[
 \delta\pm\sqrt{r^2+M^2}.
\]

The spectral count of the negative eigenvalue is therefore the shifted-square-root count

\[
 N_-^{\rm spectral}=-\frac{V_{\rm ren}\delta(3M^2-2\delta^2)}{12\pi^2},
 \qquad \eta_B(0)=-2N_-^{\rm spectral}.
\]

For m=2, a=1 these are -37V_ren/(96pi^2) and 37V_ren/(48pi^2). In contrast, the geometric auxiliary C=-1 counted with the original complete Laplace R has N_-^geom=0. Both start from the same exact finite Schur identity. They disagree because the first-order spectral phase changes the counting operator. Already this phase discrepancy suffices; no claim about the full real determinant is needed for this counterexample. The matrix eigenvalues and local counting coefficient were checked symbolically.

An ordinary CS eta/framing prescription can additionally carry gravitational-CS counterterms, framing dependence and spectral-flow information. Those are not determined by the algebraic change (e,omega) to (e,K), and an arbitrary ordinary-CS prescription need not equal the transported geometric cycle. This report proves no statement about all ordinary CS quantizations, level shifts, or global sectors.

## 11. Source variation must be compared before declaring equivalence

Equality of two numbers at one marked source does not establish equality of their source functionals. A normalization depending on V_ren can look constant at fixed gamma and yet have a Weyl variation. A valid Gaussian equivalence statement must specify a family of covariant regulators and show the derivative with respect to gamma commutes with the spatial finite part, UV subtraction and orbital summation, or calculate the resulting local defect.

For the minimal Laplace count the absence of a t^0 term is uniform within a smooth zero-free source family with the stated heat structure, so the auxiliary count remains zero. For the shifted-Poisson regulator or a finite bulk-local normalization, the surviving V_ren term has the variation in Section 8. A fixed anomaly coefficient is therefore an assertion about the renormalized measure/couplings as well as the formal classical field redefinition.

## 12. Separately supplied common-Casimir route: assessment

After the initial independent cutoff/counting conclusions were reported, the parent proposed the following particular regulator:

\[
 R_s=-\nabla^2+4-s(s+1),\qquad s=0,1,2.
\]

Thus R0=O0, R1=O1 and R2=O2. This proposal was not used to select the preceding conclusions.

On homogeneous H3 bundles the rough Laplacian differs from the central G=SO(3,1) Casimir by the K=SO3 fiber Casimir s(s+1). With consistent sign conventions, the proposed R_s is the same central operator plus 4. A G-equivariant first-order LC-variation operator can therefore intertwine the R_s. The connection bundle, like the coframe matrix bundle, decomposes as spins 0,1,2, and must be included in this construction. Frame, ghost, multiplier and trace-normalization sectors must not be omitted.

**Conditional positive conclusion.** If the complete self-adjoint closures strongly intertwine, and the representation-fiber/renormalized-trace hypotheses in Section 5.2 hold, then the proposal gives a valid common-regulator Gaussian comparison. At a fixed principal-series label the shear is a finite multiplicity-matrix congruence; the real determinant and inertia identity give the Log_- identity. The scalar common heat weight can then multiply that identity. No arbitrary rearrangement of a renormalized operator trace is required. On the metric side the weighted log determinant reproduces the prescribed Mellin determinant by Section 7, while the constant auxiliary and normalization counts vanish by Section 6.

**What remains to prove, rather than assume:**

1. Identify the actual gauge-fixed first-order Hessian and all its bundle/ghost multiplicities, normalizations and signs. Establish the LC differential intertwiners with the same operator domains; a formal commutator on smooth sections is not alone strong spectral commutation.
2. Control the unbounded shear by complete elliptic estimates, for example boundedness of D R^(-1/2) on the appropriate sectors, and show the fiber logarithms and inverse blocks have at most polynomial/logarithmic growth. Treat every kernel or threshold explicitly.
3. Establish an admissible orbital/Schwartz functional calculus for exp(-epsilon R) Log_- H. This is not automatically the same kernel as exp(-tH). In particular, a logarithm can give non-Gaussian long-distance tails even after high-frequency smoothing.
4. Prove that the nonidentity orbital sums are absolutely trace-integrable on the quotient, and that the identity kernel has precisely the renormalized-volume dependence claimed. Then justify interchange with the geodesic spatial finite part and uniform source variation. A renormalized trace on a noncompact manifold is not cyclic merely because the operators formally commute with a Casimir.
5. Match the geometric contour/branch to the fiber inertia identity. Then state that the resulting prescription is the common-Casimir geometric quantization. An independent zeta determinant/eta invariant of an ordinary first-order CS operator is not covered; Sections 9–10 show why.

No detailed orbital estimate for the actual gauge-fixed gravity Hessian was completed here. Consequently the particular route is a well-motivated sufficient-regulator program, not a completed proof of equality for every stated continuum realization. The finite algebra and the mode-counting conclusions do not require that unproved upgrade.

### Subsequent supplied closure and its critical audit

The parent subsequently proposed polynomial spectral bounds for the actual finite matrices, Harish-Chandra (HC) Schwartz inversion after multiplication by exp(-epsilon R), and an orbital estimate. This is additional supplied material, not a retroactive independent discovery.

The fixed-epsilon strategy has no evident fatal obstruction. For the loxocyclic quotient, if the resulting K-finite kernel satisfies the full HC-Schwartz bounds, then Xi(d) is asymptotic to a constant times (1+d)exp(-d). In tube coordinates about the axis, volume density grows as exp(2R), while the n-th displacement satisfies

\[
 d_n\ge 2R+|n|\beta-C_{\beta_*},\qquad \beta\ge\beta_*>0.
\]

One way to verify the displacement bound is the exact relation

\[
 \cosh d_n=\cosh(n\beta)
 +[\cosh(n\beta)-\cos(n\vartheta)]\sinh^2R.
\]

Thus the nonidentity integrand is bounded by a constant times exp(-|n|beta)(1+R+|n|beta)^(1-N); integrating R is possible for N>2, and the remaining image sum converges exponentially. Equality at every fixed epsilon can then be simplified to the metric heat/zeta expression before taking epsilon to zero. No uniform epsilon-to-zero domination of the unsimplified blocks is needed.

However, two transform statements must be explicit:

* A matrix-valued Schwartz function of the real principal-series parameter is not automatically in the HC-Schwartz transform image. The full intertwining/reducibility compatibility conditions are required, not just scalar decay. Natural invariant differential operators and their functional calculus can supply them. A logarithm with its cut away from the real spectrum is locally holomorphic; polynomial bounds on the inverse and on derivatives then give the required real-parameter growth control. This argument still needs to identify the natural operator domains.
* The finite Schur identity gives equality of multiplicity-matrix traces of logarithms, not equality of the whole operator-valued Fourier transforms. Passing from that trace identity to each semisimple orbital functional requires the invariant/character-transform density statement, or an explicit cyclic-trace argument on the HC smoothing algebra with heat sandwiches. Ordinary matrix HC inversion alone does not establish this implication.

The real-geometric Hermitian-fiber inertia argument is sound under the chosen branch, but is not automatically an argument for an unrelated complex-CS contour. Complete-L2 essential self-adjointness/core identification should be stated rather than inferred solely from the formal symbol. For source derivatives, a pure change of boundary representative changes the identity finite-part volume only; modulus derivatives can be bounded using the explicit Cartan/orbital formula. Generic differentiations of conjugated group elements can introduce growing vector fields, so control by HC seminorms alone is not a substitute for that cyclic-geometry derivative bound.

One possible repair of orbital descent is to interpolate T_t = [[1,0],[-tD,1]] and A_t = T_t^dagger diag(H,C) T_t. At fixed epsilon, split the central heat factor among all polynomial/rational factors so each is in the HC smoothing algebra. If the absolutely convergent semisimple orbital functional is used as a trace on that algebra, its derivative of Log_- A_t reduces to the traces of T_t^(-1) dot(T_t) and its adjoint. Both are strictly off-diagonal and have zero bundle trace. The identity Plancherel functional is a trace as well. Uniform polynomial bounds on the compact interval 0<=t<=1 permit the differentiation; phase-projector derivatives have zero trace by the same smoothing trace argument. This uses justified cyclicity of convergent orbital traces, not arbitrary cyclicity of the full geodesic finite-part trace. The HC-transform-image and domain conditions must still be supplied.

These are repairable proof obligations, not a demonstrated counterexample to the proposed common-Casimir prescription. If they are supplied for the actual Hessian, the route is a valid realization of Section 5.2 and is stronger than the generic conditional statement. It still does not compare that prescription with independently zeta/eta-regularized ordinary CS without an additional regulator/contour matching argument.

## 13. Verification and preserved evidence

**Verified:** exact finite congruence and Schur determinants; finite and high-frequency cutoff counterexamples; pointwise coframe Jacobian and norm; scalar hyperbolic heat/zeta limits; shifted-Poisson constant count with a numerical integral cross-check; the S3 first-order multiplicative-anomaly pole calculation; the two-scalar first-order spectral-phase coefficient; a finite flat-torus Weyl-volume variation.

**Assumptions:** complete-L2 operators, geodesic spatial finite part before UV finite part, positive reference gaps/no removed zero modes for the zero-count claims, consistent contour orientation and dimensionless Gaussian normalization. The supplied common-Casimir route additionally requires the explicitly listed operator-domain and orbital-trace hypotheses.

**Not verified:** the actual gravitational C eigenvalues; a full first-order gravitational ghost/gauge-fixed Hessian; the complete orbital/Schwartz estimates for its log kernel; equivalence to any independently specified ordinary-CS eta/framing scheme; global/topological sectors; a numerical central shift. No additional fresh subagent could be started at this delegation depth. The analytic derivations and CAS checks are not advertised as two independent human/agent proofs.

The Wolfram run was actual, in Engine 14.3, and returned Failed=False and Messages={}. This is a diagnostic record, not a fabricated list of passed theorems. The finite matrix residuals and numerical values appear in the preserved output.

* [Executed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/executed-checks.wl>)
* [Readable actual output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/actual-result.txt>)
* [Exact WXF output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/actual-result.wxf>)
* [Unmodified server-return record](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent-gaussian-measure-20261031-lrJCHT/a9d2e3e477bf-research-result.json>)

The original kernel exports also remain under the private kernel-export directory. All created artifacts are separate from the original notes.
