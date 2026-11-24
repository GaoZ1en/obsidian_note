# Independent continuum verification: the three-component Hardy zero mode

## Result and scope

For every four strictly positive arcs in the prescribed cyclic order, with

\[
H^2_+=\overline{\mathrm{span}}\{z^k:k\geq0\},\qquad
H^2_-=\overline{\mathrm{span}}\{z^{-k}:k\geq1\},
\]

\[
P=\begin{pmatrix}0&0&1\\1&0&0\\0&1&0\end{pmatrix},\quad
D=\operatorname{diag}(1,-1,-1),\quad
(g_{A_1},g_B,g_{A_2},g_C)=(SPS,D,P,I),
\]

the following are exact continuum statements:

- For \(S=\operatorname{diag}(1,-1,1)\), \(\dim\ker T_g=\dim\ker T_g^*=1\).
- The same holds for \(S_e=\operatorname{diag}(-1,-1,1)\), the additional ordered-symbol convention supplied during the review.
- For \(S=\operatorname{diag}(-1,1,1)\), \(T_g\) is boundedly invertible.
- Every nonzero odd-sector kernel vector has a convergent local Puiseux expansion with exponents \(-1/3,0,1/3\) modulo nonnegative integers. Its leading \(-1/3\) coefficient is nonzero at **each** endpoint.
- Both its interior Taylor coefficients and its exterior negative-Fourier coefficients are \(O(k^{-2/3})\). At chordal distance \(d>0\) from the endpoints, the corresponding Dirichlet tails are \(O(N^{-2/3}/d)\).
- These bounds are uniform after \(\|f\|_{H^2}=1\) normalization on every endpoint-separated compact family. One can also normalize a specified endpoint's leading scalar amplitude to one, uniformly on such a family.

The proof identifies the actual Hardy operator with a holomorphic orthogonal bundle problem. It uses neither a theta-zero assertion nor a presumed spin characteristic. It concerns the continuum operator only; no finite-lattice word map, matrix localization, or sampling theorem is asserted here. Existing manuscripts were not modified.

## 1. Fredholm property and the adjoint

Write \(g_0=I,g_1=SPS,g_2=D,g_3=P,g_4=I\), starting in \(C\), and use **left** jumps

\[
J_j=g_jg_{j-1}^{-1},\qquad j=1,\ldots,4.
\]

Every jump has eigenvalues \(1,\omega,\omega^{-1}\), where \(\omega=e^{2\pi i/3}\). In the \(L^2\) piecewise-continuous Toeplitz Fredholm criterion, each local connecting segment is invertible because

\[
\det((1-t)I+tJ_j)=1-3t+3t^2\geq\tfrac14,
\qquad 0\leq t\leq1.
\]

The determinant is one on each open arc and positive on each connecting segment. The completed determinant curve has winding zero. Thus \(T_g\) is Fredholm of index zero. This application of the standard piecewise-continuous Toeplitz criterion needs no smooth-symbol approximation in operator norm.

There is also an explicit antiunitary kernel/cokernel correspondence. On the circle put

\[
(\mathcal Jv)(z)=z^{-1}\overline{v(z)}.
\]

Then \(\mathcal JH^2_+=H^2_-\), \(\mathcal JH^2_-=H^2_+\), and \(\mathcal Jg=g\mathcal J\) because \(g\) is real. If \(f\in\ker T_g\), write \(f_-=gf\in H^2_-\). Then

\[
h=\mathcal Jf_-\in H^2_+,\qquad
 g^Th=\mathcal Jf\in H^2_-,
\]

so \(h\in\ker T_g^*\). This map is norm-preserving and bijective. In particular, the zero Fourier mode convention matters: the factor \(z^{-1}\) cannot be omitted.

## 2. The precise bundle associated to the operator

### 2.1 Away from the endpoints

Glue the trivial rank-three bundles on the interior and exterior of the circle using the constant transitions \(g\) on each open arc. The exterior includes infinity. This defines a flat bundle on the four-punctured sphere. Since the transitions are real orthogonal with determinant one, it has:

1. a flat Hermitian metric;
2. a parallel nondegenerate complex symmetric form;
3. a specified orientation.

The Hermitian metric is single-valued even though a flat frame need not be.

### 2.2 Local regularization, with the extension fixed by \(L^2\)

Flatten a neighborhood of an endpoint by a holomorphic coordinate \(w\), taking the circle to the real axis and the endpoint to zero. Let the two adjacent values be \(g_L,g_R\). On the inside use \(F=f_+\); on the outside use \(F=g_R^{-1}f_-\). These glue across the positive real ray. Across the negative ray the transition is

\[
R=g_R^{-1}g_L.
\]

Choose the centered logarithm and define

\[
\Lambda=-\frac{1}{2\pi i}\log R,
\qquad e^{-2\pi i\Lambda}=R.
\]

The choice of orientation can exchange \(\Lambda\) with a conjugate of \(-\Lambda\), without changing the arguments below. With the displayed branch convention,

\[
\Lambda^T=-\Lambda,\qquad \Lambda^*=\Lambda,
\qquad\operatorname{spec}\Lambda=\{-1/3,0,1/3\}.
\]

For \(-\pi<\arg w<\pi\), set

\[
F(w)=w^\Lambda h(w).
\]

The jump relation makes \(h\) a single-valued holomorphic function on the punctured disk. Analytic gluing across the open rays is valid for the Hardy boundary traces, for example by distributional Morera gluing with locally integrable traces.

Here is the important removable-singularity argument, including why boundary \(L^2\), rather than just area \(L^2\), is needed. Interior and exterior Hardy functions are locally area-square-integrable. Diagonalize the Hermitian matrix \(\Lambda\) by a constant unitary matrix. If

\[
h_\lambda(w)=\sum_{n\in\mathbb Z}c_{\lambda,n}w^n,
\]

then area integrability of \(w^\lambda h_\lambda\), using angular Parseval on annuli, excludes every term with \(n+\lambda\leq-1\). Consequently:

- for \(\lambda=-1/3,0\), all negative Laurent terms vanish;
- for \(\lambda=1/3\), the only still-possible negative term is \(c_{1/3,-1}w^{-1}\).

The latter would give \(F\sim w^{-2/3}\), which is not square-integrable on either boundary ray. Boundary \(L^2\) therefore removes this term too. Thus \(h\) is holomorphic at zero. Conversely, holomorphic \(h\) gives \(F=O(|w|^{-1/3})\), which is a legitimate Hardy boundary singularity.

We extend the bundle by declaring \(h\) to be its holomorphic local coordinates. This extension is not an arbitrary Deligne-extension choice: it is precisely the one selected by the stated \(L^2\) Hardy domain.

### 2.3 Why the extension is orthogonal

Since \(\Lambda^T=-\Lambda\) and \(\operatorname{tr}\Lambda=0\),

\[
(w^\Lambda)^T w^\Lambda=I,\qquad \det w^\Lambda=1.
\]

Therefore the symmetric form and orientation extend nondegenerately through every endpoint. Denote the resulting holomorphic \(SO(3,\mathbb C)\) bundle on \(\mathbb P^1\) by \(E\). Its Hermitian metric is generally singular at the four endpoints; its holomorphic symmetric form is not.

### 2.4 The Hardy-to-bundle bridge

The relation \(T_gf=0\) is exactly

\[
f_+\text{ holomorphic inside},\quad
f_-\text{ holomorphic outside},\quad
f_-=gf_+,\quad f_-(\infty)=0,
\]

with the just-established local \(L^2\) extension. Thus

\[
\boxed{\ker T_g\simeq H^0(\mathbb P^1,E(-\infty))
      =H^0(\mathbb P^1,E(-1)).}
\]

The absence of the zero mode in \(H^2_-\) is exactly the order-one vanishing condition at infinity. Omitting this twist changes the operator problem.

## 3. A degree bound restricting the splitting to two possibilities

By Birkhoff–Grothendieck and \(E\simeq E^*\),

\[
E\simeq\mathcal O(k)\oplus\mathcal O\oplus\mathcal O(-k),
\qquad k\geq0.
\]

Let \(L\simeq\mathcal O(k)\) be its highest-degree line subbundle. A nonvanishing local holomorphic frame \(s\) of \(L\) has flat norm near endpoint \(j\)

\[
\|s\|_{\rm flat}\sim c_j|w|^{\alpha_j},\qquad
\alpha_j\in\{-1/3,0,1/3\},\quad c_j>0.
\]

Indeed, in \(F=w^\Lambda h\) the least nonzero exponent is the minimum of \(\lambda+\operatorname{ord}_0h_\lambda\); because \(h(0)\neq0\), this minimum is one of the three displayed exponents.

Choose a global section of \(L\) having its \(k\) zeros away from the endpoints. Its flat norm defines a globally single-valued function

\[
u=\log\|s\|_{\rm flat}
\]

on the punctured sphere, with logarithmic singularities at those zeros and at the endpoints. Normalize \(dd^c\log|w|=\delta_0\). In any local flat frame the vector representing \(s\) is holomorphic, so \(dd^cu\geq0\) away from zeros and endpoints. Integrating the distributional \(dd^cu\) on the compact sphere gives

\[
0=k+\sum_{j=1}^4\alpha_j+\mu,
\qquad \mu\geq0.
\]

This is the singular-metric line-subbundle curvature inequality, written as an elementary subharmonicity argument. In particular,

\[
k\leq-\sum_j\alpha_j\leq\frac43,
\qquad\boxed{k\in\{0,1\}.}
\]

No irreducibility assumption is needed for this bound.

## 4. Determining which splitting occurs from the concrete symbol

### 4.1 The extension's topological class

At each step of the piecewise-constant loop, interpolate by

\[
g_j(t)=\exp(t\log J_j)g_{j-1},\qquad 0\leq t\leq1,
\]

using the real skew-symmetric principal logarithm with rotation angle \(2\pi/3<\pi\). This is the shortest \(SO(3)\) path across the jump.

The clutching class of the holomorphic extension constructed in Section 2 is the class of this continuously interpolated loop. One way to see the local identification is to write

\[
w^\Lambda=\exp((\log|w|)\Lambda)\exp(i\arg(w)\Lambda).
\]

The radial factor is contractible in \(SO(3,\mathbb C)\); the angular factor is a real orthogonal rotation. Its passage between the two sides is exactly the interpolation selected by the same centered logarithm. Hence regularizing the puncture and regularizing the step loop use the same lift, with no extra half-turn or untracked exponent shift.

For an oriented rank-three orthogonal bundle with splitting \((k,0,-k)\),

\[
w_2(E)=k\pmod2.
\]

For \(k>0\), the highest line is isotropic: its self-pairing is a section of \(\mathcal O(-2k)\), hence zero. The orthogonal splitting has a hyperbolic pair \(\mathcal O(k)\oplus\mathcal O(-k)\) and a trivial orthogonal line. Its torus transition \(\operatorname{diag}(z^k,1,z^{-k})\) represents \(k\) times the generator of \(\pi_1(SO(3,\mathbb C))=\mathbb Z_2\). This also explains the parity formula without assuming a spin characteristic.

### 4.2 Explicit quaternion computation

Use the quaternion convention

\[
(a,u)(b,v)=(ab-u\cdot v,\;av+bu+u\times v).
\]

Every \(J_j\) has a unique shortest-path lift \(q_j\) whose scalar part is \(+1/2\). Since the jumps act on the **left**, the lifted loop ends at

\[
q_4q_3q_2q_1.
\]

The entries below are \(2q_j\), in scalar–\(x\)–\(y\)–\(z\) order:

| \(S\) | \(2q_1\) | \(2q_2\) | \(2q_3\) | \(2q_4\) | \(q_4q_3q_2q_1\) |
|---|---|---|---|---|---|
| \(\operatorname{diag}(1,-1,1)\) | \((1,-1,1,-1)\) | \((1,-1,1,1)\) | \((1,-1,-1,1)\) | \((1,-1,-1,-1)\) | \(-1\) |
| \(\operatorname{diag}(-1,-1,1)\) | \((1,-1,-1,1)\) | \((1,-1,-1,-1)\) | \((1,-1,-1,1)\) | \((1,-1,-1,-1)\) | \(-1\) |
| \(\operatorname{diag}(-1,1,1)\) | \((1,1,-1,-1)\) | \((1,1,-1,1)\) | \((1,-1,-1,1)\) | \((1,-1,-1,-1)\) | \(+1\) |

Reversing the multiplication order without also changing the jump convention is incorrect. This table was checked by exact quaternion multiplication and by checking \(J_4J_3J_2J_1=I\).

Combining parity with \(k\in\{0,1\}\) gives

\[
E_{\rm odd}\simeq\mathcal O(1)\oplus\mathcal O\oplus\mathcal O(-1),
\qquad
E_{\rm even}\simeq\mathcal O^3.
\]

Therefore

\[
\dim H^0(E_{\rm odd}(-1))=1,
\qquad H^0(E_{\rm even}(-1))=0.
\]

Section 1 supplies closed range and index zero, so the even operator is invertible, not merely injective.

## 5. The actual endpoint expansions and their nonvanishing leading terms

On each local analytic continuation sector, both \(f_+\) and \(f_-\), after their respective constant frame changes, have the convergent expansion

\[
F(w)=w^{-1/3}A(w)+B(w)+w^{1/3}C(w),
\]

where \(A,B,C\) are holomorphic and take values in the corresponding one-dimensional eigenspaces. The inside and outside expansions come from the same local section; their coefficients are related by the prescribed constant transitions and branch factors. They are not independently chosen expansions. There are no logarithms.

Equivalently, on the threefold local coordinate \(w=t^3\), this is meromorphic with at most a simple pole at \(t=0\). In particular, differentiated expansions are valid to every fixed order on closed subsectors, with bounds \(F^{(m)}=O(|w|^{-1/3-m})\).

In the odd case the \(-1/3\) term is nonzero at all four endpoints. To prove this stronger statement, observe that the monodromy image contains \(P\) and \(D\): a loop crossing from the \(C\) trivialization to the \(A_2\) or \(B\) trivialization realizes these matrices or their inverses. There is no common complex invariant line for \(P,D\). A \(P\)-eigenvector has all three components nonzero, whereas no such line is preserved by \(D\).

Consequently the highest line \(L=\mathcal O(1)\) is not flat. The curvature mass \(\mu\) in Section 3 is strictly positive: vanishing curvature would make its local holomorphic vector projectively constant and hence define a monodromy-invariant line. Thus

\[
1+\sum_j\alpha_j<0.
\]

Since four entries from \(\{-1/3,0,1/3\}\) can have sum below \(-1\) only when all four are \(-1/3\), every endpoint has \(\alpha_j=-1/3\). The kernel section, viewed in \(H^0(E)\), is the section of this \(\mathcal O(1)\) vanishing at infinity; it has no endpoint zeros. Its leading singular coefficient is therefore nonzero at each endpoint.

## 6. Coefficient and Dirichlet-tail estimates

Write the four endpoints as \(a_j\in S^1\), and use the inside branches of \((1-z/a_j)^{\pm1/3}\), which are unambiguously analytic in the disk. Absorbing the analytic coordinate changes into the holomorphic multipliers gives

\[
f_+(z)=\sum_{j=1}^4\left[
 A_j(1-z/a_j)^{-1/3}+C_j(1-z/a_j)^{1/3}\right]+R(z).
\]

Here \(A_j\neq0\) in the odd case. At every endpoint the remainder is an analytic term plus terms beginning at powers \(2/3\) and \(4/3\). On the boundary, with \(t\) denoting angular distance to the endpoint,

\[
R\text{ is continuous and absolutely continuous},\qquad
R'=O(|t|^{-1/3}),\qquad R''=O(|t|^{-4/3})
\]

away from the endpoint itself. Smooth bounded contributions are included in these local estimates. On the complementary closed arcs, \(R\) is analytic across the circle.

These derivative estimates give

\[
R_k=O(k^{-5/3}).
\]

For completeness: integrate the Fourier coefficient once, split each endpoint neighborhood at \(|t|=1/k\), and use \(\int_0^{1/k}|R'|=O(k^{-2/3})\) in the inner piece. In the outer piece, integrate once more; the boundary term and the integral of \(R''\) are both \(O(k^{1/3})\) before the resulting \(k^{-2}\) factor. This proves the displayed rate without assuming it from mere Hölder continuity.

The exact binomial coefficients are

\[
\beta_k=[z^k](1-z)^{-1/3}
 =\frac{\Gamma(k+1/3)}{\Gamma(1/3)\Gamma(k+1)},
\]

\[
\gamma_k=[z^k](1-z)^{1/3}
 =\frac{\Gamma(k-1/3)}{\Gamma(-1/3)\Gamma(k+1)}.
\]

Thus

\[
\boxed{f_k=\sum_j a_j^{-k}(A_j\beta_k+C_j\gamma_k)+O(k^{-5/3})}
\]

and in particular \(f_k=O(k^{-2/3})\). For \(k\geq1\), \(\beta_k>0\) decreases like \(k^{-2/3}\), while \(\gamma_k<0\) has decreasing absolute value of order \(k^{-4/3}\). Abel summation therefore gives, for \(\zeta\in S^1\) away from the endpoints and \(N\geq1\),

\[
\left\|\sum_{k>N}f_k\zeta^k\right\|
 \leq C N^{-2/3}
 \left(1+\sum_j\frac1{|1-\zeta/a_j|}\right)
 \leq \frac{C' N^{-2/3}}{d(\zeta)},
\]

\[
d(\zeta)=\min_j|\zeta-a_j|.
\]

The remainder tail is absolutely bounded by \(\sum_{k>N}O(k^{-5/3})=O(N^{-2/3})\). This is why subtracting both fractional leading terms is useful. An isolated claim \(f_k=O(k^{-2/3})\) would **not** justify the Dirichlet-tail estimate; the analytic/Puiseux structure and the displayed derivative bounds supply the missing regularity.

For \(f_-(z)=gf_+(z)=\sum_{k\geq1}b_kz^{-k}\), apply the same proof to \(f_-(1/w)\). Its endpoint set is \(\{a_j^{-1}\}\), and the same coefficient and tail estimates hold. The adjoint kernel obtained by \(\mathcal Jf_-\) inherits them as well.

## 7. Uniform normalization when the endpoints move

Fix a compact set of cyclically ordered endpoint quadruples with every arc length bounded below by \(\delta>0\). Normalize \(\|f_+\|_{H^2}=1\); since \(g\) is pointwise unitary, \(\|f_-\|_{H^2}=1\) too.

Uniform estimates do not require the false assertion that the moving step symbols are continuous in \(L^\infty\). They follow directly from local analytic estimates:

1. Use disjoint endpoint disks of radius depending only on \(\delta\).
2. The Hardy norms uniformly bound the area norms of \(f_+\) in the disk and of \(f_-\) in a fixed exterior annulus.
3. On an annulus of fixed relative radii inside each endpoint disk, \(h=w^{-\Lambda}F\) therefore has a uniform area bound. The multiplier is bounded there, with constants depending only on the disk radius and the fixed exponents.
4. Since \(h\) is holomorphic on the whole endpoint disk, its annular area bound controls its values and any fixed number of derivatives on a smaller disk. This follows directly from its Taylor series and angular Parseval, or from Cauchy estimates.
5. On the remaining closed arc portions, analytic continuation using the constant matrix \(g_j\) gives ordinary uniform Cauchy estimates.

Hence the Puiseux coefficients, the remainder estimates in Section 6, and both tail constants are bounded uniformly in this compact family. In particular,

\[
\sum_{k>N}\|f_k\|^2\leq C_\delta N^{-1/3}.
\]

This also gives compactness of all unit-norm kernel vectors over the compact geometry family, up to subsequences and phase. To check that a limit remains a kernel vector, use the uniform Fourier tail bound for strong \(H^2\) convergence and the fact that moving step symbols converge almost everywhere, hence their multiplication operators converge strongly on each fixed \(L^2\) vector. The limit has norm one.

The local regularized functions \(h\), after the continuously moving local coordinates are identified, converge uniformly on smaller disks. Thus the leading endpoint coefficients also converge. Since Section 5 proves that each such coefficient is nonzero in every limit geometry, their norms are uniformly bounded away from zero for unit-norm kernel vectors on a compact family.

In particular, fix an eigenvector in the \(-1/3\) eigenspace at one labeled endpoint and use the inside branch \((1-z/a_j)^{-1/3}\). Dividing by its nonzero scalar leading amplitude defines a unique representative with that amplitude equal to one. This normalization is locally continuous in geometry and has uniformly bounded Hardy norm and tail constants on separated compact families. It applies, in particular, to a fixed geometry and every sufficiently small endpoint-rounding neighborhood.

There is no assertion of uniformity as endpoints collide or arc lengths tend to zero.

## 8. Checks, evidence, and what is not being substituted for proof

**Analytically established:** the Hardy/\(E(-1)\) identification including the removable singularity; orthogonal extension; the degree bound; the spin-lift parity computation's relation to the extension; exact kernel/cokernel dimensions; nonvanishing singular terms; the coefficient and tail estimates; compact-family normalization.

**Exact CAS check:** Wolfram verified all three quaternion rows, \(J_4J_3J_2J_1=I\), the jump characteristic polynomial, and \(\det((1-t)I+tJ_j)=1-3t+3t^2\), with no reported messages. The quaternion convention was implemented directly, rather than inferred from matrix eigenvalues. The final exact readable output is [the exact jump/lift calculation](</Users/koishi/.codex/mcp-results/evaluate_mathematica-NM5Bu1/result.txt>).

**Independent numerical implementation:** NumPy assembled exact-Fourier Galerkin compressions \((\widehat g_{m-n})_{0\leq m,n<N}\) for equal arcs and for endpoint fractions \((0,0.13,0.41,0.70)\). For equal arcs the smallest singular values were:

| \(N\) | first odd symbol | \(S_e\) odd symbol | even symbol |
|---:|---:|---:|---:|
| 24 | 0.1926799224 | 0.1926799224 | 0.4520617221 |
| 48 | 0.1496259830 | 0.1496259830 | 0.4327975335 |
| 96 | 0.1168915799 | 0.1168915799 | 0.4195659720 |

The unequal-arc compressions also had small odd-sector singular values, but they were nonmonotone in \(N\). Finite compressions can show two boundary-related small singular values even though the infinite Hardy kernel has dimension one. These checks support the analytic distinction but do not prove kernel dimension, invertibility, or a finite-section convergence rate.

**Standard theorem inputs:** Birkhoff–Grothendieck splitting on \(\mathbb P^1\), the \(L^2\) piecewise-continuous Toeplitz Fredholm criterion, and \(\pi_1(SO(3,\mathbb C))=\mathbb Z_2\) with its quaternion double cover. Their hypotheses and their application to the concrete symbol are identified above.

**Not supplied:** an elementary closed formula for the kernel function, a genus-two characteristic table, any finite-lattice determinant asymptotic, any matrix-localization estimate, or uniform estimates at colliding endpoints. None of these is needed for the continuum conclusion. A further fresh-agent review could not be launched within this delegated session's depth limit; the parent has been given the proof and exact conventions for independent scrutiny.
