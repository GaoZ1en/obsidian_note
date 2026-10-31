# Independent review: the nonreductive Witt homogeneous connection and its ordinary curvature trace

## Result and scope

There is a well-defined invariant, torsion-free, metric-compatible smooth Fréchet connection on the real tangent bundle of
\[
M=\operatorname{Diff}^{\infty}_+(S^1)/\operatorname{PSL}(2,\mathbb R)
\]
with the data in the question. It preserves the specified polarization. Thus it is the actual weak-metric Levi-Civita connection, not a connection obtained by pretending that the Fourier complement is reductive.

Put \(w_n=n(n^2-1)\), and let \(E_+\) be the positive smooth Fourier modes \(n\ge2\). Its connection map is
\[
\boxed{\begin{aligned}
\Lambda(e_r)e_n&=-\frac{(n+2r)w_n}{w_{n+r}}e_{n+r},&&r\ge1,\\
\Lambda(e_0)e_n&=-n e_n,\\
\Lambda(e_{-r})e_n&=\begin{cases}-(n+r)e_{n-r},&n\ge r+2,\\0,&2\le n\le r+1,\end{cases}&&r\ge1.
\end{aligned}}\tag{1}
\]
This map is defined on the **whole Lie algebra**, including the isotropy, and satisfies \(\Lambda|_{\mathfrak h}=\rho\).

With \(R(X,Y)=[\Lambda(X),\Lambda(Y)]-\Lambda([X,Y])\), for \(m\ge1\),
\[
\boxed{R(e_m,e_{-m})e_n=r_m(n)e_n,\qquad
r_m(n)=2mn-\frac{(n+2m)^2w_n}{w_{n+m}}
+\mathbf1_{n\ge m+2}\frac{(n+m)^2w_{n-m}}{w_n}.}\tag{2}
\]
Its extension to the positive \(H^{3/2}\) completion is trace class. The **ordinary, absolutely convergent trace**, not a zeta value, is
\[
\boxed{\operatorname{Tr}_{E_+}R(e_m,e_{-m})=\frac{13}{6}m(m^2-1).}\tag{3}
\]
In particular, \(\operatorname{Tr}R(e_2,e_{-2})=13\). Since \(\overline{e_m}=-e_{-m}\), the trace with the actual conjugate is the negative of (3).

More generally, curvature smeared against arbitrary smooth vectors is trace class, with the polynomial mode estimate proved below. With \(\omega(X,Y)=g(JX,Y)\),
\[
\operatorname{Tr}_{E_+}R=\frac{13i}{6}\omega,\qquad i\operatorname{Tr}_{E_+}R=-\frac{13}{6}\omega.\tag{4}
\]
The second expression is the usual Ricci-form convention **if** the chosen polarization is realized by the standard homogeneous complex-manifold structure.

What is proved here without an infinite-dimensional complex-chart theorem is: a smooth Fréchet Levi-Civita connection, \(\nabla J=0\), vanishing Nijenhuis tensor, and a closed compatible two-form. Its identification as the Chern connection is conditional on supplying an actual complex atlas realizing this polarization. Involutivity alone is not invoked as an infinite-dimensional Newlander–Nirenberg theorem.

Neither a norm-smooth Hilbert connection nor a determinant line is inferred from (3) or (4).

## 1. Conventions, smooth spaces, and the quotient

The complexified Lie algebra has rapidly decreasing Fourier coefficients and
\[
e_m=i e^{imx}\partial_x,\quad [e_m,e_n]=(m-n)e_{m+n},\quad
\overline{e_m}=-e_{-m},\quad
\mathfrak h_{\mathbb C}=\operatorname{span}\{e_{-1},e_0,e_1\}.
\]
The quotient is \(V=\mathfrak g_{\mathbb C}/\mathfrak h_{\mathbb C}=E_+\oplus E_-\), where \(E_\pm\) denote smooth positive/negative modes of absolute index at least two. Quotient brackets always mean projection only after taking the full Witt bracket.

One concrete group convention matching this Witt bracket uses opposite composition,
\[
g\cdot h=h\circ g,\qquad U_gv=\frac{v\circ g}{g'}.
\]
Then \(U_gU_h=U_{g\cdot h}\), its derivative is \(dU_X=\operatorname{ad}_X\), and right multiplication by \(H\) is projective postcomposition. The derivation below uses this convention, equivalently an abstract group with the stated Lie bracket. Using ordinary composition instead requires the corresponding Lie-algebra sign identification; mixing the conventions is not harmless.

The Hermitian convention is linear in the first argument:
\[
h_w(u,v)=g(u,\overline v),\qquad h_w(e_j,e_k)=w_j\delta_{jk}.
\]
The real metric has complex-bilinear extension \(g(e_j,e_{-k})=-w_j\delta_{jk}\), with zero same-sign pairings. Here \(J|_{E_+}=i\), \(J|_{E_-}=-i\). In particular,
\[
\omega(e_m,e_{-m})=-i w_m.
\]

The Fourier complement is not \(\operatorname{Ad}(H)\)-invariant in \(\mathfrak g\): already
\[
[e_{-1},e_2]=-3e_1\in\mathfrak h_{\mathbb C}.
\]
No reductive-space connection theorem is used.

For a concrete smooth quotient model, fix three cyclically ordered circle points. There is a unique projective postcomposition sending their three images back to the fixed triple. This gives a global smooth slice of diffeomorphisms fixing the three points. Their normalized lifts satisfy three affine constraints and \(f'>0\), hence form a convex open subset of the corresponding affine Fréchet space. This supplies a smooth Fréchet quotient and also shows that \(M\) is contractible.

## 2. Derivation of the connection map

### 2.1 Torsion and metric compatibility force the coefficients

Require a real connection preserving \(E_+\oplus E_-\). The positive component of mixed torsion for \(e_{-r},e_n\), \(r\ge1\), forces
\[
\Lambda(e_{-r})e_n=P_+[e_{-r},e_n]
=\mathbf1_{n\ge r+2}(-(n+r))e_{n-r}.
\]
For \(r\ge2\) this follows from torsion; for \(r=1\) it is the required isotropy action. Similarly,
\[
\Lambda(e_r)e_{-(n+r)}=(n+2r)e_{-n}.
\]
If \(\Lambda(e_r)e_n=A(r,n)e_{n+r}\), complex-bilinear metric compatibility gives
\[
0=g(\Lambda(e_r)e_n,e_{-(n+r)})+g(e_n,\Lambda(e_r)e_{-(n+r)})
=-A(r,n)w_{n+r}-(n+2r)w_n.
\]
This is precisely the raising coefficient in (1).

Define a single coefficient, including zero targets,
\[
C(m,n)=\begin{cases}
0,&n<2\ \text{or}\ n+m<2,\\
m-n,&m\le0,\ n\ge2,\ n+m\ge2,\\
-(n+2m)w_n/w_{n+m},&m\ge1,\ n\ge2.
\end{cases}\tag{5}
\]
Then \(\Lambda(e_m)e_n=C(m,n)e_{n+m}\) on \(E_+\). Extend to \(E_-\) by reality:
\[
\Lambda(e_m)e_{-n}=-C(-m,n)e_{m-n},\qquad n\ge2.\tag{6}
\]
A zero coefficient means zero, not an isotropy vector retained as a tangent vector.

For the three isotropy generators, (1) becomes
\[
\rho(e_0)e_n=-n e_n,\quad
\rho(e_1)e_n=(1-n)e_{n+1},\quad
\rho(e_{-1})e_n=\begin{cases}-(n+1)e_{n-1},&n\ge3,\\0,&n=2.\end{cases}
\]
Thus \(\Lambda|_{\mathfrak h}=\rho\) exactly.

### 2.2 All-mode, all-boundary equivariance: a quotient/adjoint proof

Let
\[
\mathfrak b_-=\left\{\sum_{k\le1}x_ke_k\right\}\subset\mathfrak g_{\mathbb C}.
\]
It is a closed Lie subalgebra containing \(\mathfrak h_{\mathbb C}\). The positive smooth space is naturally
\[
E_+\simeq\mathfrak g_{\mathbb C}/\mathfrak b_-.
\]
For every \(k\le1\), including \(k=1\) after simplifying its coefficient, (1) is exactly the quotient representation
\[
\Lambda(e_k)=P_+\operatorname{ad}(e_k).
\]
Consequently, for \(a=-1,0,1\) and \(k\le1\),
\[
[\rho(e_a),\Lambda(e_k)]=(a-k)\Lambda(e_{a+k}).\tag{7}
\]
If \(a=k=1\), the coefficient vanishes. All other brackets stay inside \(\mathfrak b_-\). This is a quotient-representation identity, so it includes every truncation boundary without an omitted case.

The formal adjoints in \(h_w\), on the common smooth domain, are
\[
\Lambda(e_k)^\dagger=\Lambda(e_{-k}),\qquad
\rho(e_a)^\dagger=\rho(e_{-a}).\tag{8}
\]
For \(m\ge2\), apply (7) to \(k=-m\) and take adjoints:
\[
[\Lambda(e_m),\rho(e_{-a})]=(a+m)\Lambda(e_{m-a}).
\]
After putting \(b=-a\), this is
\[
[\rho(e_b),\Lambda(e_m)]=(b-m)\Lambda(e_{m+b}),
\]
which proves the remaining positive-mode identities. The negative tangent part follows by reality. This is an all-mode proof, not an inference from finitely many matrices.

For example the nonreductive boundary is retained rather than discarded:
\[
[\rho(e_{-1}),\Lambda(e_2)]=-3\rho(e_1).
\]
On \(e_2\), both sides equal \(3e_3\).

The actual \(H\) action on the smooth quotient is smooth. Since \(H=\operatorname{PSL}(2,\mathbb R)\) is connected, the infinitesimal identity integrates: along a smooth one-parameter subgroup, differentiate
\[
\rho(e^{tA})\Lambda(\operatorname{Ad}_{e^{-tA}}X)\rho(e^{-tA}).
\]
Its derivative vanishes by (7). Therefore
\[
\Lambda(\operatorname{Ad}_hX)=\rho(h)\Lambda(X)\rho(h)^{-1}.\tag{9}
\]
This argument occurs on the smooth Fréchet domain, not by manipulating unbounded Hilbert generators as bounded operators.

### 2.3 Smoothness and actual descent

For all allowed positive input modes,
\[
|C(m,n)|\le 2(n+|m|).
\]
The convolution defining \(\Lambda(X)v\) therefore maps rapidly decreasing coefficients continuously to rapidly decreasing coefficients. For example, with weighted \(\ell^1\) seminorms,
\[
p_N(\Lambda(X)v)\le c_N p_{N+1}(X)p_{N+1}(v).
\]
Thus \((X,v)\mapsto\Lambda(X)v\) is a continuous bilinear, hence smooth Fréchet map.

Let \(\theta=g^{-1}dg\) denote the left Maurer–Cartan form in the convention above. A section of the associated tangent bundle is represented by a smooth function satisfying
\[
f(gh)=\rho(h)^{-1}f(g).
\]
Define
\[
Df=df+\Lambda(\theta)f.\tag{10}
\]
On a vertical vector generated by \(A\in\mathfrak h\), the two terms are \(-\rho(A)f\) and \(\Lambda(A)f\), so they cancel. Equation (9) gives the necessary right-equivariance. Thus (10) descends to a genuine connection on \(TM\), without choosing an invariant complement or an \(\mathfrak h\)-valued principal connection.

### 2.4 Torsion, metric, and polarization

If \(q:\mathfrak g\to\mathfrak g/\mathfrak h\), the torsion in this description is
\[
T(X,Y)=\Lambda(X)qY-\Lambda(Y)qX-q[X,Y].\tag{11}
\]
With an isotropy argument it vanishes because \(\Lambda|_{\mathfrak h}=\rho\). Mixed horizontal signs vanish by construction. For two positive modes it reduces to the polynomial identity
\[
(2m+n)w_n-(m+2n)w_m=(n-m)w_{m+n},\tag{12}
\]
which follows by expanding \(w_t=t^3-t\). The negative-negative case follows by conjugation.

Reality (6) and the adjoint identity (8) imply
\[
\Lambda(X)^\dagger=-\Lambda(\overline X).
\]
For real \(X\), this is skew-Hermiticity, hence real metric compatibility. The connection preserves both summands, so \(\nabla J=0\).

The weak metric is nondegenerate on smooth tangent vectors. The usual algebraic uniqueness proof for a torsion-free metric connection only needs nondegeneracy, not surjectivity of the metric map into the continuous dual. Therefore the constructed connection is its Levi-Civita connection.

Torsion freedom and \(\nabla J=0\) imply \(N_J=0\) and \(d\omega=0\). Independently, the pullback of the two-form to the Lie algebra is
\[
\omega(e_a,e_b)=-i(a^3-a)\delta_{a+b,0};
\]
it annihilates the isotropy and is a Lie-algebra cocycle. The cocycle identity is equivalent to (12).

Also \(\mathfrak h_{\mathbb C}\oplus E_- =\mathfrak b_-\) and its conjugate are subalgebras. Thus the polarization is involutive. If an actual complex atlas realizing it is supplied, the negative-direction part of (1) is the canonical \(\bar\partial\) operator, and metric compatibility identifies (10) as the Chern connection. This last terminology is not being used to bypass the complex-chart issue.

## 3. Curvature, including isotropy terms

Maurer–Cartan applied to (10) gives
\[
R(X,Y)=[\Lambda(X),\Lambda(Y)]-\Lambda([X,Y]).\tag{13}
\]
The bracket in the last term is the **full** bracket in \(\mathfrak g\). For arbitrary integer \(a,b\), its action on \(E_+\) is the completely specified weighted shift
\[
R(e_a,e_b)e_n=\bigl[C(b,n)C(a,n+b)-C(a,n)C(b,n+a)
-(a-b)C(a+b,n)\bigr]e_{n+a+b},\tag{14}
\]
using the zero conventions in (5).

Curvature vanishes if one argument is in \(\mathfrak h\), by equivariance. It also vanishes on two positive arguments and on two negative arguments. For two positive arguments the common numerator reduces to
\[
(n+2b)(n+b+2a)-(n+2a)(n+a+2b)
+(a-b)(n+2a+2b)=0.
\]
The negative case follows directly from the quotient representation of \(\mathfrak b_-\).

For opposite modes \([e_m,e_{-m}]=2me_0\), and \(-2m\Lambda(e_0)e_n=2mn e_n\). Evaluating the two compositions yields (2). Omitting this isotropy term would leave an uncancelled term of order \(n\) and would incorrectly destroy trace convergence.

## 4. Absolute convergence and an actual summation

Define, for positive \(m\),
\[
f_m(n)=\frac{(n+2m)^2w_n}{w_{n+m}}.
\]
For \(n\ge m+2\),
\[
r_m(n)=2mn+f_m(n-m)-f_m(n).
\]
Exact polynomial division gives
\[
\boxed{f_m(n)=n^2+mn-2m^2+q_m(n),\qquad
q_m(n)=\frac{m(m^2-1)(m+2n)(2m+n)}{(n+m)((n+m)^2-1)}.}\tag{15}
\]
Thus
\[
r_m(n)=q_m(n-m)-q_m(n)
=\frac{2m^2(m^2-1)}{n^2}+O_m(n^{-3}).\tag{16}
\]
The finitely many lower modes do not affect convergence. Hence
\[
\sum_{n=2}^{\infty}|r_m(n)|<\infty.
\]
The normalized basis \(u_n=e_n/\sqrt{w_n}\) of the positive \(H^{3/2}\) space has exactly the same diagonal eigenvalues. Equation (16), therefore, proves ordinary Hilbert trace class, not merely formal summability.

For an integer cutoff \(N\ge m+1\), directly summing (2) gives the finite identity
\[
\begin{aligned}
S_m(N)&=\sum_{n=2}^N r_m(n)\\
&=mN(N+1)-2m-\sum_{n=N-m+1}^{N}f_m(n).\tag{17}
\end{aligned}
\]
The polynomial part of the last sum is
\[
\sum_{n=N-m+1}^{N}(n^2+mn-2m^2)
=mN(N+1)+\frac{-13m^3+m}{6}.
\]
Combining this with (15) gives the **exact finite-cutoff formula**
\[
\boxed{S_m(N)=\frac{13}{6}(m^3-m)-\sum_{n=N-m+1}^{N}q_m(n).}\tag{18}
\]
There are only \(m\) remainder terms; each tends to zero as \(N\to\infty\). This proves (3) by an ordinary limit. No divergent polynomial series is assigned a value.

The tail has the additional check
\[
\frac{13}{6}(m^3-m)-S_m(N)
=\frac{2m^2(m^2-1)}{N}+O_m(N^{-2}).
\]
For \(m=1\), the connection is isotropy and \(r_1(n)=0\) identically, as all formulas require. For negative \(m\), antisymmetry gives the odd extension of (3).

### An explicit special case

For \(m=2\), formula (2) simplifies for **every** \(n\ge2\), including the lower boundary modes, to
\[
r_2(n)=\frac{24(n^2+6n+6)}{n(n+1)(n+2)(n+3)}
=\frac{24}{n}-\frac{12}{n+1}-\frac{24}{n+2}+\frac{12}{n+3}.
\]
The first values are \(22/5,11/5,46/35,61/70\). Finite telescoping gives
\[
S_2(N)=13-\frac{12(N+3)}{(N+1)(N+2)}-\frac{12(N+4)}{(N+2)(N+3)},
\]
so its limit is visibly 13. Exact rational cutoff values converted to decimals are

| \(N\) | \(S_2(N)\) |
|---:|---:|
| 10 | 10.74125874125874125874 |
| 100 | 12.76123403316916500331 |
| 1000 | 12.97601203579675349993 |
| 10000 | 12.99760012003597960756 |

These values are checks on the exact limit argument, not its replacement.

## 5. Smooth smearing: a uniform trace-norm estimate

The trace-class conclusion can be extended beyond a single Fourier pair without assuming a Hilbert connection. Here is an explicit uniform argument.

Let \(m,r\ge2\), \(d=m-r\), and initially \(m\ge r\). For \(n\ge r+2\), the coefficient of \(e_{n+d}\) in \(R(e_m,e_{-r})e_n\) is
\[
F_{m,r}(n)=\frac{(n+r)(n-r+2m)w_{n-r}}{w_{n+d}}
-\frac{(n+2m)(n+m+r)w_n}{w_{n+m}}
+\frac{(m+r)(n+2d)w_n}{w_{n+d}}.\tag{19}
\]
Its common numerator over \(w_{n+d}w_{n+m}\) is exactly
\[
r(r^2-1)Q_{m,r}(n),
\]
where
\[
\begin{aligned}
Q_{m,r}(n)={}&(4m-2r)n^4+(14m^2-9mr+r^2)n^3\\
&+(14m^3-15m^2r+3mr^2+2r)n^2\\
&+(4m^4-9m^3r+3m^2r^2+3mr-r^2)n\\
&-mr(2m-r)(m^2-1).
\end{aligned}\tag{20}
\]
In particular, the numerator has degree at most four in \(n\), and total degree at most eight in \(m,r,n\). Its leading tail is
\[
F_{m,r}(n)=\frac{2r(r^2-1)(2m-r)}{n^2}+O_{m,r}(n^{-3}).
\]
The expansion (20) is an explicit polynomial identity; it was also checked in a fresh exact Sage kernel.

Set \(M=m+r\). In the normalized basis, each connection shift coefficient satisfies
\[
|\langle u_{n+k},\Lambda(e_k)u_n\rangle|\le n+2|k|.
\]
Therefore the finitely many curvature columns with \(n\le2M\) have coefficient bounded by a universal constant times \(M^2\), and their total absolute sum is \(O(M^3)\).

For \(n>2M\), (20) gives a numerator bounded by \(cM^4n^4\); the denominator is bounded below by \(cn^6\), and the normalization factor \(\sqrt{w_{n+d}/w_n}\) is uniformly bounded. Thus the normalized curvature coefficient is bounded by
\[
C\frac{M^4}{n^2}.
\]
Its tail sum is \(O(M^3)\). A single weighted shift has trace norm equal to the sum of the absolute normalized coefficients because its nonzero output columns are orthogonal. Consequently,
\[
\|R(e_m,e_{-r})\|_1\le C(1+m+r)^3.\tag{21}
\]
For \(m<r\), metric compatibility gives
\[
R(e_m,e_{-r})^\dagger=R(e_r,e_{-m}),
\]
so the same bound follows by adjoint symmetry.

For smooth \(X=\sum x_ke_k\), \(Y=\sum y_ke_k\), the Fourier coefficients are rapidly decreasing. Equation (21) makes their double curvature series absolutely convergent in trace norm, and its value agrees on the smooth core with the curvature of (10). Off-diagonal shifts have trace zero, while (3) gives
\[
\operatorname{Tr}R(X,Y)=\frac{13}{6}\sum_{m\ge2}w_m(x_my_{-m}-x_{-m}y_m).
\]
This is (4). The argument proves trace-norm continuity of this curvature bilinear map on smooth vectors. It does **not** prove that the connection one-form is trace class, or even bounded on the Hilbert completion.

## 6. Smooth vectors versus the critical Hilbert completion

The completed positive fiber is
\[
\mathcal H_+=\left\{\sum_{n\ge2}v_ne_n:\sum_{n\ge2}w_n|v_n|^2<\infty\right\},
\]
which is the positive \(H^{3/2}\) space, up to equivalent low-frequency conventions. The rapid smooth subspace is dense and is invariant under every connection operator and every finite composition used above.

For fixed \(r>0\), the normalized raising coefficient is
\[
-(n+2r)\sqrt{w_n/w_{n+r}}\sim -n,
\]
and the lowering coefficient is
\[
-(n+r)\sqrt{w_{n-r}/w_n}\sim -n.
\]
Thus the generators are unbounded on \(\mathcal H_+\). For example \(\Lambda(e_0)u_n=-nu_n\). Formula (10) is a smooth Fréchet connection, not a bounded-operator-valued Hilbert connection in these homogeneous frames. Smooth \(X\) gives a bounded map from the positive \(H^{5/2}\) domain into \(H^{3/2}\), but this is not the same assertion.

Each expression in (13) is first formed on the common smooth domain. Its curvature combination, unlike its separate summands, has the trace-class extension proved above. One may not write an illegitimate trace identity by separately tracing the unbounded products, nor invoke cyclicity to discard their commutator. The finite boundary term in (18) is essential.

The actual isotropy action extends unitarily to \(\mathcal H_+\), but it is generally strongly continuous rather than norm differentiable; its real infinitesimal generators are unbounded. The usual \(H^{3/2}\) completion is also at the critical differentiability threshold and does not automatically furnish a Hilbert Lie group of diffeomorphisms. A standard smooth Hilbert bundle, its transition-map topology, its connection domain, and parallel transport require separate analytic construction. None is assumed here.

## 7. What curvature tracing does not prove about a determinant line

An ordinary trace of curvature does not manufacture a determinant functor for an infinite-dimensional tangent bundle. A determinant interpretation still needs, for example:

1. A specified Fredholm family or restricted-polarization construction, with admissible transition operators and the relevant Schatten-ideal conditions.
2. Smoothness in the required operator/ideal topology, compatible domains for the unbounded connection operators, and a construction of local determinant connections whose curvature is actually this trace.
3. A globally consistent cocycle and any required central/projective group lift, rather than a local curvature calculation alone.
4. The appropriate normalized curvature integrality condition whenever the base or equivariance problem has nontrivial periods.

There is a useful distinction here. The three-point slice makes this particular smooth base contractible, so a closed imaginary two-form has no topological period obstruction to being the curvature of **some** connection on an ordinary trivial complex line. That observation does not identify the line as a determinant line or give it the desired group action.

In fact an honest \(G\)-equivariant line over \(G/H\), with a \(G\)-invariant connection, cannot realize the nonzero curvature above. Such a line is determined by a smooth one-dimensional character of \(H\). Connected semisimple \(H=\operatorname{PSL}(2,\mathbb R)\) has no nontrivial such character. Its invariant connection one-form would then be an \(H\)-invariant covector on \(\mathfrak g/\mathfrak h\); there is none because \(e_0\) acts with the nonzero weights \(-n\), \(|n|\ge2\). Thus the honest homogeneous line/invariant connection is trivial-flat. A natural invariant determinant realization with (4) must therefore use an appropriate projective or central-extension lift, in addition to solving the analytic determinant problem.

## 8. Verification and archived evidence

The review started from the stated Witt data without opening any pre-existing candidate report. Only the root vault instructions and the requested math-computation skill/reference were read. The connection, diagonal curvature, and finite-limit coefficient were derived and sent to the parent before a later parent message confirmed independent agreement. A parent clarification supplied the finite group-sign convention recorded above. All computations here are self-contained fresh-kernel calls.

Exact SageMath 10.9 checks are archived with their actual server responses and native results:

- [Algebra source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/01_algebra/source.py>), [algebra output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/01_algebra/output.json>), [actual algebra tool response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/01_algebra/actual_tool_response.json>), [native algebra result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/01_algebra/result.sobj>).
- [Infinity/source calculation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/02_infinity/source.py>), [infinity output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/02_infinity/output.json>), [actual infinity tool response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/02_infinity/actual_tool_response.json>), [native infinity result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/02_infinity/result.sobj>).
- [Finite and mixed-mode source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/03_finite/source.py>), [finite and mixed-mode output](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/03_finite/output.json>), [actual finite tool response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/03_finite/actual_tool_response.json>), [native finite result](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/03_finite/result.sobj>).

The finite batch passed 84 isotropy, 1,428 equivariance, 289 torsion, 13,328 metric, 1,000 Bianchi, 475 positive-type, 475 negative-type, and 1,365 mixed-adjoint exact checks. All 24 cutoff comparisons agreed both with direct summation and with the remainder identity. Polynomial identities, tail degrees, leading coefficients, and the explicit mixed numerator were checked symbolically, not inferred from these finite ranges.

The first call raised Sage's `ArithmeticError: factorization of 0 is not defined` on an exactly zero torsion residual. This diagnostic is retained rather than silently erased: [failed source](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/00_failed_source.py>), [actual failed response](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/00_failed_call_actual_output.json>), and [diagnostic interpretation](</Users/koishi/Documents/Note/Drafts/Gravity formulation equivalence/reviews/independent_witt_kahler_20261031_LNah5y/00_failed_call_diagnostics.json>). The corrected fresh calls explicitly avoid factoring zero. The three successful actual responses have no warnings, stderr, or truncation.

Original private exports remain at their recorded locations in the actual tool responses; complete copies were archived here. No existing note or candidate report was modified.

**Verified:** the all-mode nonreductive connection argument, torsion/metric/J properties, full mode curvature, trace-class extension, exact ordinary trace coefficient, smooth-smearing trace-norm estimate, and the honest equivariant-line obstruction under the stated smooth group convention.

**Not established here:** an actual complex Fréchet atlas from involutivity alone; a norm-smooth Hilbert bundle/connection at the critical completion; an analytic determinant construction, its projective/central extension, or a determinant-line identification.
