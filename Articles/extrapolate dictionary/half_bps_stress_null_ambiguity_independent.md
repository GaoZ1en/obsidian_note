# Independent classification of null-supported degree-zero stress kernels

## Result and conventions

**The all-collinear-null sector is zero, including every finite-order normal jet and both zero-momentum endpoints. The one-external-null sector is not zero: it admits measure terms, genuine normal derivatives, and zero-momentum contact terms.**

Let the metric be \(\eta=\operatorname{diag}(+,-,-,-)\), let \(\overline V_+\) be the closed future cone, and regard \(W_{ij}(p,q)\) as a tensor-valued generalized function on \(\mathbb R^8\). Degree zero means the distributional pullback identity
\[
W(\lambda p,\lambda q)=W(p,q),\qquad \lambda>0.
\]
Lorentz covariance is for the proper orthochronous group. The no-go theorem below does not need symmetry, conservation, tracelessness, or temperateness; it holds for arbitrary distributions with the specified rank-two covariance and degree. Symmetry is imposed in the one-null classification, as appropriate to a stress tensor. The nonsymmetric addition is stated separately.

No conformal Ward identities, positivity, exchange symmetry, or vacuum-selection assumptions are imposed.

## 1. All-null no-go theorem

Define
\[
S=\{(p,q)\in\overline V_+^2:p^2=q^2=(p-q)^2=0\}.
\]
Every degree-zero Lorentz-covariant rank-two distribution supported in \(S\) vanishes.

### 1.1 Nonzero collinear pairs

Use light-cone coordinates with
\[
p^2=2p^+p^- -|p_\perp|^2.
\]
Near a pair with \(p^+,q^+>0\), introduce
\[
a=p^+,\quad b=q^+,\quad u=p_\perp/a,
\]
\[
x=p^--\frac{|p_\perp|^2}{2a},\qquad
y=q^--\frac{|q_\perp|^2}{2b},\qquad
v=q_\perp-\frac ba p_\perp.
\]
Here \(u,v\in\mathbb R^2\), and the collinear-null stratum is exactly
\[
x=y=v=0.
\]
The ambient coordinate Jacobian has absolute value \(a^2\). In particular, it introduces no hidden dilation or null-rotation factors in the argument below.

A null rotation preserving the plus coordinate acts on a momentum as
\[
p^+\mapsto p^+,\quad p_\perp\mapsto p_\perp+c p^+,
\quad p^-\mapsto p^-+c\cdot p_\perp+\tfrac12|c|^2p^+.
\]
It translates \(u\mapsto u+c\) and leaves \((a,b,x,y,v)\) unchanged. The structure theorem for distributions supported on a submanifold therefore gives, locally,
\[
W=\sum_\alpha C_\alpha(a,b,u)
\partial_{(x,y,v)}^\alpha[\delta(x)\delta(y)\delta^{(2)}(v)],
\]
with finitely many normal derivatives on each relatively compact coordinate neighborhood. Covariance under these null rotations makes every \(C_\alpha\) smooth in \(u\), with distributional dependence on \((a,b)\) allowed. More explicitly, translation in \(u\) is accompanied by a finite-dimensional tensor matrix, so the coefficient solves a constant-matrix first-order translation equation. Evaluating it at \(u=0\) is legitimate. Singular distributions in \(a,b\), including \(\delta(a-b)\), remain allowed and do not affect the argument.

Let \(B_\lambda\) be the boost acting on contravariant light-cone components by
\[
B_\lambda:(p^+,p^-,p_\perp)\mapsto
(\lambda^{-1}p^+,\lambda p^-,p_\perp).
\]
Combine it with joint momentum dilation by \(\lambda\). The resulting map is
\[
h_\lambda:(a,b,u;x,y,v)\mapsto
(a,b,\lambda u;\lambda^2x,\lambda^2y,\lambda v).
\]
Thus it fixes every point \((a,b,0;0,0,0)\). Its four normal-coordinate weights are \((2,2,1,1)\), whose sum is six. Consequently,
\[
\partial^\alpha\delta_{\rm normal}(h_\lambda z)
=\lambda^{-6-w_\alpha}\partial^\alpha\delta_{\rm normal}(z),
\quad w_\alpha=2\alpha_x+2\alpha_y+|\alpha_v|\ge0.
\]
This is the generalized-function pullback weight, including the normal Jacobian. Equivalently the ambient Jacobian is \(\lambda^8\), the tangent Jacobian is \(\lambda^2\), and their quotient is \(\lambda^6\).

Homogeneity and covariance require \(W(h_\lambda z)=\rho(B_\lambda)W(z)\). At \(u=0\), every normal jet would therefore have to match a tensor boost eigenweight. Rank-two tensor boost weights belong to \(\{-2,-1,0,1,2\}\), whether the indices are chosen upper or lower. None equals \(-6-w_\alpha\). Every coefficient is zero. Null-rotation covariance then makes it zero at every \(u\).

### 1.2 Endpoints

After the preceding step the support can only lie on
\[
S_p=\{p\ne0\text{ future null},q=0\},\quad
S_q=\{p=0,q\ne0\text{ future null}\},
\]
or the origin.

At \(S_p\), use tangent coordinates \((a,u)\) for \(p\), and normal coordinates consisting of its off-shell coordinate \(x\) and all four components of \(q\). Under the same \(h_\lambda\), the normal weights are
\[
(2,0,2,1,1),
\]
again summing to six and all nonnegative. Null rotations translate \(u\) while acting linearly on the four \(q\)-normal coordinates; hence they act through a finite-dimensional representation on each finite normal-jet space. The jet coefficients are again smooth in \(u\). The same weight mismatch proves vanishing. The argument for \(S_q\) is identical with the two momenta exchanged.

Finally, a distribution supported at the origin is a finite sum of derivatives of \(\delta^{(8)}(p,q)\). Their degrees are \(-8-N\), never zero. This completes the proof.

## 2. Complete local symmetric classification on one null leg

Now restrict attention to the open sector where \(q\) is future timelike and \(p\ne0\) lies on the future null cone. Write
\[
x=p^2,\quad y=q^2>0,\quad s=p\cdot q>0,\quad r=s/y.
\]
The Gram determinant \(xy-s^2\) is nonzero near this stratum. Define
\[
H_{ij}=3(xq_i-sp_i)(xq_j-sp_j)
 -(xy-s^2)(x\eta_{ij}-p_i p_j).
\]
It obeys the polynomial identities
\[
p^iH_{ij}=0,\qquad \eta^{ij}H_{ij}=0,
\qquad H_{ij}|_{x=0}=2s^2p_i p_j.
\]
Every symmetric, Lorentz-covariant, transverse, traceless degree-zero distribution supported on \(x=0\) in this sector has the local form
\[
\boxed{\quad
W_{ij}=H_{ij}\sum_{k=0}^{N}y^{k-2}f_k(s/y)\,\delta^{(k)}(x),
\quad}
\]
where the \(f_k\) are arbitrary distributions on \((0,\infty)\); normal order is locally finite. Products involving \(f_k\) are defined in the independent invariant coordinates \((x,y,s)\). Global temperateness and extension to the boundary of this open sector impose further growth/extension conditions; they are not asserted for arbitrary \(f_k\).

For completeness, the tensor-module calculation is elementary. The stabilizer of an independent timelike/null pair is \(SO(2)\), so every symmetric covariant tensor distribution is
\[
A\eta_{ij}+B p_i p_j+C(p_iq_j+q_ip_j)+Dq_iq_j.
\]
Conservation and tracelessness give
\[
A+xB+sC=0,\quad xC+sD=0,\quad
4A+xB+2sC+yD=0.
\]
Since \(s\ne0\) and \(2s^2+xy\ne0\) near the stratum, these equations are equivalent, distributionally, to
\[
W_{ij}=\frac{H_{ij}}{2s^2+xy}B.
\]
The module is thus free of rank one. The standard hypersurface-supported distribution expansion and joint homogeneity yield the displayed classification: \(H\) has momentum degree six, \(\delta^{(k)}(x)\) has degree \(-2k-2\), and \(y^{k-2}f_k(s/y)\) has degree \(2k-4\).

If rank two is not assumed symmetric, there is also the proper-Lorentz-covariant transverse antisymmetric family
\[
\epsilon_{ijab}p^a q^b\sum_k y^k g_k(s/y)\delta^{(k)}(x).
\]
The other antisymmetric basis tensor \(p_iq_j-q_ip_j\) is ruled out by transversality because \(xy-s^2\ne0\). Ordinary parity covariance excludes the epsilon family.

## 3. Explicit global tempered counterexamples

Set \(\delta_+(p^2)=\theta(p^0)\delta(p^2)\), and let \(\mathbf1_{V_+}(q)\) denote the indicator of the future timelike cone, understood as a locally integrable function. Its distributional support is the closed future cone.

### 3.1 Measure term

\[
W^{(0)}_{ij}=p_i p_j\delta_+(p^2)\mathbf1_{V_+}(q)
\]
is nonzero, tempered, Lorentz covariant and jointly degree zero. Both conservation and trace reduce to \(p^2\delta(p^2)=0\).

### 3.2 A genuine second normal derivative

On \(p\ne0\), consider
\[
U_{ij}(p,q)=H_{ij}(p,q)\delta_+''(p^2).
\]
Here the primes differentiate the scalar argument of the delta distribution. The polynomial \(H\) has degree four in \(p\) and two in \(q\), so \(U\) has degree \(-2\) in \(p\). A distribution on \(\mathbb R^4\setminus\{0\}\) of degree \(-2>-4\) has a unique degree-\(-2\) extension to the origin. Existence follows by radial integration of its angular distribution with integrable radial weight \(r^{3-2}=r\); uniqueness follows because origin-supported distributions have degrees \(-4-N\).

Extend coefficientwise in the polynomial \(q\)-dependence, and define
\[
W^{(2)}_{ij}=\mathbf1_{V_+}(q)\operatorname{Ext}_{p=0}U_{ij}.
\]
This is tempered and jointly degree zero. The extension is Lorentz covariant by uniqueness. Its trace and its contraction with \(p\) vanish: any failure would be supported at \(p=0\), with \(p\)-degree \(-2\) or \(-1\), respectively, impossible for an origin-supported distribution. Its leading normal coefficient is \(2s^2p_i p_j\delta_+''(p^2)\), so it is genuinely a nonzero second normal jet.

This construction deliberately does not assert that bare \(\delta_+''(p^2)\) is canonically defined at \(p=0\); the numerator and the homogeneous extension are essential.

### 3.3 A zero-momentum contact term

\[
W^{\mathrm{ct}}_{ij}
=y\left(q_iq_j-\frac y4\eta_{ij}\right)
\delta^{(4)}(p)\mathbf1_{V_+}(q)
\]
is also nonzero, tempered, degree zero, transverse and traceless. Thus the endpoint \(p=0\) is allowed in the one-null sector, unlike the all-null sector.

More generally, on the open set \(q\in V_+\), every degree-zero covariant contact distribution at \(p=0\) is a finite sum of terms
\[
m^{N+4}P^{(N)}_{ij}(u,\partial_p)\delta^{(4)}(p),
\qquad m=\sqrt{q^2},\quad u=q/m,
\]
where \(P^{(N)}\) is a homogeneous degree-\(N\) polynomial in its second argument, equivariant in the unit timelike vector \(u\). Symmetric TT contact terms are exactly those satisfying
\[
\eta^{ij}P^{(N)}_{ij}=0,\qquad
\frac{\partial}{\partial z_i}P^{(N)}_{ij}(u,z)=0.
\]
This is a finite-dimensional polynomial classification at each \(N\). It also describes the possible differences between two admissible extensions of a punctured-cone solution across \(p=0\). It does not claim every arbitrary punctured-cone coefficient has a globally tempered extension across all remaining boundaries.

## 4. Conditional boundary-switch uniqueness; covariance is essential

Suppose two globally defined degree-zero Lorentz-covariant tensor distributions agree on the complement of \(S\). Their difference is supported in \(S\), so Section 1 proves that they agree everywhere. In particular, an off-\(S\) identification with a target kernel has **at most one global extension in this covariant homogeneous class**. This is a uniqueness statement, not a proof that a particular switched limit belongs to that class or even exists globally.

For a fixed compact switching profile \(\chi_R(x)=\chi(x/R)\), an exact finite-\(R\) dilation identity can pass to a global limit by replacing \(R\) with a positive constant times \(R\). This inference requires that exact identity; anomalous subtractions or other regulators must be checked separately. A boost, however, generally sends \(\chi\) to a different shape, not merely to \(\chi\) with a rescaled \(R\). Existence of the limit for one fixed shape therefore does not imply Lorentz covariance. Profile independence or a separate global Lorentz Ward argument is still needed.

The missing assumption is substantive. Fix a future unit timelike vector \(n\), and a nonzero nonnegative \(f\in C_c^\infty((0,\infty))\). Define
\[
E^{(n)}_{ij}(p,q)=\int d^4\ell\,\delta_+(\ell^2)
\int_0^\infty d\zeta\,f(\zeta)
(n\cdot\ell)^4\ell_i\ell_j\,
\delta^{(4)}(p-\ell)\delta^{(4)}(q-\zeta\ell).
\]
This is a nonzero symmetric tempered distribution supported entirely in \(S\). Its test-function action is the ordinary convergent integral
\[
\langle E^{(n)}_{ij},\varphi\rangle
=\int d^4\ell\,\delta_+(\ell^2)
\int d\zeta\,f(\zeta)(n\cdot\ell)^4\ell_i\ell_j
\varphi(\ell,\zeta\ell).
\]
On the future null cone, the shell measure contributes \(r\,dr\,d\Omega/2\), while the polynomial numerator contributes \(r^6\). Thus the radial weight is \(r^7dr\), integrable at zero and bounded at infinity by a Schwartz seminorm of order greater than eight. Nonzero nonnegative \(f\) and a suitable nonnegative test function make the \(00\) component strictly positive.

It has degree zero: under \(\ell\mapsto\lambda\ell\), the shell measure contributes \(\lambda^2\), the numerator \(\lambda^6\), and the pair of four-dimensional delta distributions \(\lambda^{-8}\). Moreover,
\[
p^i E^{(n)}_{ij}=0,\qquad \eta^{ij}E^{(n)}_{ij}=0,
\]
because each contraction supplies \(\ell^2\delta_+(\ell^2)\). There is no endpoint divergence or extra extension prescription in this example.

It is not Lorentz covariant with \(n\) held fixed: the scalar weight \((n\cdot\ell)^4\) changes under a generic boost. It is covariant only as a family in which \(n\) is transformed as well. With the opposite metric convention, replacing the factor by \((-n\cdot\ell)^4\) gives the identical fourth-power weight.

Consequently, adding \(E^{(n)}\) to a target kernel preserves its restriction off \(S\), temperateness, future support, symmetry, degree zero, conservation, and tracelessness. The addition violates Lorentz covariance, precisely the condition required by the all-null theorem. Thus those other properties alone cannot establish boundary-switch closure. The off-\(S\) boundary theorem itself is a premise of this consequence, not a theorem independently checked in this report.

## Verification and scope

- Analytic verification: explicit normal geometry, normal Jacobians, tensor weights, endpoint filtration, polynomial TT identities, one-null tensor-module solution, and homogeneous-extension argument.
- Exact Mathematica check: the coordinate Jacobian is \(-a^2\) for the stated coordinate ordering, \(p^iH_{ij}=0\) componentwise, and \(\eta^{ij}H_{ij}=0\), with no kernel messages.
- No existing source note was modified. This report is independent of previously proposed vacuum-identification conclusions.
- What is proved globally is the all-null vanishing theorem and the existence of the displayed one-null tempered counterexamples. Arbitrary one-null coefficient extension across \(q^2=0\) is not classified here.

Therefore eliminating a residual distribution supported entirely on the common collinear-null locus is justified by the stated kinematic assumptions alone. Eliminating general one-external-null residuals is not justified by those assumptions: additional physical or analytic input is required.
