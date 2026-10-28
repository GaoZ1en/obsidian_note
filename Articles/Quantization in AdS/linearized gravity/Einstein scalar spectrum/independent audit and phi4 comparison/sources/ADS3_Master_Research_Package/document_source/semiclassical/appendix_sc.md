# Appendix SC. Proofs for the balanced and soft spectral limits

The arguments in this appendix use the exact pair coefficient and kernel theorem from Chapters 4–5. They reproduce the analytic and algebraic steps needed for Chapter 8, including the later corrections to metric transport, coherent-state counting and moving-region estimates. The proof sources are [DS, Apps. A, B, G and I], [A2, App. A], [HP, Apps. D–E] and [A3, App. C].

## SC-A. Harmonic realization, trace law and support

### SC-A.1 The pair remainder and the mass transfer

Write $d$ for a representation parameter in this proof only. On a labelled polynomial factor, the pair Casimir is

\[
C_{ij}(d)=-(z_i-z_j)^2\partial_i\partial_j
+d(z_i-z_j)(\partial_i-\partial_j)+d(d-1).
\]

The homogeneous primary vector space

\[
V_P=\{f\in\mathbb C[z_1,\ldots,z_N]_P:\ \sum_i\partial_i f=0\}
\]

is independent of $d$. Its Hilbert form is the restriction of the tensor product form
$\langle z^\alpha,z^\beta\rangle_d=\delta_{\alpha\beta}\prod_i\alpha_i!/(d)_{\alpha_i}$.
For $d_0=1/2$,

\[
C_{ij}(d)-C_{ij}(d_0)
=(d-\tfrac12)(z_i-z_j)(\partial_i-\partial_j)+(d-\tfrac12)^2.
\]

Multiplication by one coordinate has norm at most $\sqrt2$ in the $d_0$ form between adjacent homogeneous degrees; differentiation has norm at most a constant times $P$. Hence the difference above has norm $O_{N,d}(P+1)$, whereas each pair Casimir has norm $O_{N,d}((P+1)^2)$ in this fixed auxiliary form. Expanding a fixed word one factor at a time shows that its normalized trace, after each left Casimir is divided by $P^2$ and each right one by $Q^2$, changes by $O(P^{-1}+Q^{-1})$. The estimate holds after the physical permutation projection, since the operators preserve its range.

This argument compares polynomial words. It does not assert uniform equivalence of physical norms as $P$ grows, and it does not apply a nonsmooth functional calculus in a nonphysical norm. To obtain a minimum, first choose one polynomial $p_\varepsilon(x,y)$ uniformly approximating $\min(x,y)$ on a fixed rectangle containing the pair spectra. At each parameter apply its approximation estimate in that parameter's own positive Hilbert form, where $C^L$ and $C^R$ commute and are selfadjoint. Compare the fixed polynomial traces by the preceding word argument. First take $P,Q\to\infty$, then take $\varepsilon\downarrow0$. For a general outer function, first repeat the argument for fixed polynomials in the pair sum, then approximate the outer continuous function on a common spectral interval. The order of these operations avoids an unjustified operator-norm comparison of minimum functions.

The exact pair coefficients imply

\[
w_{ij}=4\Delta(\Delta-2)I
-8\min(C_{ij}^L,C_{ij}^R)+R_{ij}.
\]

On every allowed pair channel, $R_{ij}$ vanishes for $|k-\ell|\geq4$, and

\[
|R_{ij}|_{(k,\ell)}\leq C_\Delta(1+\min(k,\ell))
\]

in the spin-zero and spin-two channels. This follows by polynomial division of the rational coefficients: the spin-two numerator has degree four and its denominator degree three; the spin-zero difference from the common Casimir term is at most linear. The exceptional $n=0$ coefficient is evaluated from its nonsingular formula, including at $\Delta=3/2$. Summing over finitely many pairs gives $\|\sum R_{ij}\|=O(P+Q+1)$. On the labelled auxiliary space one may set the remainder to zero in odd pair-parity channels; this is an auxiliary extension and does not introduce odd physical Einstein channels.

### SC-A.2 Coordinate-even harmonic tensors

Define a linear map by

\[
\mathcal T z^\alpha=\frac{y_1^{2\alpha_1}\cdots y_N^{2\alpha_N}}
{\prod_i(1/2)_{\alpha_i}}.
\]

The total lowering becomes $\Delta_y/4$, the total raising becomes multiplication by $\sum_i y_i^2$, and the image of $V_P$ is the coordinate-even part of the harmonic space $\mathcal H_{2P}(\mathbb R^N)$. The Fischer norm of $\mathcal Tz^\alpha$ is $4^P$ times the original norm, a constant over the degree-$P$ block. Thus the map is unitary after one degree-dependent scalar rescaling. If

\[
J_{ij}=-i(y_i\partial_{y_j}-y_j\partial_{y_i}),
\]

direct differentiation gives

\[
\mathcal T C_{ij}(1/2)\mathcal T^{-1}
=\frac14J_{ij}^2-\frac14.
\]

For an orthonormal frame $(u,v)$ let $\xi=(u+iv)/\sqrt2$. It satisfies $\xi^*\xi=1$ and $\xi\cdot\xi=0$, so $\psi_L(\xi)=\xi^{\otimes L}$ is a normalized symmetric traceless tensor. Its orbit is parametrized by the oriented Grassmannian, up to an irrelevant phase. The orbit average of its rank-one projector commutes with the orthogonal group; irreducibility of $\mathcal H_L$ and its trace one give the exact identity

\[
\int |\psi_L(\xi)\rangle\langle\psi_L(\xi)|\,d\xi
=\frac{I_{\mathcal H_L}}{\dim\mathcal H_L}.
\]

This also follows directly by invariant harmonic tensor contraction, so no semiclassical trace approximation has entered.

Write a generator on the tensor power as $\sum_{a=1}^L j^{(a)}$. In a fixed product of $m$ generators, the terms with $m$ distinct tensor slots contribute the product of their one-slot expectations, times $L(L-1)\cdots(L-m+1)$. All repeated-slot terms are $O_m(L^{m-1})$ because one-slot generators have bounded norm. Dividing by $L^m$ yields the classical product with error $O_m(L^{-1})$. In particular

\[
\frac{\langle J_{ij}\rangle}{L}=B_{ij},\qquad
\operatorname{symbol}\left(\frac{C_{ij}(1/2)}{P^2}\right)=B_{ij}^2
\quad(L=2P).
\]

The sign of the first identity depends on the harmless choice of generator orientation; the squared symbol does not. This derivation fixes the factor of four.

### SC-A.3 The actual physical projection

Before imposing coordinate-evenness, work on $\mathcal H_{2P}\otimes\mathcal H_{2Q}$. The relevant finite group is

\[
\mathcal G=\big((\mathbb Z_2)^N_L\times(\mathbb Z_2)^N_R\big)\rtimes S_N,
\qquad |\mathcal G|=2^{2N}N!.
\]

The permutation is the same on both factors. Averaging this group first selects coordinate-even polynomials in each factor and then diagonal Bose invariance. Exactly four elements, the independent choices of $\pm I$ on the two factors with identity permutation, act as identity on the even-degree harmonic tensor product.

For any other element, at least one factor has $|\xi^*g\xi|<1$ almost everywhere on the Grassmannian. An inserted fixed word of $m$ generators changes at most $m$ tensor slots, leaving a bound of the form $C_m L^m|\xi^*g\xi|^{L-m}$ before normalization. Dominated convergence therefore kills every noncentral term. This remains valid with the indicator of any fixed measurable region inserted into the integral.

Since

\[
\dim\mathcal H_{2P}(\mathbb R^N)
\sim\frac{2(2P)^{N-2}}{(N-2)!},
\]

the four central terms give

\[
\frac4{2^{2N}N!}\dim\mathcal H_{2P}\dim\mathcal H_{2Q}
\sim\frac{P^{N-2}Q^{N-2}}{N!((N-2)!)^2}.
\]

They also give the normalized Haar trace law. The dimension asymptotic has been obtained at the auxiliary parameter before the trace is transferred to the physical mass; there is no circular appeal to an already normalized physical law.

### SC-A.4 Support, atoms and spectral edges

The product of oriented Grassmannians is connected for $N\geq3$, and $a_{N,r}$ is continuous. Identical generic planes give $a=0$; for $r<1$ they lie inside the strict zero chamber. The coordinate planes $(1,2)$ on the left and $(1,3)$ on the right give $a=8r^2$. Thus the image is the full interval.

The comparison walls $B_e^2=r^2(B'_e)^2$ have measure zero: each is the zero set of a nonzero real analytic function. Away from them the symbol is analytic, with the chosen comparison set fixed. Every chamber expression except the all-zero one is nonconstant on an open set. To verify this, sums of a proper nonempty subset of squared Plücker coordinates are nonconstant: a coordinate plane supported on an edge inside the subset gives value one, and one outside gives zero. Analytic continuation then excludes constancy on any chamber where both the left and right subset sums occur. The critical set of a nonconstant analytic function has measure zero; local coarea on its complement proves absolute continuity of the pushforward on that chamber. There are finitely many comparison chambers. At $r=1$, zero requires $X=Y$, a set of measure zero. At $r<1$, only the all-zero chamber contributes an atom.

For the edges, the exact pair remainder and the total-Casimir identity imply

\[
0\leq A_N\leq 8Q(Q+N\Delta-1)I+O_{N,\Delta}(P+Q+1)I.
\]

Hence no eigenvalue escapes the limiting interval. Every interval inside the support has positive limiting empirical mass, so there are eigenvalues arbitrarily close to both endpoints. This proves the edge limits separately from the weak law.

### SC-A.5 The beta marginal and the mean

The projection of $e_1$ onto a random two-plane has squared length $R^2\sim\operatorname{Beta}(1,(N-2)/2)$. Conditional on that projection, the complementary normalized direction is uniform in the $(N-1)$-dimensional perpendicular space. Consequently $B_{12}=RW_1$, where $R$ and $W$ are independent and $W$ is uniform on $S^{N-2}$. The square of $W_1$ is $\operatorname{Beta}(1/2,(N-2)/2)$. Gamma duplication yields, for every nonnegative integer $m$,

\[
\mathbb E|B_{12}|^m
=\frac{(1)_{m/2}(1/2)_{m/2}}
{(N/2)_{m/2}((N-1)/2)_{m/2}}
=\frac{m!(N-2)!}{(m+N-2)!}.
\]

The moment problem on $[0,1]$ is determinate, proving the beta density in Chapter 8. If $U,V$ are two independent copies,

\[
\mathbb E\min(U^2,r^2V^2)
=2\int_0^r t(1-t)^{N-2}(1-t/r)^{N-2}\,dt.
\]

Multiplying by $-8\binom N2$, substituting $t=ru$ and expanding the first power gives the terminating hypergeometric formula.

## SC-B. Kernel volume and the strict excess zero atom

### SC-B.1 Weighted lattice counting

Let $J_N=2N(N-1)$ and
$q_N(M)=[x^M]\prod_{j=2}^N(1-x^j)^{-1}$, with $q_N(M)=0$ for $M<0$. For $N\geq3$,

\[
q_N(M)=\frac{M_+^{N-2}}{N!(N-2)!}
+O_N((M_++1)^{N-3}).
\]

The coefficient at $x=1$ gives the leading term. All other root-of-unity poles have lower order because $\gcd(2,\ldots,N)=1$; equivalently one may count weighted simplices by a fixed fundamental domain. At $N=3$ the error is bounded and periodic, which is sufficient.

Expanding the second product in the kernel series gives

\[
\kappa_N(P,Q)=
\sum_{\substack{m_1,\ldots,m_{N-1}\geq0\\\sum m_a=Q}}
q_N\left(P-J_N-\sum_{a=1}^{N-1}a m_a\right).
\]

There are $O(Q^{N-2})$ terms. The total error is $O(P^{N-3}Q^{N-2}+Q^{N-2})$, lower order than $P^{N-2}Q^{N-2}$. The fixed shift $J_N$ may be removed only at this leading asymptotic stage. The simplex Riemann sum has normalized density $(N-2)!$, giving $k_N(r)$ after division by the independently established $d_N$.

For completeness, if $T$ is uniform on an $(m-1)$-simplex and the nodes $a_1,\ldots,a_m$ are distinct, repeated integration of a truncated power gives

\[
\mathbb E(c-\textstyle\sum a_iT_i)_+^{m-1}
=\frac{((m-1)!)^2}{(2m-2)!}
\sum_{i=1}^{m}\frac{(c-a_i)_+^{2m-2}}{\prod_{j\ne i}(a_j-a_i)}.
\]

It can be proved by induction using the fundamental theorem of calculus on the last barycentric coordinate; the divided difference of a primitive replaces the last two nodes. Taking $m=N-1$, $a_i=ri$, $c=1$ produces the displayed spline formula. Continuity of the integrand gives continuity at every transition $r=1/a$.

### SC-B.2 The three-particle atom

For $N=3$ identify an oriented plane with its unit normal. Then $(B_{12}^2,B_{13}^2,B_{23}^2)$ is a permutation of the squared coordinates of a uniform sphere point, hence is Dirichlet with parameters $(1/2,1/2,1/2)$. Let $E_i=\{X_i<r^2Y_i\}$. For $r<1$, three simultaneous violations are impossible because both vectors sum to one. Since $|B_i|$ is uniform on $[0,1]$, $\Pr(E_i)=r/2$. By inclusion–exclusion,

\[
p_3=1-\frac32r+3\Pr(E_1\cap E_2).
\]

Integrating the two Dirichlet densities over the two comparison inequalities, or expanding the square-root boundary factors and integrating monomials, gives the positive series $q_2$ in Chapter 8. The coefficients are nonnegative. Since
$H_{s+1}^{\rm odd}/(s+1)\leq1$ and the remaining denominators increase, its tail is bounded by the geometric estimate displayed there.

For $0<r\leq1/2$, $k_3=1-3r/2$, so the excess is $3q_2>0$. For $1/2<r<1$, write

\[
d(r)=p_3(r)-\frac{(1-r)^2}{2r},\qquad
C(r)=\int_0^r\frac{t\,\operatorname{artanh}t}{1-t^2}\,dt.
\]

Twice differentiating the convergent series on a compact subinterval gives

\[
q_2''(r)=\frac{8C(r)}{\pi^2r^3},\qquad
d''(r)=\frac1{r^3}\left(\frac{24C(r)}{\pi^2}-1\right).
\]

The function $C$ is strictly increasing and diverges at one, so $d''$ changes sign at most once and is positive near one. The integral formulas give $d(1)=d'(1)=0$. Therefore $d(r)>0$ on the terminal convex interval, by integrating twice backwards from one. On any preceding interval $d$ is concave, and its two endpoint values are positive; it is positive there as well.

To obtain the endpoint, use

\[
C(1-\epsilon)=\frac18\log^2(1/\epsilon)+O(\log(1/\epsilon)).
\]

Thus $p_3''(1-\epsilon)=3\pi^{-2}\log^2(1/\epsilon)+O(\log(1/\epsilon))$. Integrate twice using $p_3(1)=p_3'(1)=0$. The exact integral

\[
\int_0^\epsilon(\epsilon-u)\log^2(1/u)\,du
=\epsilon^2\left[\frac12L^2+\frac32L+\frac74\right],
\quad L=\log(1/\epsilon),
\]

proves both the leading constant and the stated $O(\epsilon^2\log(1/\epsilon))$ remainder.

### SC-B.3 Shared-particle violations for arbitrary $N$

Let $E_e=\{|B_e|<r|B'_e|\}$. The beta marginal gives

\[
\Pr(E_e)=\frac{N-2}{N-1}r+O_N(r^2).
\]

Both $1-\sum_e\Pr(E_e)$ and $k_N(r)$ have linear term
$1-N(N-2)r/2$. Choose two edges sharing particle one, say $(1,2)$ and $(1,3)$. In the star representation

\[
(B_{12},\ldots,B_{1N})=RW,\quad
R^2\sim\operatorname{Beta}(1,(N-2)/2),\quad W\sim{\rm Haar}(S^{N-2}),
\]

$R,W$ are independent. The density of $(|W_1|,|W_2|)$ in the positive quarter disk is

\[
\frac{2(N-3)}{\pi}(1-s^2-t^2)^{(N-5)/2}.
\]

Conditional on $A=|B'_{12}|$, $D=|B'_{13}|$ and $R\geq2r$, the probability of the rectangle
$0\leq s<rA/R,\ 0\leq t<rD/R$
equals its area times the density at the origin, with error $O_N(r^4/R^4)$. The region $R<2r$ contributes $O_N(r^2)$, and integration of the error gives the same order. The logarithmic integral is

\[
\mathbb E[R^{-2};R\geq2r]=(N-2)\log(1/r)+O_N(1),
\]

while the independent right star satisfies
$\mathbb E(AD)=4/[\pi N(N-1)]$. Consequently

\[
\Pr(E_{12}\cap E_{13})
=\frac{8(N-2)(N-3)}{\pi^2N(N-1)}
r^2\log(1/r)+O_N(r^2).
\]

Now apply the union bound to the merged event $E_{12}\cup E_{13}$ and all remaining $E_e$. This gives
$p_N\geq1-\sum_e\Pr(E_e)+\Pr(E_{12}\cap E_{13})$ with a definite direction. Comparing with the Taylor expansion of the exact spline proves SC-03. Dividing by $1-k_N=N(N-2)r/2+O(r^2)$ gives its normalized lower bound.

An optional completely explicit range in four particles is

\[
p_4(r)-k_4(r)\geq r^2/90\qquad(0<r\leq e^{-23}).
\]

Here the shared-event integral satisfies

\[
\frac{\Pr(E_{12}\cap E_{13})}{r^2}
\geq\frac4{3\pi^2}
\left[\log(1/r)+\frac{37}{12}-\frac{\pi^2}{8}
+\log\frac{1+\sqrt{1-r^2}}2\right].
\]

This follows by integrating the four-particle star radius; the needed moments are
$\mathbb ET=1/3$ and
$\mathbb E(T\log T)=(2\log2-13/6)/3$, and the remaining angular integral is
$\int_{[0,1]^3}\log(tu^2+(1-t)v^2)\,dt\,du\,dv=\pi^2/4-4$.
For the stated range the lower bound is at least $143/45$. Finally
$1-6\Pr(E_e)=1-4r+r^2$ and $k_4=1-4r+25r^2/6$, leaving $1/90$. This explicit range is sufficient and is not asserted optimal.

## SC-C. Exact flags, polynomial transport and exponential min–max

### SC-C.1 A common algebraic flag for every pair

For an edge $e=(i,j)$ set $\delta=z_i-z_j$ and $s=(z_i+z_j)/2$. Use translation-invariant spectator coordinates $t_a=z_a-s$, $a\ne i,j$. On primaries the derivative in $s$ with the original spectators held fixed is $-\sum_a\partial_{t_a}$; it is not the derivative with the new $t_a$ held fixed. Thus

\[
C_e(d)=(d+\delta\partial_\delta)(d+\delta\partial_\delta-1)
-\frac{\delta^2}{4}\left(\sum_{a\ne i,j}\partial_{t_a}\right)^2.
\]

It is triangular in powers of $\delta$, and its distinct diagonal eigenvalues are $(d+k)(d+k-1)$. For $d>0$ their differences are
$(k-j)(2d+k+j-1)\ne0$ when $k\ne j$. Solving the triangular eigenvector equations therefore proves the exact identity

\[
F_e(K):=V_P\cap\delta^K\mathbb C[z]_{P-K}
=\bigoplus_{k\geq K}E_e(k;d).
\]

For a left and right pair define

\[
Z_e(d)=\sum_{\ell=0}^{Q}
F_e^L(\ell+3)\otimes F_e^R(\ell+1)^{\perp_d}
=\bigoplus_{k\geq\ell+3}E_e^L(k;d)\otimes E_e^R(\ell;d).
\]

The equality follows by decomposing each right orthogonal complement into its channels $0,\ldots,\ell$ and using the nested left flags. Pair-evenness converts $k\geq\ell+3$ into $k\geq\ell+4$. Thus on a physical Bose vector, $Z_e(d)$ is exactly the good space for pair $e$.

Let $M_P(d)$ be the positive Riesz operator **on $V_P$** defined by

\[
\langle f,g\rangle_d=\langle f,M_P(d)g\rangle_{1/2}.
\]

It is the restricted Riesz map; it is not generally diagonal in a primary basis. For any subspace $F\subset V_P$,
$F^{\perp_d}=M_P(d)^{-1}F^{\perp_{1/2}}$.
Since permutations preserve both forms, $M_P$ commutes with them. Therefore the one map

\[
\mathcal R_d=I\otimes M_Q(d)^{-1}
\]

is Bose equivariant and sends **every** $Z_e(1/2)$ to $Z_e(d)$ simultaneously.

### SC-C.2 Quantitative metric and channel bounds

Put $b=d-1/2>0$. The ambient monomial norm ratio is

\[
\prod_i\frac{(1/2)_{\alpha_i}}{(d)_{\alpha_i}}.
\]

It is at most one. Since $\log(1+x)\leq x$ and
$\sum_{j=0}^{n-1}(j+1/2)^{-1}\leq2+\log[2(n+1)]$,
it is at least
$m_P=e^{-2Nb}2^{-Nb}(P+1)^{-Nb}$.
Restricting a quadratic-form inequality preserves it, so

\[
m_PI\leq M_P(d)\leq I.
\]

For every labelled primary tensor $v$,

\[
m_P\|v\|_0^2\leq\|\mathcal R_dv\|_d^2
\leq m_Q^{-1}\|v\|_0^2.
\]

Taking the infimum over a common transported subspace gives the identical comparison for squared distances to $Z_e$. In particular this is uniform for all vectors in every subspace, as required by min–max.

The nonzero Einstein residual coefficients satisfy

\[
(2d+3)^{-3}\leq a_{k\ell}\leq20(d+Q)^2.
\]

Here is an algebraic certificate of the lower bound. In spin two the numerator is at least $(n+1)^4$ and the denominator at most $[(2d+3)(n+1)]^3$. For diagonal $n\geq1$, after combining denominators, put $x=d-1$, $m=n-1$. The numerator is

\[
\begin{aligned}
U={}&30m^4+120m^3x+180m^3+160m^2x^2+540m^2x+386m^2\\
&+80mx^3+480mx^2+772mx+348m\\
&+8x^4+120x^3+362x^2+348x+98.
\end{aligned}
\]

Every coefficient of $U-30(m+1)^4$ is nonnegative. Its denominator is at most $[(2d+3)n]^3$. The $n=0$ diagonal coefficient is evaluated separately and exceeds $(2d+5)/2$. Channels with the opposite spin orientation add a positive Casimir difference; in the remaining bad channels $\ell-k\geq4$, that difference alone is at least $32(2d+3)$. These inequalities imply the uniform lower bound. For the upper bound, the spin-two correction is at most $8(d+n)$, the diagonal correction at most $8(d+n)+4$, and the exceptional coefficient at most $2d+5$; the Casimir difference is at most $8(d+Q)^2$. The stated common upper bound covers all cases.

Let $B_0=\sum_e\Pi_{Z_e(1/2)^\perp}$, restricted to the physical space. Then

\[
\langle v,B_0v\rangle_0=\sum_e\operatorname{dist}_0(v,Z_e(1/2))^2.
\]

The residual quadratic form is the same sum of bad-channel squared norms with weights between $a_{\min}$ and $a_{\max}$. The norm and distance inequalities, followed by min–max using the invertible map $\mathcal R_d$ on every trial subspace, give

\[
a_{\min}m_Pm_Q\lambda_j(B_0)
\leq\lambda_j(A_d)
\leq\frac{a_{\max}}{m_Pm_Q}\lambda_j(B_0)
\]

for all ordered indices. Their exact kernels are carried into one another, so the zero indices coincide. Applying this twice proves SC-06, because all displayed factors and their inverses grow at most polynomially in $P,Q$.

### SC-C.3 Coherent tails and the extensive trial subspace

In the auxiliary harmonic tensor model, the bad-channel projector on a pair is the restriction of

\[
R_e=\mathbf1_{\{|J_e^L|-|J_e^R|\leq4\}}.
\]

Indeed $|J_e|=2k$ on its pair channel. Measurement of $J_e$ in $\xi^{\otimes2P}$ is the sum of $2P$ independent one-slot variables in $[-1,1]$, with mean $B_e$. The elementary exponential Markov argument for bounded independent variables gives Hoeffding's bound [Hoeffding]

\[
\Pr\{|J_e-2PB_e|\geq t\}\leq2e^{-t^2/(4P)}.
\]

Only the independence of the tensor slots in a single coherent vector is used; Plücker components belonging to different edges need not be independent.

If $|B_e|-r|B'_e|>\delta$ and $|Q/P-r|\leq\delta/4$, the absolute mean gap is at least $3P\delta/2$. If both deviations are at most $P\delta/2$, the measured gap exceeds $P\delta/2$, hence exceeds four once $P\delta>8$. Therefore, uniformly over the strict chamber,

\[
\langle\Psi,R_e\Psi\rangle\leq4e^{-P\delta^2/16},
\quad\Psi=\psi_{2P}(\xi)\otimes\psi_{2Q}(\xi').
\]

Let $D=\dim\mathcal H_{2P}\dim\mathcal H_{2Q}$ and let $\Pi$ be the physical projection. Define

\[
C_\Omega=D\int_\Omega\Pi|\Psi\rangle\langle\Psi|\Pi\,d\mu.
\]

The full resolution implies $0\leq C_\Omega\leq I$ on the physical space. Section SC-A.3, with the indicator inserted, gives
$\operatorname{Tr}C_\Omega/d_N\to\mu(\Omega)$ for a fixed region.
For $0<\tau<1$ set $E_\tau=\mathbf1_{[\tau,1]}(C_\Omega)$. If $e_\tau$ is its rank,

\[
e_\tau\geq\frac{\operatorname{Tr}C_\Omega-\tau d_N}{1-\tau}.
\]

This follows by bounding the trace on its complement by $\tau(d_N-e_\tau)$.

Let $B_{\rm full}=\sum_eR_e$. It is positive and commutes with $\Pi$. Hence
$B_{\rm full}\Pi\leq B_{\rm full}$ and

\[
\operatorname{Tr}(B_0C_\Omega)\leq4MD\,e^{-P\delta^2/16}.
\]

Although $B_0$ and $C_\Omega$ need not commute, positivity of
$B_0^{1/2}(C_\Omega-\tau E_\tau)B_0^{1/2}$ gives
$\tau\operatorname{Tr}(B_0E_\tau)\leq\operatorname{Tr}(B_0C_\Omega)$.
For every unit vector $v$ in the range of $E_\tau$,

\[
\langle v,B_0v\rangle
\leq\operatorname{Tr}(B_0E_\tau)
\leq\frac{4MD}{\tau}e^{-P\delta^2/16}.
\]

Thus the entire range has a uniform exponentially small Rayleigh quotient. Transporting it gives a physical trial subspace of the same dimension with Rayleigh quotient at most

\[
\frac{4MDa_{\max}}{\tau m_Pm_Q}e^{-P\delta^2/16}.
\]

The prefactor is polynomial for fixed $N,\Delta,\delta,\tau$, so it is eventually at most $e^{-P\delta^2/32}$. Min–max yields that many eigenvalues, possibly including zeros. Subtract the exact $\kappa_N$, divide by $d_N$, take $P\to\infty$, and finally let $\tau\downarrow0$. This proves SC-04.

Finally, conditional on the right plane, each left marginal $|B_e|$ has density bounded by $N-2$. The loss in replacing a weak comparison by a strict margin is at most $(N-2)\delta$ per edge. The union bound proves $p_N-p_{N,\delta}\leq K_N\delta$, with no independence assumption.

## SC-D. The uniform three-particle moving layer

### SC-D.1 Uniform group traces for an arbitrary measurable set

For $N=3$, $\mathcal H_{2P}$ is a spin-$2P$ representation and $D=(4P+1)(4Q+1)$. A signed permutation acts on even-degree harmonics as the rotation $R=\det(g)g$. Every nonidentity cubic rotation has $\sin^2(\theta/2)\geq1/2$. If $a$ is its axis and $n$ the coherent sphere direction,

\[
|\langle\psi_{2P}(n),R\psi_{2P}(n)\rangle|
=\left[1-\sin^2(\theta/2)(1-(n\cdot a)^2)\right]^{2P}.
\]

Its spherical integral is at most $1/P$. Indeed, with $t=|n\cdot a|$,
$1-t^2\geq1-t$ and $(1-(1-t)/2)^{2P}\leq e^{-P(1-t)}$.
For a noncentral group pair, one of the two factors therefore contributes at most $1/\min(P,Q)$.

The exact physical dimension is

\[
d_3(P,Q)=\frac{(P+1)(Q+1)+3e_Pe_Q+2c_Pc_Q}{6},
\]

where $e_P=1$ for even $P$ and zero otherwise, while
$c_P=1,-1,0$ for $P=0,1,2\pmod3$. It is at least $PQ/6$; also $D/d_3\leq150$ for positive $P,Q$. Subtract the volume multiple of the trace identity **inside each noncentral integral**:
the integrand is multiplied by $\mathbf1_\Omega-\mu(\Omega)$, whose absolute value is at most one. This avoids a needless factor two. Since there are $384-4=380$ noncentral terms,

\[
\left|\frac{\operatorname{Tr}C_\Omega}{d_3}-\mu(\Omega)\right|
\leq\frac{380}{384}\frac{150}{\min(P,Q)}
<\frac{160}{\min(P,Q)}.
\]

The estimate is uniform for every measurable $\Omega$, including a set changing with $P,Q$.

### SC-D.2 The finite kernel count and loss allocation

If $P\leq2Q$, expansion of the exact kernel series gives

\[
\kappa_3(P,Q)=\#\{(a,b)\in\mathbb Z_{\geq0}^2:
2a+3b\leq P-Q-12\}.
\]

To see why the second right-budget constraint disappears, its potentially excluded part would require $P-2Q-12>0$, which is impossible here. Attach a unit square to every admissible lattice point. Its union is contained in
$2x+3y\leq P-Q-7$, hence has area at most $(P-Q)^2/12$; if the original triangle is empty the conclusion is immediate. Together with $d_3\geq PQ/6$ this proves
$\kappa_3/d_3\leq(1-r)^2/(2r)$.

Set $\mu=p_3-k_3$, $\delta=\mu/12$, $\tau=\mu/8$. The margin strip costs at most $3\delta=\mu/4$. The hypothesis $\mu\geq1280/\min(P,Q)$ bounds the group error by $\mu/8$. The spectral cutoff costs at most $\tau=\mu/8$ in the rank estimate, so

\[
\frac{\dim E_\tau}{d_3}\geq p_3-\frac{\mu}{2}.
\]

Subtracting the finite upper bound on the kernel leaves at least $\mu d_3/2$ strictly positive eigenvalues. Substitution into the transported Rayleigh bound, with $M=3$, gives exactly the threshold
$96Da_{\max}(\mu m_Pm_Q)^{-1}e^{-P\mu^2/2304}$.
If $P\mu^2/\log P\to\infty$, the prefactor consumes at most half the exponent. The endpoint formula of SC-B gives

\[
\mu(1-cP^{-\beta}(1+o(1)))
=\left(\frac{3c^2\beta^2}{2\pi^2}+o(1)\right)
P^{-2\beta}\log^2P.
\]

Since $d_3\sim P^2/6$, this proves both constants in SC-07. The sufficient dominance condition holds up to and including $\beta=1/4$.

## SC-E. A precise classical analytic-charge obstruction

Use the product Lie–Poisson bracket

\[
\{F,G\}=x\cdot(\nabla_xF\times\nabla_xG)
+z\cdot(\nabla_zF\times\nabla_zG)
\]

on $|x|=1$, $|z|=r$. Let $d_i=x_i^2-z_i^2$. Each chamber in which only $d_i$ is negative is nonempty for $0<r\leq1$, and there $h_r=-8(r^2+d_i)$. If a globally real analytic $F$ commutes with $h_r$ on all strict chambers, the analytic identity theorem gives $\{F,d_i\}=0$ everywhere on the connected orbit. Jacobi then gives commutation with

\[
c=\{d_1,d_2\}=4(x_1x_2x_3+z_1z_2z_3),
\]

and with

\[
e=\{d_1,c\}
=8[x_1^2(x_3^2-x_2^2)-z_1^2(z_3^2-z_2^2)].
\]

The six gradients of $|x|^2,|z|^2,d_1,d_2,c,e$ have determinant, at $z_1=0$,

\[
-2048x_1^3x_2x_3z_2^2z_3^2.
\]

At $x=(2/3,2/3,1/3)$ and $z=(0,3r/5,4r/5)$ this is
$-524288r^4/16875\ne0$. Therefore the Hamiltonian vector fields of $d_1,d_2,c,e$ span the four-dimensional tangent space on a nonempty open set. Their common first integral $F$ is constant there, hence everywhere by analyticity. For $r>1$ exchange the factors and rescale. This argument rules out exactly the global analytic class stated in SC-08; it does not classify piecewise analytic integrals or quantum charges without a proved symbol correspondence.

## SC-F. Why the fixed-budget Gram comparison does not extend to balance

**Proposition SC-09 (exact Hilbert–Schmidt obstruction).** Fix $N\geq4$ and $\Delta>1$, and set $P=Q=L\to\infty$. Let $T_{\rm norm}=I+K_L$ be the auxiliary Gram operator used in the fixed-right-degree identity comparison. Then

\[
\frac{d_{\rm aux}(L,L)}{d_N(L,L)}
\longrightarrow\frac12\binom N2,
\qquad
\liminf_{L\to\infty}
\frac{\|K_L\|_{\rm HS}^2}{d_{\rm aux}(L,L)}
\geq1-\frac{2}{\binom N2}>0.
\]

All norms refer to the positive auxiliary Hilbert form. This excludes that normalized Hilbert–Schmidt approximation to the identity in the balanced regime. It does not exclude changing the comparison operator or first removing dependencies. [AS, App. M, §6]

**Proof.** Put $M=N-2$. The spectator **full-level** space, rather than its primary quotient, has identity-Molien leading dimension

\[
H_M(L-k,L-\ell)\sim
\frac{(L-k)^{M-1}(L-\ell)^{M-1}}{M!((M-1)!)^2}.
\]

The leading auxiliary bad-pair domain is $0\leq k\leq\ell\leq L$. The extra strip of width two has lower degree, and pair parity supplies a factor one half. Therefore

\[
\begin{aligned}
d_{\rm aux}(L,L)
&\sim\frac{L^{2M}}{2M!((M-1)!)^2}
\int_{0\leq u\leq v\leq1}(1-u)^{M-1}(1-v)^{M-1}\,du\,dv\\
&=\frac{L^{2N-4}}{4((N-2)!)^3}.
\end{aligned}
\]

Division by SC-01's physical dimension proves the ratio.

There is no physical baseline kernel at $P=Q$. Indeed, equality would put every pair in $k_L\geq k_R+4$, where
$C_{ij}^L-C_{ij}^R\geq8\Delta+12>0$. But the pair-Casimir sum identity gives zero for the sum of these differences on a $(L,L)$ primary. Taking its quadratic form on a putative common good vector is a contradiction. Thus the physical residual has full rank, and the auxiliary Gram has exactly $d_{\rm aux}-d_N$ zeros. Each contributes the exact eigenvalue $-1$ to $K_L=T_{\rm norm}-I$. Their squared contribution proves the lower bound. At $N=4$, the ratio tends to three and the lower bound is $2/3$.
