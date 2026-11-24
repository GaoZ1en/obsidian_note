# General-m Ising continuum relative determinant: independent derivation

## Status and scope

This note records an independent derivation from the operator assumptions stated below. No current manuscript or other review was read before or while deriving the result. No CFT prediction was supplied or used. The original derivation, including its weighted-Hilbert-transform endpoint argument, is retained in Sections 1–7. Section 8 records a subsequent collaborative suggestion and a complete implementation of the alternative endpoint argument; it is not represented as part of the original independent derivation.

**Result:** for fixed finitely many separated circular intervals and arbitrary fixed nonzero real parameters, the continuum relative determinant exists, is strictly positive, and has the pairwise closed form (2.3). Mixed signs produce no continuum zero mode.

**Verified:** analytic operator/determinant argument; explicit scalar RH inverse; endpoint integrability and weighted boundedness; an alternative compact-perturbation/dense-range proof; second-order normalization; actual mixed-sign three-interval Nyström checks; finite determinant/det₂ identity; circle/line cross-ratio agreement. A standalone stdout-only NumPy script reproduces the numerical checks.

**Assumptions:** the finite covariances have the common-space strong limit and cross-block Hilbert–Schmidt convergence stated in Section 1; the intervals have fixed positive lengths and strictly positive mutual separation; the number of intervals is fixed and finite; every parameter is real and nonzero.

**Not verified here:** the critical-Ising lattice strong/HS convergence itself. The numerical matrices below discretize the continuum Hilbert transform, not the original Ising covariance. No conclusion about zero parameters, colliding endpoints, or uniformity as the number of intervals tends to infinity is claimed. No additional subagent was available at this delegation depth; the derivation itself was performed as an independent subagent review.

## 1. Objects and hypotheses

Let the circumference be \(L>0\), and let
\[
A=\bigcup_{j=1}^m A_j,\qquad A_j=(a_j,b_j),\qquad m<\infty.
\]
The requested case is \(m\geq3\), but the derivation also applies to one or two intervals. Choose a cut in a complementary gap and a lift with
\[
a_1<b_1<a_2<b_2<\cdots<a_m<b_m<a_1+L.
\]
All interval lengths and all separating circular gaps are strictly positive. Endpoints have measure zero and do not affect the Hilbert spaces.

The scalar operator is
\[
(H_Af)(x)=\operatorname{PV}\int_A
\frac{f(y)}{L\sin[\pi(y-x)/L]}\,dy.
\tag{1.1}
\]
Its kernel convention is specifically \(y-x\), not \(x-y\). A change of lift for the antiperiodic kernel amounts to a sign gauge on the affected components; the determinants below are unchanged. The continuum real skew covariance acts on \(L^2(A)\otimes\mathbb C^2\) as
\[
\mathcal G_A=
\begin{pmatrix}0&H_A\\ H_A&0\end{pmatrix}.
\tag{1.2}
\]
Complexification is only used for the scalar RH construction and Fredholm determinant; the original operators and their relative determinant are real.

Let \(S\) be multiplication by \(s_j\) on \(A_j\), on both internal components, with
\[
s_j\in\mathbb R\setminus\{0\}.
\tag{1.3}
\]
The finite-dimensional input is
\[
D_N(\boldsymbol s)=
\frac{\det(S_N+\Gamma_{A,N})}
{\prod_j\det(s_jI+\Gamma_{jj,N})}.
\tag{1.4}
\]
Assume the natural isometric embeddings into a common continuum Hilbert space, strong convergence of the diagonal covariances, convergence of the cross blocks in \(\mathfrak S_2\), and uniform bounds on the diagonal resolvents at the chosen nonzero real parameters. Zero extensions of finite covariances and the corresponding scalar extensions on their complements can be used when discussing strong resolvent convergence.

Since each diagonal covariance is skew-adjoint, the elementary bound is
\[
\|(s_jI+\Gamma_{jj,N})^{-1}\|\leq |s_j|^{-1},
\qquad
\|(s_jI+\mathcal G_{jj})^{-1}\|\leq |s_j|^{-1}.
\tag{1.5}
\]
No invertibility of the full mixed-sign operator is assumed.

## 2. The closed form

Set
\[
\beta_j=\frac1\pi\arctan\frac1{s_j}
\in\left(-\frac12,\frac12\right),
\tag{2.1}
\]
where arctangent is its real principal branch. In particular, \(\beta_j<0\) for \(s_j<0\); one must not add an integer to the corresponding RH exponent.

For \(j<k\), define
\[
R_{jk}=
\left|
\frac{
\sin[\pi(b_j-a_k)/L]\,
\sin[\pi(a_j-b_k)/L]
}{
\sin[\pi(a_j-a_k)/L]\,
\sin[\pi(b_j-b_k)/L]
}
\right|.
\tag{2.2}
\]
For disjoint intervals in the indicated cyclic order, \(0<R_{jk}<1\). This is the cross ratio with the convention used throughout this note; replacing it by its reciprocal changes the displayed exponent sign.

The result is
\[
\boxed{
\lim_{N\to\infty}D_N(\boldsymbol s)
=\prod_{j<k}R_{jk}^{-2\beta_j\beta_k}>0.
}
\tag{2.3}
\]
There is no additional genuine three-interval or higher connected term in the logarithm of this particular continuum relative determinant. This is a theorem about the stated operators, not an inference from finite numerical agreement.

## 3. Legal determinants and the lattice-to-continuum passage

Define
\[
D_0=\bigoplus_j(s_jI+\mathcal G_{jj}),\qquad
V=\mathcal G_A-\bigoplus_j\mathcal G_{jj},\qquad
K=D_0^{-1}V.
\tag{3.1}
\]
Here \(V_{jj}=0\); only cross-region blocks remain.

### 3.1 The continuum cross operator is actually trace class

For \(j\ne k\), the circular kernel and every derivative are smooth on the closed rectangle \(\overline A_j\times\overline A_k\), precisely because the closures are separated in the circular metric. Thus
\[
V_{jk}:L^2(A_k)\longrightarrow H^2(A_j)
\]
is bounded. The embedding \(H^2(A_j)\hookrightarrow L^2(A_j)\) has singular values \(O(n^{-2})\) in one dimension and is trace class. Consequently
\[
V_{jk}\in\mathfrak S_1,\qquad
V\in\mathfrak S_1,\qquad K\in\mathfrak S_1.
\tag{3.2}
\]
The finite sum over blocks is important. This statement does not apply to a self block: the PV kernel is singular on its diagonal, and \(H_{jj}\) is not being called trace class. Nor does this argument imply convergence of the lattice cross operators in trace norm.

Since \(D_0^{-1}\) is block diagonal,
\[
K_{jj}=0,\qquad \operatorname{Tr}K=0.
\tag{3.3}
\]
Hence an ordinary Fredholm determinant is legal for the final continuum relative operator:
\[
\mathcal D(\boldsymbol s)=\det(I+K)
=\det{}_2(I+K).
\tag{3.4}
\]
We never take an unregularized determinant of a general Hilbert–Schmidt operator.

### 3.2 Why HS convergence, rather than trace-norm convergence, suffices

Let \(D_{0,N}\), \(V_N\), \(K_N=D_{0,N}^{-1}V_N\) be the finite analogues, viewed on the common Hilbert space. The resolvent identity gives strong convergence of \(D_{0,N}^{-1}\) to \(D_0^{-1}\), using the uniform resolvent bounds. Explicitly,
\[
D_{0,N}^{-1}-D_0^{-1}
=D_{0,N}^{-1}(D_0-D_{0,N})D_0^{-1}.
\]
Since \(V_N\to V\) in \(\mathfrak S_2\),
\[
\begin{split}
\|K_N-K\|_2
&\leq \|D_{0,N}^{-1}\|\,\|V_N-V\|_2\\
&\quad+\|(D_{0,N}^{-1}-D_0^{-1})V\|_2
\longrightarrow0.
\end{split}
\tag{3.5}
\]
The last term tends to zero by finite-rank approximation of the fixed HS operator \(V\), together with strong convergence and uniform boundedness.

At finite \(N\), the diagonal blocks of \(K_N\) vanish exactly. Therefore
\[
D_N=\det(I+K_N)=\det{}_2(I+K_N).
\tag{3.6}
\]
Continuity of the regularized determinant in the HS norm now gives
\[
D_N\longrightarrow\det{}_2(I+K)=\det(I+K).
\tag{3.7}
\]
This is the entire determinant convergence argument; no trace-norm convergence of \(K_N\) has been inserted.

## 4. Reduction to the scalar Hilbert problem

The fixed internal unitary
\[
U=\frac1{\sqrt2}\begin{pmatrix}I&I\\ I&-I\end{pmatrix}
\]
commutes with the regional multiplication operator and yields
\[
U\mathcal G_AU^{-1}=H_A\oplus(-H_A).
\tag{4.1}
\]
Thus the continuum determinant is the product of the two scalar relative determinants.

To fix the normalization, choose \(c\) so the chart
\[
u=\tan\frac{\pi(x-c)}L
\]
contains all lifted intervals away from its pole. The unitary half-density map is
\[
(\mathcal Uf)(u)=\sqrt{\frac{dx}{du}}f(x(u)),\qquad
\frac{dx}{du}=\frac L{\pi(1+u^2)}.
\]
The identity
\[
\sin\frac{\pi(y-x)}L
=\frac{v-u}{\sqrt{1+u^2}\sqrt{1+v^2}}
\]
then gives exactly
\[
(\mathcal U H_A\mathcal U^{-1}f)(u)
=\frac1\pi\operatorname{PV}\int_{\mathcal U A}
\frac{f(v)}{v-u}\,dv.
\tag{4.2}
\]
Below, \(a_j,b_j\) denote the resulting real-line endpoints until the circle is restored.

The line cross ratio is
\[
R_{jk}=
\left|\frac{(b_j-a_k)(a_j-b_k)}{(a_j-a_k)(b_j-b_k)}\right|.
\tag{4.3}
\]
The factors from the cosine denominators cancel pairwise under the tangent chart, giving exactly (2.2). In particular the result is cut-independent. For ordered disjoint line intervals,
\[
1-R_{jk}=
\frac{(b_j-a_j)(b_k-a_k)}{(a_k-a_j)(b_k-b_j)}>0.
\]

## 5. Original scalar RH inverse and endpoint check

Now set
\[
Hf(x)=\frac1\pi\operatorname{PV}\int_A\frac{f(y)}{y-x}\,dy,
\qquad T=S+H.
\tag{5.1}
\]
For a density \(f\), use
\[
C_f(z)=\frac1{2\pi i}\int_A\frac{f(y)}{y-z}\,dy.
\tag{5.2}
\]
The Plemelj conventions are
\[
C_{f,+}-C_{f,-}=f,\qquad
Hf=i(C_{f,+}+C_{f,-}).
\tag{5.3}
\]
Thus \(Tf=g\) becomes
\[
(s_j+i)C_{f,+}-(s_j-i)C_{f,-}=g
\quad\text{on }A_j.
\tag{5.4}
\]

Define the normalized scalar factor
\[
X(z)=\prod_j\left(\frac{z-a_j}{z-b_j}\right)^{\beta_j},
\qquad X(\infty)=1,
\tag{5.5}
\]
with branch cuts along the intervals. Put
\[
W(x)=\prod_j\left|\frac{x-a_j}{x-b_j}\right|^{\beta_j},
\qquad d_j=\sin(\pi\beta_j),\quad c_j=\cos(\pi\beta_j).
\tag{5.6}
\]
On \(A_j\),
\[
X_\pm=W e^{\mp i\pi\beta_j},\qquad
\frac{X_+}{X_-}=e^{-2\pi i\beta_j}
=\frac{s_j-i}{s_j+i}.
\tag{5.7}
\]
The sign-sensitive identities are
\[
s_j=\frac{c_j}{d_j},\qquad
(s_j+i)e^{-i\pi\beta_j}=\frac1{d_j},\qquad
c_jd_j=\frac{s_j}{1+s_j^2},\quad d_j^2=\frac1{1+s_j^2}.
\tag{5.8}
\]
In particular \(d_j\), unlike \(c_j\), is negative when \(s_j<0\). Replacing \(d_j\) by its absolute value would spoil the mixed-sign inverse.

The RH solution is
\[
\Phi(z)=X(z)\,C_{dg/W}(z),
\qquad f=\Phi_+-\Phi_-.
\tag{5.9}
\]
Taking its jump gives the explicit inverse
\[
\boxed{
T^{-1}=M_{cd}-M_{dW}\,H\,M_{d/W}.
}
\tag{5.10}
\]
As a kernel away from the diagonal, this reads
\[
T^{-1}(x,y)
=-\frac{d(x)d(y)}{\pi(y-x)}\frac{W(x)}{W(y)},
\tag{5.11}
\]
with the multiplication term \(cd\) and PV understood as in (5.10).

### 5.1 Original boundedness and uniqueness argument

At each left/right endpoint the exponents of \(W^2\) are \(+2\beta_j\) and \(-2\beta_j\), respectively, and both lie strictly between \(-1\) and \(1\). Away from the finitely many separated endpoints the weight is smooth and positive; at infinity it tends to one. Thus \(W^2\) is a real-line Muckenhoupt \(A_2\) weight.

The weighted Hilbert-transform theorem implies boundedness of
\[
M_WH M_{1/W}:L^2(A)\longrightarrow L^2(A),
\]
by extending the source by zero to the line. Multiplication by \(c,d\) is bounded. Consequently (5.10) defines a bounded candidate inverse on the full unweighted \(L^2(A)\).

In the Cauchy/Smirnov class of an \(L^2\) RH problem, a homogeneous solution divided by \(X\) has no jump and can only acquire admissible endpoint meromorphic singularities. A pole at \(a_j\) produces at least \((z-a_j)^{\beta_j-1}\); a pole at \(b_j\) produces at least \((z-b_j)^{-\beta_j-1}\). Neither is compatible with \(L^2\) boundary values when \(|\beta_j|<1/2\). With those poles excluded, decay of the original Cauchy transform at infinity eliminates the remaining entire solution. The inhomogeneous construction has the required weighted Cauchy boundary values, yielding existence and uniqueness.

This is the original weighted-RH route. Section 8 gives a separate elementary Fredholm/dense-range endpoint completion that avoids the weighted theorem and this endpoint classification altogether.

Nothing in (5.5)–(5.10) requires the parameters to have a common sign. Hence \(S+H\), and likewise \(S-H\), are invertible for every allowed mixed-sign choice.

### 5.2 Direct normalization check

The jump of \((1-X)/(2i)\) is \(dW\). Its boundary sum therefore gives
\[
C_{dW}=\frac{1-X}{2i},\qquad H[dW]=1-cW.
\]
Since \(S[dW]=cW\),
\[
\boxed{(S+H)^{-1}1=dW.}
\tag{5.12}
\]
This checks the sign of \(H\), the factor \(1/\pi\), the branch of \(\beta\), and the sign of the nonlocal term in (5.10). It remains true for mixed signs.

## 6. Evaluation of the scalar relative determinant

Write
\[
T_0=\bigoplus_j(s_j+H_{jj}),\qquad
F(\boldsymbol s)=\det(T_0^{-1}T),\qquad
R=T^{-1},\quad R_0=T_0^{-1}.
\tag{6.1}
\]
Here \(T_0^{-1}T=I+\) trace class, and Section 5 establishes its invertibility. The determinant is real and nonzero. In each connected sign component, the ray \(S\mapsto\lambda S\), \(\lambda\to\infty\), has \(F\to1\), so \(F>0\) and a real logarithm can be used.

The trace-class determinant derivative and the resolvent identity give
\[
\partial_{s_j}\log F
=\operatorname{Tr}\bigl[P_j(R-R_0)\bigr].
\tag{6.2}
\]
The resolvent difference is trace class because
\[
R-R_0=-R_0(T-T_0)R,
\tag{6.3}
\]
and \(T-T_0\) is the smooth cross operator.

For \(x,y\in A_j\), put
\[
w_j(x)=\left|\frac{x-a_j}{x-b_j}\right|^{\beta_j},
\qquad q_j(x)=\frac{W(x)}{w_j(x)}.
\tag{6.4}
\]
The function \(q_j\) is positive and smooth on the entire closed interval \(\overline A_j\): all its endpoint factors belong to other, separated intervals. The delta terms cancel between the two inverses, leaving
\[
(R-R_0)(x,y)
=-\frac{d_j^2}{\pi(y-x)}\frac{w_j(x)}{w_j(y)}
\left(\frac{q_j(x)}{q_j(y)}-1\right).
\tag{6.5}
\]
On interior compact subsets the Cauchy singularity is removable, and the diagonal value is
\[
(R-R_0)(x,x)=\frac{d_j^2}{\pi}\,\partial_x\log q_j(x).
\tag{6.6}
\]

**Endpoint trace justification.** First compress to \(a_j+\epsilon<x<b_j-\epsilon\), where (6.5) is a smooth kernel and its trace is the diagonal integral. These projections converge strongly to the regional projection; since (6.3) is trace class, the compressed traces converge to the full trace. The diagonal function in (6.6) is bounded up to both endpoints, so its integrals also converge. This justifies the diagonal trace without asserting that the entire resolvent kernel is smooth at an endpoint.

Consequently
\[
\begin{split}
\partial_{s_j}\log F
&=\frac{d_j^2}{\pi}\sum_{k\ne j}\beta_k
\int_{a_j}^{b_j}\left(\frac1{x-a_k}-\frac1{x-b_k}\right)dx\\
&=\frac{d_j^2}{\pi}\sum_{k\ne j}\beta_k\log R_{jk}.
\end{split}
\tag{6.7}
\]
Since
\[
\frac{d\beta_j}{ds_j}=-\frac1{\pi(1+s_j^2)}=-\frac{d_j^2}{\pi},
\tag{6.8}
\]
we obtain
\[
\log F=-\sum_{j<k}\beta_j\beta_k\log R_{jk}+C.
\tag{6.9}
\]
Along \(S\mapsto\lambda S\), the trace norm of \(T_0^{-1}(T-T_0)\) tends to zero, so \(F\to1\). All \(\beta_j\to0\), proving \(C=0\) separately in every mixed-sign component.

Replacing \(H\) by \(-H\) changes all RH exponents to \(-\beta_j\); the products \(\beta_j\beta_k\) are unchanged. Thus the two internal sectors contribute equally and give the factor 2 in (2.3).

## 7. Checks, parameter dependence, and boundaries of the theorem

### 7.1 Weak-coupling / large-parameter check

For a common large scale \(\lambda\),
\[
\log\mathcal D(\lambda\boldsymbol s)
=-\frac{2}{\pi^2\lambda^2}
\sum_{j<k}\frac{\log R_{jk}}{s_js_k}+O(\lambda^{-4}).
\tag{7.1}
\]
The direct second-order determinant expansion agrees because
\[
\int_{A_j}\!dx\int_{A_k}\!dy\,
\frac1{\pi^2(y-x)^2}
=-\frac1{\pi^2}\log R_{jk}>0,
\tag{7.2}
\]
and the skew cross kernels contribute the opposite sign to \(\operatorname{Tr}K^2\). The factor two in (7.1) is exactly the two internal sectors.

### 7.2 Actual numerical checks

The original independent numerical calculation used a Wolfram kernel. It was then reproduced, with additional checks, in the standalone script
[ising_multi_fredholm_checks.py](</Users/koishi/Documents/Note/Articles/Quantization in AdS/gluing/strongly-correlated-sewing/verification/ising_multi_fredholm_checks.py>).
The script writes only stdout; it does not create JSON, result files, or bytecode imports from this project.

The tested real-line configuration is
\[
(A_1,A_2,A_3)=((0,0.4),(0.9,1.5),(2.2,3)),\qquad
\boldsymbol s=(0.7,-1.3,2.1).
\]
For \(n\) midpoint nodes per interval and quadrature weights \(w_p\), the scalar matrix is
\[
H^{(n)}_{pq}=\begin{cases}
\dfrac{\sqrt{w_pw_q}}{\pi(x_q-x_p)},&p\ne q,\\
0,&p=q.
\end{cases}
\tag{7.3}
\]
These are Nyström support data for the continuum operator, not a substitute for the assumed convergence of the Ising lattice covariance.

The closed forms are
\[
\log F=-0.023562299563771,\qquad
\log\mathcal D=-0.047124599127541.
\]
Actual NumPy 2.3.5 output from the default run was:

```text
Cayley/circle cross-ratio max error: 8.882e-16
Second-order cross integral max error: 1.041e-17
Finite det2 identity (n=40): TrK=0.000e+00, log error=6.502e-15
Simultaneous parameter-sign reversal error: 0.000e+00

n    scalar log ratio   error against closed     connected-3       R1 L2 error
20   -0.024769363913    -1.207064e-03             -3.380208e-06     1.507098e-01
40   -0.024248954956    -6.866554e-04             -1.625782e-06     1.271998e-01
80   -0.023947346956    -3.850474e-04             -7.944600e-07     1.088794e-01
160  -0.023775816615    -2.135171e-04             -3.920129e-07     9.398381e-02

lambda  lambda^4 * (full closed log - leading lambda^-2 term)
10      +0.053392818530
20      +0.053828031575
40      +0.053938223668
80      +0.053965859805

PASS: all finite algebraic/quadrature assertions; convergence evidence printed above.
[exit code: 0]
```

Here “connected-3” means the scalar three-region log ratio minus the sum of the three scalar two-region log ratios on the same mesh. “R1 L2 error” is the quadrature-weighted error in the identity \(T^{-1}1=dW\), not an operator-norm bound. Its slower convergence is consistent with the endpoint singularity of the exact solution. No convergence rate is proved by these finite data.

To reproduce from the project root with an environment containing NumPy:

```bash
python3 verification/ising_multi_fredholm_checks.py
```

The actual execution used the bundled Python environment resolved through the harness dependency tool. All assertions passed and the process exited with code 0.

### 7.3 Uniformity and excluded regimes

For fixed geometry, convergence is locally uniform on compact subsets of
\((\mathbb R\setminus\{0\})^m\). The diagonal resolvents have uniform bounds there and are uniformly Lipschitz in their parameters by the resolvent identity. A finite parameter net upgrades the strong/HS argument in Section 3 to local uniformity. The continuum determinant is real analytic within each sign component.

At \(s_j\to0^\pm\), the exponent approaches \(\pm1/2\); the endpoint \(A_2\) condition and the diagonal resolvent bounds degenerate. The fixed-nonzero-parameter theorem does not identify a determinant at \(s_j=0\) or justify exchanging that limit with \(N\to\infty\). Opposite one-sided values need not coincide.

If endpoints collide, the separated smooth-cross argument is no longer uniform and the cross HS norm can diverge logarithmically. If \(m\) grows, finite summability and the constants used above likewise cease to be uniform. Neither limit is included in the result.

The conclusion that the continuum determinant is positive does not assert positivity of every small finite-N numerator for arbitrary mixed signs. Norm convergence of \(K_N\) to the invertible limiting relative operator does, however, imply eventual invertibility for each fixed permitted parameter choice.

## 8. Subsequent endpoint supplement: Fredholm index zero and dense range

This section implements a suggestion sent by the parent researcher after the independent result had already been obtained. It is included because it gives a particularly transparent endpoint proof without a weighted-Hilbert theorem.

Work with the scalar \(T=S+H\). The block diagonal operator
\[
T_0=\bigoplus_j(s_j+H_{jj})
\]
is invertible for every nonzero real \(s_j\), simply because each \(H_{jj}\) is bounded skew-adjoint. Section 3 proves that \(T-T_0\) is trace class. Thus
\[
T\text{ is Fredholm of index }0,
\tag{8.1}
\]
and its range is closed. This statement does not use mixed-sign invertibility of \(T\).

Let
\[
g\in\bigoplus_j C_c^\infty(A_j),\qquad
h=\frac{g}{(s+i)X_+}=\frac{dg}{W}.
\tag{8.2}
\]
Because the support avoids all endpoints, \(h\) is smooth and compactly supported inside the interval interiors. Form
\[
\Phi(z)=X(z)C_h(z).
\tag{8.3}
\]
The Cauchy transform \(C_h\) is analytic in neighborhoods of every endpoint. Hence the only endpoint behavior of \(\Phi\) is
\[
\Phi(z)=O(|z-a_j|^{\beta_j}),\qquad
\Phi(z)=O(|z-b_j|^{-\beta_j}).
\tag{8.4}
\]
Because \(|\beta_j|<1/2\), both boundary values, and thus
\[
f=\Phi_+-\Phi_-,
\]
belong to \(L^2(A)\). Moreover the integrals on the keyhole contour's endpoint arcs vanish: their bounds are proportional to
\(\epsilon^{1+\beta_j}\) or \(\epsilon^{1-\beta_j}\), with positive exponents. Since \(\Phi(z)=O(z^{-1})\) at infinity, the keyhole Cauchy representation gives
\[
\Phi=C_f.
\tag{8.5}
\]
This is the specific step that would be invalid if endpoint contributions were silently discarded.

Using \((s+i)X_+=(s-i)X_-\) and the Plemelj jump of \(C_h\),
\[
\begin{split}
(s+i)\Phi_+-(s-i)\Phi_-
&=(s+i)X_+\,(C_{h,+}-C_{h,-})\\
&=(s+i)X_+h=g.
\end{split}
\tag{8.6}
\]
Equations (5.3) and (8.5) now give \(Tf=g\). Therefore
\[
\bigoplus_j C_c^\infty(A_j)\subset\operatorname{Ran}T.
\tag{8.7}
\]
This subspace is dense, while the Fredholm range is closed. Thus \(T\) is surjective. Index zero then implies injectivity, and the bounded inverse theorem gives a bounded inverse on all \(L^2(A)\).

On the dense source class just used, taking the jump of (8.3) gives exactly (5.10). Therefore the same inverse formula extends by continuity to all sources, with no independent weighted-Hilbert estimate needed. The determinant evaluation and endpoint trace justification in Section 6 then proceed unchanged.

This alternative explicitly establishes mixed-sign invertibility, keeps every endpoint contribution controlled, and avoids assuming the desired invertibility in the RH reconstruction.
