# Slow Representatives and Galerkin Convergence

Four different slow representatives, each with a nonzero fast coefficient, give different spectra at finite cutoff. For every fixed radial level, their exact Ritz frequencies converge monotonically from above to the same alternative-quantization value. The proof below establishes fast-mode density in the zero-slow-trace form domain, identifies the full closed form and its alternative spectrum, and applies the variational principle. At $\Delta=3/5$, $\ell=0$, and $N=128$ fast modes, the separate numerical check gives a maximum error below $2.5\times10^{-6}$ among the lowest four frequencies for every representative.

The original calculation is in [Scalar mode expansions and boundary conditions](<Scalar mode expansions and boundary conditions.md>), especially “Non-Eigen Slow Seed and Numerical Convergence”; its standalone implementation is [scalar_off_shell_mode_truncation.wl](scalar_off_shell_mode_truncation.wl). It used $s_\ell[1+1/(2(1+r^2))]$, which is not an eigenfunction but still has $\beta=0$. The present calculation keeps the same action and fast basis. Its implementation is [scalar_slow_representatives.wl](scalar_slow_representatives.wl), with [numerical results](scalar_slow_representatives_results.json).

## Action and Boundary Variation

Set the AdS radius to one, use signature $(-,+,+)$, and consider a real scalar with

$$\begin{align}
\mathrm{d}s^2&=-(1+r^2)\mathrm{d}t^2+\frac{\mathrm{d}r^2}{1+r^2}+r^2\mathrm{d}\phi^2, \\
M^2&=\Delta(\Delta-2),\qquad 0<\Delta<1, \\
S_R&=-\frac12\int_{r\leq R}\mathrm{d}^3x\sqrt{-g} \left(\nabla_\mu\Phi\nabla^\mu\Phi+M^2\Phi^2\right) -\frac\Delta2\int_{r=R}\mathrm{d}^2x\sqrt{-\gamma}\,\Phi^2.
\end{align}$$

Fix a real angular harmonic of unit norm, with eigenvalue $\ell^2$, $\ell=|m|$. Profiles are regular at $r=0$ and have boundary coefficients defined by

$$\begin{align}
u(r)&=\alpha[u]r^{-\Delta}+\beta[u]r^{\Delta-2}+o(r^{\Delta-2}).
\end{align}$$

The profiles used below also have the corresponding differentiated asymptotics. Variations vanish at the initial and final times. The radial boundary variation is

$$\begin{align}
\delta S_R\big|_\Gamma &=-\int\mathrm{d}t\, \left[R(1+R^2)\partial_r\Phi+\Delta R\sqrt{1+R^2}\Phi\right]\delta\Phi, \\
\delta S\big|_\Gamma &=2(1-\Delta)\int\mathrm{d}t\,\beta\,\delta\alpha.
\end{align}$$

Thus free variation of $\alpha$ yields $\beta=0$ as the natural boundary condition on stationary fields. It is not imposed on the individual trial profiles. No finite boundary deformation is added, and there is no gauge constraint for this scalar.

For a finite radial basis $u_i$, substitute $\Phi=\sum_iq_i(t)u_i(r)$ before varying the coefficients. Suppressing the angular harmonic gives

$$\begin{align}
L_N&=\frac12\dot q^TG\dot q-\frac12q^TKq, \\
G[u,v]&=\int_0^\infty\mathrm{d}r\,\frac{r}{1+r^2}uv, \\
K[u,v]&=\lim_{R\to\infty}\left\{ \int_0^R\mathrm{d}r\left[r(1+r^2)u'v' +\left(\frac{\ell^2}{r}+M^2r\right)uv\right] +\Delta R\sqrt{1+R^2}\,u(R)v(R)\right\}, \\
Kv&=\omega^2Gv.
\end{align}$$

At each fixed $N$, the radial cutoff is removed in the matrix elements first. The limit $N\to\infty$ is a separate question.

## Four Representatives

Use the same fast basis as in the original calculation:

$$\begin{align}
z&=\frac1{1+r^2}, & s_\ell&=r^\ell(1+r^2)^{-(\ell+\Delta)/2}, \\
f_{n\ell}&=r^\ell(1+r^2)^{-(\ell+2-\Delta)/2} P_n^{(1-\Delta,\ell)}(1-2z), \\
\lambda_n^+&=(\ell+2-\Delta+2n)^2, & c_n:=\beta[f_{n\ell}]&=\frac{(2-\Delta)_n}{n!}.
\end{align}$$

Define the actual seed by $t_\ell^{(A)}=s_\ell H_A(z)+\kappa_A f_{0\ell}$:

| Representative $A$ | $H_A(z)$ | $\kappa_A$ |
|---|---|---:|
| Polynomial | $1+z/2$ | $1$ |
| Rational | $(1+z/2)^{-1}$ | $-2$ |
| Exponential | $e^{2z}$ | $1/3$ |
| Fractional | $1+z^{3/4}$ | $3/2$ |

Every $H_A(0)=1$. For the first three profiles, $H_A-1=O(z)$, so the correction to $s_\ell$ decays faster than the fast branch throughout $0<\Delta<1$. For the fractional profile, this requires $\Delta+3/2>2-\Delta$, or $\Delta>1/4$. We restrict that family to $1/4<\Delta<1$, including every mass tested below. Consequently,

$$\begin{align}
\alpha[t_\ell^{(A)}]&=1,&\beta[t_\ell^{(A)}]&=\kappa_A\ne0, \\
W_N^{(A)}&=\operatorname{span}\{t_\ell^{(A)},f_{0\ell},\ldots,f_{N-1,\ell}\},& \dim W_N^{(A)}&=N+1.
\end{align}$$

None of these actual basis elements satisfies $\beta=0$: the seed has $\beta=\kappa_A$, and each fast mode has $\beta=c_n\ne0$. The seeds are regular at the centre. At the main test parameters, direct evaluation of the radial differential operator also confirms that none of the four seeds is an eigenfunction.

There are two distinct comparisons. For a fixed $H_A$, changing $\kappa_A$ does not change $W_N^{(A)}$ when $N\geq1$, because $f_{0\ell}$ is already retained. In the ordering above, the basis change has $T_{21}=\kappa_A$, unit diagonal, and all other off-diagonal entries zero:

$$\begin{align}
G_\kappa&=T^TG_0T,&K_\kappa&=T^TK_0T, \\
\det(K_\kappa-\lambda G_\kappa)&=\det(T)^2\det(K_0-\lambda G_0).
\end{align}$$

This is exact finite-$N$ invariance. Changing $H_A$, however, changes the finite trial space and gives the different spectra below. The comparison between the four shapes is therefore not exhausted by the $\kappa$ basis change.

## Finite Matrix Elements

A positive integral representation avoids subtracting divergent bulk and boundary contributions numerically. Let $u=s_\ell H$ and $v=s_\ell J$. The identity

$$\begin{align}
-\partial_r\left[r(1+r^2)s_\ell'\right] +\left(\frac{\ell^2}{r}+M^2r\right)s_\ell &=(\ell+\Delta)^2\frac{r}{1+r^2}s_\ell
\end{align}$$

gives, after integration by parts,

$$\begin{align}
G[s_\ell H,s_\ell J] &=\frac12\int_0^1\mathrm{d}z\,(1-z)^\ell z^{\Delta-1}HJ, \\
K[s_\ell H,s_\ell J] &=(\ell+\Delta)^2G[s_\ell H,s_\ell J] +2\int_0^1\mathrm{d}z\,(1-z)^{\ell+1}z^\Delta H'J'.
\end{align}$$

Here the primes on $H,J$ denote $z$ derivatives. At infinity, the discarded term is

$$\begin{align}
\left[r(1+r^2)\frac{s_\ell'}{s_\ell} +\Delta r\sqrt{1+r^2}\right]uv=O(r^{-2\Delta})\longrightarrow0
\end{align}$$

for the profiles in this calculation. The centre term also vanishes. These conditions, rather than an assumed $\beta=0$, justify the representation. Both integrals are finite for all four seeds. In particular, the fractional derivative contribution behaves as $z^{\Delta-1/2}$ near zero. The additional fast term has $H\supset\kappa z^{1-\Delta}$ and derivative energy proportional to $\int_0 z^{-\Delta}\mathrm{d}z$, finite for $\Delta<1$.

Write $\widehat t=s_\ell H$, before adding $\kappa f_0$. The diagonal entries follow directly from these two integrals. For a power $h_a=s_\ell z^a$, the useful mixed moment is

$$\begin{align}
G[h_a,f_{n\ell}] &=\frac{(1-\Delta-a)_n}{2n!}B(\ell+n+1,a+1),\qquad a\geq0, \\
G[f_{n\ell},f_{k\ell}]&=\delta_{nk}g_n, \\
g_n&=\frac{(n+1)_\ell} {2(2-\Delta+n)_\ell(\ell+2-\Delta+2n)}.
\end{align}$$

The first identity follows by applying shifted Jacobi Rodrigues and integrating by parts $n$ times; the endpoint factors vanish for $a\geq0$, $\ell\geq0$, $0<\Delta<1$. Expanding $H_A$ in powers of $z$ therefore gives the seed–fast Gram entries without integrating high-degree Jacobi polynomials numerically.

The stiffness entries require the boundary term. Integrating the fast eigenfunction by parts gives

$$\begin{align}
K[\widehat t,f_{n\ell}] &=\lambda_n^+G[\widehat t,f_{n\ell}]-2(1-\Delta)c_n, \\
K[f_{n\ell},f_{k\ell}]&=\delta_{nk}\lambda_n^+g_n.
\end{align}$$

The term $-2(1-\Delta)c_n$ uses $\alpha[\widehat t]=1$ and cannot be dropped. The final matrices for $\beta\ne0$ seeds are obtained by the congruence transformation above. The alternative frequencies are used as comparison targets, not inserted as eigenvalues of these matrices.

## Closed Form and Slow Trace

Fix $0<\Delta<1$ and $\ell\in\mathbb N_0$. Work with the transformed profile $H=u/s_\ell$ on $0<z<1$, where $z=0$ is the AdS boundary and $z=1$ is the centre. Define

$$\begin{align}
\mu(z)&=\frac12z^{\Delta-1}(1-z)^\ell,& a(z)&=2z^\Delta(1-z)^{\ell+1}, \\
\mathcal H&=L^2((0,1),\mu\,\mathrm dz),& \langle H,J\rangle_{\mathcal H}&=\int_0^1\mu\,\overline HJ\,\mathrm dz, \\
\mathcal V&=\left\{H\in\mathcal H:\ H\in AC_{\mathrm{loc}}(0,1),\quad \int_0^1a|H'|^2\,\mathrm dz<\infty\right\}, \\
q(H,J)&=(\ell+\Delta)^2\langle H,J\rangle_{\mathcal H} +\int_0^1a\,\overline{H'}J'\,\mathrm dz,& \|H\|_q^2&=q(H,H).
\end{align}$$

Complexification is only for Hilbert-space notation. Multiplication by $s_\ell$ identifies the kinetic norm with the original radial $G$ norm and $q$ with the positive representation of $K$. Since $(\ell+\Delta)^2>0$, $\|\cdot\|_q$ is equivalent to the usual form norm $\bigl(q+\|\cdot\|_{\mathcal H}^2\bigr)^{1/2}$.

The form is densely defined and closed. Indeed, compactly supported smooth functions are dense in $\mathcal H$. A $q$-Cauchy sequence has limits in $L^2(\mu)$ and in the weighted derivative space $L^2(a)$. On every compact subinterval both weights are bounded above and below by positive constants, so the limits are a function and its weak derivative in ordinary $H^1$. This gives a locally absolutely continuous representative and convergence in $\mathcal V$.

At $z=0$, $\int_0^b a^{-1}\mathrm dz<\infty$ for any $b<1$. Weighted Cauchy–Schwarz therefore gives a finite trace and the estimate

$$\begin{align}
\alpha[H]&:=H(0), \\
|H(z)-H(0)| &\leq\left(\int_0^z a|H'|^2\,\mathrm dt\right)^{1/2} \left(\int_0^z a^{-1}\,\mathrm dt\right)^{1/2} =o\!\left(z^{(1-\Delta)/2}\right), \\
|\alpha[H]|&\leq C_{\Delta,\ell}\|H\|_q.
\end{align}$$

For the last inequality, bound $H$ at an interior point using the local $H^1$ norm, then use the preceding estimate to reach zero. Because $s_\ell=r^{-\Delta}(1+O(r^{-2}))$, this trace agrees with the slow coefficient in the earlier asymptotic expansion. Hence

$$\begin{align}
\mathcal V_0&:=\ker\alpha
\end{align}$$

is a closed subspace of codimension one; the constant function $1$ belongs to $\mathcal V$ and has trace one. A general element of $\mathcal V$ need not possess a fast coefficient $\beta$. The definition of $\mathcal V_0$ uses only the continuous slow trace, not a two-term expansion.

The centre requires a separate endpoint estimate. Put $x=1-z$. Applying the same inequality from a fixed interior point, now using $a\asymp x^{\ell+1}$, gives

$$\begin{align}
H(1-x)&=
\begin{cases}
O\!\left(1+\sqrt{|\log x|}\right),&\ell=0,\\
O(x^{-\ell/2}),&\ell>0.
\end{cases}
\end{align}$$

In particular, $a(z)B'(z)H(z)\to0$ at the centre for any $B$ smooth there. No pointwise boundedness of every form-domain element at the centre is assumed. The form cores established below consist of regular radial profiles, so this domain is precisely their finite-energy completion. Singular centre solutions of the homogeneous eigenvalue equation are excluded by their infinite derivative energy.

## Fast Modes Are Form-Dense in the Zero-Trace Sector

In the transformed variables the fast profiles are

$$\begin{align}
F_n(z)&:=\frac{f_{n\ell}}{s_\ell} =z^{1-\Delta}P_n^{(1-\Delta,\ell)}(1-2z).
\end{align}$$

They belong to $\mathcal V_0$: their derivative energy behaves as $z^{-\Delta}$ at zero and is integrable, while they are smooth at the centre. First establish completeness in $\mathcal H$. Multiplication by $z^{1-\Delta}$ is a unitary map

$$\begin{align}
U:\ L^2\!\left((0,1),\tfrac12z^{1-\Delta}(1-z)^\ell\,\mathrm dz\right) &\longrightarrow\mathcal H, & (UJ)(z)&=z^{1-\Delta}J(z).
\end{align}$$

The Jacobi polynomials $P_n^{(1-\Delta,\ell)}(1-2z)$ form a complete orthogonal system in the source space. One elementary way to see completeness is that the weight has finite mass on $[0,1]$, continuous functions are dense in its $L^2$ space, and uniform polynomial approximation makes polynomials dense. Since the Jacobi polynomial of degree $n$ has nonzero leading coefficient, their span is exactly the polynomial span. Thus the $F_n$ are complete in $\mathcal H$. The orthogonality conventions and bounded-interval completeness agree with [DLMF §18.3](https://dlmf.nist.gov/18.3) and [§18.2(viii)](https://dlmf.nist.gov/18.2#viii).

To lift this to form completeness, introduce the differential expression

$$\begin{align}
\mathcal A H &=(\ell+\Delta)^2H-\mu^{-1}(aH')' \\
&=(\ell+\Delta)^2H -4\left[z(1-z)H''+\bigl(\Delta-(\Delta+\ell+1)z\bigr)H'\right].
\end{align}$$

The Jacobi differential equation gives

$$\begin{align}
\mathcal A F_n&=\lambda_n^+F_n,& \lim_{z\downarrow0}aF_n'&=2(1-\Delta)c_n.
\end{align}$$

For arbitrary $H\in\mathcal V$, integration by parts on $[\varepsilon,1-\varepsilon]$, followed by the endpoint estimates above, yields

$$\begin{align}
q(F_n,H) &=\lambda_n^+\langle F_n,H\rangle_{\mathcal H} -2(1-\Delta)c_n\alpha[H].
\end{align}$$

The bulk integrals converge by weighted Cauchy–Schwarz. The centre contribution vanishes, and the boundary contribution at zero is exactly the displayed trace term. In particular,

$$\begin{align}
q(F_n,H)&=\lambda_n^+\langle F_n,H\rangle_{\mathcal H}, \qquad H\in\mathcal V_0.
\end{align}$$

Now suppose $H\in\mathcal V_0$ is $q$-orthogonal to every $F_n$. Since $\lambda_n^+>0$, it is also $\mathcal H$-orthogonal to every $F_n$. Their Hilbert-space completeness gives $H=0$. The orthogonal-complement criterion in the Hilbert space $(\mathcal V_0,q)$ proves

$$\begin{align}
\boxed{\overline{\operatorname{span}\{F_n:n\geq0\}}^{\|\cdot\|_q} =\mathcal V_0.}
\end{align}$$

This is the required density result; $L^2$ completeness alone was not used as a substitute for it. More explicitly, set $E_n^+=F_n/\|F_n\|_{\mathcal H}$. Then for every $H\in\mathcal V_0$,

$$\begin{align}
P_N^+H&=\sum_{n=0}^{N-1}\langle E_n^+,H\rangle_{\mathcal H}E_n^+, \\
\|H-P_N^+H\|_q^2 &=\sum_{n=N}^{\infty}\lambda_n^+ |\langle E_n^+,H\rangle_{\mathcal H}|^2\longrightarrow0.
\end{align}$$

The equality follows from completeness and orthogonality in the $q$ inner product, so no unproved interchange of an infinite derivative series and an integral is needed.

## The Full Form Has the Alternative Spectrum

The preceding argument has a second application. Define

$$\begin{align}
A_p(z)&=P_p^{(\Delta-1,\ell)}(1-2z),& \lambda_p^-&=(\ell+\Delta+2p)^2.
\end{align}$$

These polynomials belong to $\mathcal V$, are complete and orthogonal in $\mathcal H$, and satisfy $\mathcal A A_p=\lambda_p^-A_p$. Here the Jacobi weight is proportional to $\mu$, with exponents $\Delta-1>-1$ and $\ell\geq0$. At zero, $aA_p'=O(z^\Delta)$; at the centre the endpoint estimate applies. Both boundary terms therefore vanish against every $H\in\mathcal V$:

$$\begin{align}
q(A_p,H)&=\lambda_p^-\langle A_p,H\rangle_{\mathcal H}.
\end{align}$$

The same orthogonal-complement argument proves that the $A_p$ span a form core of $\mathcal V$. Their radial profiles $s_\ell A_p$ are regular at the centre and have the stated slow asymptotics. This also identifies the maximal weighted domain defined above with the closure of regular admissible profiles, rather than leaving that identification as an extra assumption. The differential identities are the transformed [Jacobi equation in DLMF §18.8](https://dlmf.nist.gov/18.8).

Normalize $E_p^-=A_p/\|A_p\|_{\mathcal H}$. The form and its associated operator have the explicit spectral descriptions

$$\begin{align}
\mathcal V&=\left\{H\in\mathcal H:
\sum_{p=0}^{\infty}\lambda_p^-|\langle E_p^-,H\rangle_{\mathcal H}|^2<\infty\right\}, \\
q(H,H)&=\sum_{p=0}^{\infty}\lambda_p^-|\langle E_p^-,H\rangle_{\mathcal H}|^2, \\
D(\mathcal A_-)&=\left\{H\in\mathcal H:
\sum_{p=0}^{\infty}(\lambda_p^-)^2|\langle E_p^-,H\rangle_{\mathcal H}|^2<\infty\right\}, \\
\mathcal A_-H&=\sum_{p=0}^{\infty}\lambda_p^- \langle E_p^-,H\rangle_{\mathcal H}E_p^-.
\end{align}$$

This is a positive self-adjoint diagonal operator, with no missing spectral sector because the eigenvectors are complete. Its form is exactly $q$, and its eigenfrequencies are $\sqrt{\lambda_p^-}=\Delta+\ell+2p$. Compactness also follows directly: for $q(H,H)\leq1$,

$$\begin{align}
\left\|H-\sum_{p=0}^{P-1}\langle E_p^-,H\rangle_{\mathcal H}E_p^-\right\|_{\mathcal H}^2 &\leq\frac1{\lambda_P^-}\longrightarrow0.
\end{align}$$

Finite-dimensional approximation of the form unit ball proves that $\mathcal V\hookrightarrow\mathcal H$ is compact, and equivalently $\mathcal A_-$ has compact resolvent.

The operator also has the intended boundary condition. For $H\in D(\mathcal A_-)$, let $F=aH'$. The weak equation gives

$$\begin{align}
F'&=\mu\bigl((\ell+\Delta)^2H-\mathcal A_-H\bigr).
\end{align}$$

The right side is in $L^1(0,1)$, so $F$ has finite endpoint limits. Finite derivative energy forces $F(1)=0$, since $\int^1a^{-1}=\infty$. Testing the form identity with a smooth function that equals one near zero and vanishes near the centre gives $F(0)=0$. More generally, when $H\in\mathcal V$ and $\mathcal A H\in\mathcal H$, integration of $H'=F/a$ gives

$$\begin{align}
H(z)&=H(0)+\frac{F(0)}{2(1-\Delta)}z^{1-\Delta} +o(z^{1-\Delta}), \\
\beta[s_\ell H]&=\frac{F(0)}{2(1-\Delta)}.
\end{align}$$

For the remainder estimate, weighted Cauchy–Schwarz gives $F(z)-F(0)=o(z^{\Delta/2})$, whose integral against $a^{-1}$ is $o(z^{1-\Delta/2})$. Thus $F(0)=0$ is precisely $\beta=0$ on the operator domain. No such condition was imposed on the whole form domain. Conversely, a form-domain function with $\mathcal A H\in\mathcal H$ and $F(0)=0$ satisfies the operator form identity: at the centre, $F(1-x)=o(x^{(\ell+1)/2})$, which, together with the endpoint bound on every test function, removes the remaining boundary term.

## Enrichment and Ritz Convergence

Let $\eta\in\mathcal V$ be any fixed representative with $\alpha[\eta]\ne0$, and define the transformed trial spaces

$$\begin{align}
\mathcal W_N(\eta)&=\operatorname{span}\{\eta,F_0,\ldots,F_{N-1}\}.
\end{align}$$

They are nested and have dimension $N+1$, because every $F_n$ has zero trace. For arbitrary $H\in\mathcal V$, subtract its boundary direction:

$$\begin{align}
H&=\frac{\alpha[H]}{\alpha[\eta]}\eta+H_0,& H_0&\in\mathcal V_0, \\
H_N&=\frac{\alpha[H]}{\alpha[\eta]}\eta+P_N^+H_0\in\mathcal W_N(\eta), \\
\|H-H_N\|_q&=\|H_0-P_N^+H_0\|_q\longrightarrow0.
\end{align}$$

Thus every such representative supplies the same complete form domain:

$$\begin{align}
\boxed{\overline{\bigcup_{N\geq1}\mathcal W_N(\eta)}^{\|\cdot\|_q}=\mathcal V.}
\end{align}$$

For the four actual seeds, $\eta_A=t_\ell^{(A)}/s_\ell=H_A+\kappa_Az^{1-\Delta}$. Each has trace one. The first three $H_A$ have bounded derivatives on $[0,1]$; the fractional shape contributes an integrable derivative density proportional to $z^{\Delta-1/2}$; and the fast addition contributes $z^{-\Delta}$. Hence all four belong to $\mathcal V$. In the parameter ranges specified earlier, they also retain their stated nonzero fast coefficients. Their differences belong to $\mathcal V_0$, but need not lie in any finite fast span. This is why their closures agree while their finite spectra differ.

Let $\lambda_{p,N}(\eta)$ be the increasingly ordered generalized eigenvalues of the exact pair $(K,G)$ on $\mathcal W_N(\eta)$, indexed by $p=0,\ldots,N$. The finite and infinite variational principles give

$$\begin{align}
\lambda_{p,N}(\eta) &=\min_{\substack{L\subset\mathcal W_N(\eta)\\
\dim L=p+1}}
\ \max_{0\ne H\in L}\frac{q(H,H)}{\|H\|_{\mathcal H}^2}, \\
\lambda_p^-&\leq\lambda_{p,N+1}(\eta)\leq\lambda_{p,N}(\eta).
\end{align}$$

The infinite-dimensional lower bound follows directly from the spectral expansion: any $(p+1)$-dimensional subspace contains a nonzero vector orthogonal to $E_0^-,\ldots,E_{p-1}^-$, whose Rayleigh quotient is at least $\lambda_p^-$. The span of $E_0^-,\ldots,E_p^-$ attains that value. Nestedness of the trial spaces gives monotonicity.

The upper convergence bound also follows without an additional approximation theorem. Approximate each of $E_0^-,\ldots,E_p^-$ by the explicit $H_N$ construction above. Their Gram and form matrices converge to $I$ and $\operatorname{diag}(\lambda_0^-,\ldots,\lambda_p^-)$, respectively. For sufficiently large $N$ the approximants are independent, and the maximum Rayleigh quotient on their $(p+1)$-dimensional span tends to $\lambda_p^-$. Using this span in the finite minimum yields $\limsup_N\lambda_{p,N}(\eta)\leq\lambda_p^-$. Combined with the lower bound,

$$\begin{align}
\boxed{\lambda_{p,N}(\eta)\downarrow(\Delta+\ell+2p)^2,\qquad \omega_{p,N}(\eta)\downarrow\Delta+\ell+2p}
\end{align}$$

for every fixed $p$. Equality at some cutoffs is allowed. The statement applies to any fixed finite-form-energy representative with nonzero slow trace, not only the four examples. It concerns exact matrix elements; extending the fixed-precision implementation to arbitrarily large $N$ would additionally require numerical error and conditioning control.

There is also no bounded spectral pollution in this conforming sequence. A sequence of Ritz eigenvalues with indices $p_N\to\infty$ is bounded below by $(\Delta+\ell+2p_N)^2\to\infty$. A bounded accumulation point must therefore come from a bounded index subsequence and belongs to the alternative spectrum. This does not assert a uniform error estimate for all eigenvalues up to the cutoff.

Finally, form convergence does not by itself imply convergence of $\beta$. To see why, let $\chi$ be smooth, equal to one near zero, and zero for arguments at least one. Then

$$\begin{align}
B_\varepsilon(z)&=z^{1-\Delta}\chi(z/\varepsilon),& \alpha[B_\varepsilon]&=0,&\beta[s_\ell B_\varepsilon]&=1, \\
\|B_\varepsilon\|_q^2&=O(\varepsilon^{1-\Delta})\longrightarrow0.
\end{align}$$

The norm estimate follows by $z=\varepsilon t$: the kinetic contribution is $O(\varepsilon^{2-\Delta})$ and the derivative contribution is $O(\varepsilon^{1-\Delta})$. Thus the fast coefficient is not a continuous functional of the form topology, even on profiles where it is defined. The proved spectral limit and the continuum operator condition $\beta=0$ remain fully compatible with this fact.

## Finite Cutoffs

Take $\Delta=3/5$, $\ell=0$. The target is $\omega_p^-=\Delta+\ell+2p$, namely $0.6,2.6,4.6,6.6$ for $p=0,1,2,3$. The full calculation uses $N=4,8,16,24,32,64,128$. Selected spectra are:

| Representative | $N$ | Lowest four frequencies |
|---|---:|---|
| Polynomial | 4 | $0.6002538251,\ 2.6034713126,\ 4.6212292957,\ 6.6874213135$ |
| Polynomial | 16 | $0.6000031000,\ 2.6000445969,\ 4.6002409922,\ 6.6007470139$ |
| Polynomial | 128 | $0.6000000041,\ 2.6000000594,\ 4.6000003184,\ 6.6000009743$ |
| Rational | 4 | $0.6003039755,\ 2.6015562335,\ 4.6172274943,\ 6.6813681921$ |
| Rational | 16 | $0.6000031238,\ 2.6000208408,\ 4.6001915687,\ 6.6006699268$ |
| Rational | 128 | $0.6000000041,\ 2.6000000278,\ 4.6000002527,\ 6.6000008718$ |
| Exponential | 4 | $0.6019618257,\ 2.6052610105,\ 4.6240527744,\ 6.6913603496$ |
| Exponential | 16 | $0.6000488571,\ 2.6000962314,\ 4.6003246653,\ 6.6008689840$ |
| Exponential | 128 | $0.6000000658,\ 2.6000001289,\ 4.6000004311,\ 6.6000011386$ |
| Fractional | 4 | $0.6043549672,\ 2.6077347305,\ 4.6279295525,\ 6.6967407026$ |
| Fractional | 16 | $0.6002147874,\ 2.6002057568,\ 4.6004664273,\ 6.6010591452$ |
| Fractional | 128 | $0.6000022613,\ 2.6000012200,\ 4.6000015623,\ 6.6000024941$ |

The polynomial rows reproduce the original non-eigen seed calculation despite the added $f_0$. The four families are visibly different at small $N$; none puts the exact lowest frequency into the finite trial space.

To compare all four sequences, define

$$\begin{align}
E_N^{(A)}=\max_{0\leq p\leq3}\left|\omega_{p,N}^{(A)}-(0.6+2p)\right|.
\end{align}$$

| $N$ | Polynomial | Rational | Exponential | Fractional |
|---:|---:|---:|---:|---:|
| 4 | 8.742131e-02 | 8.136819e-02 | 9.136035e-02 | 9.674070e-02 |
| 8 | 7.090112e-03 | 6.401603e-03 | 8.135500e-03 | 8.876862e-03 |
| 16 | 7.470139e-04 | 6.699268e-04 | 8.689840e-04 | 1.059145e-03 |
| 24 | 2.041734e-04 | 1.828779e-04 | 2.381259e-04 | 3.150580e-04 |
| 32 | 8.149390e-05 | 7.296246e-05 | 9.513247e-05 | 1.345428e-04 |
| 64 | 8.918131e-06 | 7.981179e-06 | 1.041985e-05 | 1.787225e-05 |
| 128 | 9.742558e-07 | 8.718079e-07 | 1.138564e-06 | 2.494061e-06 |

![Maximum error of the lowest four frequencies](scalar_slow_representatives_convergence.svg)

Every recorded fixed low frequency decreases with the listed cutoffs and remains above its target. The fractional representative has a larger ground-frequency error and a slower decrease in that error than the three smooth shapes. No universal convergence exponent is inferred from these finite data.

As additional checks, all four representatives were evaluated at $\Delta\in\{3/10,3/5,4/5\}$, $\ell\in\{1,3\}$, and $N=32,64$. The maximum low-four error decreases in every one of these 24 pairs. The largest error at $N=64$ is $9.13\times10^{-5}$, for the exponential representative at $\Delta=3/10$, $\ell=3$. These angular sectors are compared with $\Delta+\ell+2p$, not with the $\ell=0$ target.

## Reproduction and Checks

Run the companion script with Mathematica or `wolframscript -file scalar_slow_representatives.wl`. It writes the results and convergence plot beside itself. Mathematica 14.3 was used. The batch calculation ran through the local `wolframscript` interface after the Mathematica tool's 30-second limit interrupted the full batch; smaller symbolic checks ran through the Mathematica tool.

The main calculation uses 70-digit arithmetic. Mixed overlaps for the rational and exponential shapes use their power series through $z^{160}$; the diagonal entries use beta and hypergeometric functions, without that series truncation. The polynomial and fractional moments are evaluated directly. Repeating all four $N=128$ calculations with 90 digits and powers through $z^{200}$ changes the lowest four frequencies by less than $10^{-49}$. This numerical stability check is distinct from the error relative to the continuum target.

The Gram matrices pass the positive diagonal and positive Schur-complement test at every reported cutoff, and every computed squared frequency is positive. Only imaginary roundoff below $10^{-\mathrm{precision}/2}$ is removed, after explicitly checking that bound. For all four representatives at $N=16$, the maximum frequency difference between $\kappa=0$ and the stated nonzero $\kappa$ is below $10^{-60}$; the normalized residuals of the four lowest generalized eigenpairs are also below $10^{-60}$.

**Verified:** Mathematica gives zero symbolic residual for the ground-state radial equation and the bilinear factorization used above. Exact mixed-moment checks cover $\Delta\in\{3/10,3/5,4/5\}$, $\ell\in\{0,1,3\}$, $a\in\{0,3/4,1,2\}$ and $n=0,1,2,3$; the fast radial equation was checked at the same masses and angular sectors for $n=0,1,2,3$. Independent quadrature checks the seed diagonals for all four shapes at $\Delta=3/5$, $\ell=0,3$ to better than $10^{-38}$, and the mixed stiffness identity for all four shapes at $\Delta=3/5$, $\ell=0$, $n=0,1,2,3$ to better than $10^{-28}$. The numerical spectra, positivity, precision comparisons and finite-basis invariance checks have been executed.

**Assumptions:** Unit AdS radius, the stated counterterm without a finite boundary deformation, regular centre, a fixed normalized angular harmonic, $0<\Delta<1$ (and $\Delta>1/4$ for the fractional representative), and the displayed profiles with their differentiated asymptotics. The boundary variation is evaluated for independently variable slow coefficient. Frequencies are dimensionless; restoring the radius multiplies them by its inverse.

**Verified (analytic proof):** The weighted maximal form is closed; the slow trace is continuous; the fast-mode span is dense in its zero-trace sector; the alternative modes give a form core and the complete spectrum of the full form; the form embedding is compact; and every fixed representative in $\mathcal V$ with nonzero trace gives monotone convergence of every fixed Ritz eigenvalue. Endpoint terms are controlled for arbitrary form-domain test functions. These are Hilbert-space arguments, not conclusions inferred from finite symbolic checks.

**Verified (symbolic support for the proof):** Mathematica reduces the weighted operator to the Jacobi differential expression, verifies its fast-weight conjugation and Hilbert-space weight isometry, and checks both mode equations and boundary fluxes through radial degree five with symbolic $\Delta,\ell$. Exact alternative-mode derivative norms were checked for $\Delta\in\{3/10,3/5,4/5\}$, $\ell\in\{0,1,3\}$ and degrees zero through three. The generic operator and cutoff-scaling identities can be reproduced with [scalar_slow_representatives_form_checks.wl](scalar_slow_representatives_form_checks.wl).

**Not verified:** Uniform estimates as $\Delta$ approaches an endpoint, a convergence rate for general representatives, uniform approximation of the entire growing finite spectrum, or convergence of the fast coefficient of the finite Ritz eigenfunctions. The theorem uses exact form restrictions, not an arbitrarily long run at fixed numerical precision. The BF endpoint $\Delta=1$ and the endpoint $\Delta=0$ are excluded.

## Interpretation

The appropriate distinction is between a trial profile and a stationary solution. The action permits the former to have $\beta\ne0$; its unrestricted boundary variation selects $\beta=0$ for sufficiently regular continuum solutions. Finite Galerkin stationarity imposes the projected equations, so it need not impose that boundary coefficient exactly at finite $N$.

In the positive integral representation, $\alpha$ is the continuous boundary trace $H(0)$. The fast-mode span is form-dense precisely in its kernel. Each representative with nonzero trace supplies the remaining one-dimensional quotient $\mathcal V/\mathcal V_0$, so every enriched sequence has the same form closure. The explicit alternative eigenbasis and min–max argument then prove the common limiting spectrum independently of the numerical tables.

Thus changing the retained fast component of a fixed seed leaves every finite-cutoff eigenvalue unchanged, whereas changing its radial shape can alter the finite spectrum and convergence rate. Neither change alters the limiting alternative tower, provided the representative stays in the same form domain and has nonzero slow trace.


## Reverse Legendre Transform and Its Spectral Limit

The reverse calculation appended to [Scalar mode expansions and boundary conditions](<Scalar mode expansions and boundary conditions.md>) uses the positive boundary term $+\int_{\Gamma_R}\sqrt{-\gamma}\,\Phi(n\cdot\nabla+\Delta)\Phi$. Its variation is $-2(1-\Delta)\alpha\,\delta\beta$ after removing the regulator, so freely varying the response selects $\alpha=0$. This section proves the precise finite-mode statement, including the additional negative eigenvalue. It also proves convergence of the positive constrained implementation.

### Why the Reverse Form Is Different

Keep $\mathcal H,\mathcal V,q,\mathcal V_0$ from above and set $\nu=1-\Delta$. In this section boundary coefficients of a transformed profile $H$ mean those of $s_\ell H$. On sufficiently regular profiles possessing both coefficients, the real symmetric bilinear form of the Legendre-transformed action is

$$\begin{align}
q_{\mathrm L}(H,J)&=q(H,J)+2\nu\bigl(\alpha[H]\beta[J]+\beta[H]\alpha[J]\bigr).
\end{align}$$

For complex profiles the first factor in each product is conjugated. The earlier cutoff profiles $B_\varepsilon=z^\nu\chi(z/\varepsilon)$ have $\alpha[B_\varepsilon]=0$, $\beta[B_\varepsilon]=1$, and $\|B_\varepsilon\|_q^2=O(\varepsilon^\nu)$. Consequently,

$$\begin{align}
q_{\mathrm L}(1-B_\varepsilon,1-B_\varepsilon)&\longrightarrow q(1,1)-4\nu,
\qquad 1-B_\varepsilon\longrightarrow1\quad\text{in }\mathcal V.
\end{align}$$

Thus $q_{\mathrm L}$ has no continuous extension in the original form norm. More strongly, choose $t_\varepsilon=\varepsilon^{-\nu/4}$. Then $t_\varepsilon B_\varepsilon\to0$ in that norm, but

$$\begin{align}
q_{\mathrm L}(1-t_\varepsilon B_\varepsilon,1-t_\varepsilon B_\varepsilon)
&=q(1,1)-4\nu t_\varepsilon+o(1)\longrightarrow-\infty.
\end{align}$$

The kinetic norm tends to $\|1\|_{\mathcal H}$, so there is no lower bound by a fixed multiple of the kinetic norm on this larger regular domain. This is compatible with the positive standard operator: that operator uses the closed form $q|_{\mathcal V_0}$, whereas $q_{\mathrm L}$ here is evaluated before imposing $\alpha=0$.

In particular, a positive-form argument for adding a slow representative cannot simply be reversed by exchanging $\alpha$ and $\beta$. Only $\alpha$ is continuous on $\mathcal V$.

### A Boundary Resolvent Sum

Let $E_n^-$ be the kinetic-normalized transformed alternative modes already constructed above. Write

$$\begin{align}
\lambda_n^-&=(\Delta+\ell+2n)^2,&
a_n&=\alpha[E_n^-]=\frac{(\Delta)_n}{n!\sqrt{g_n^-}}>0,\\
T_N(\lambda)&=\sum_{n=0}^{N-1}\frac{a_n^2}{\lambda_n^--\lambda},&
T(\lambda)&=\sum_{n=0}^{\infty}\frac{a_n^2}{\lambda_n^--\lambda}.
\end{align}$$

Since the $E_n^-/\sqrt{\lambda_n^-}$ form an orthonormal basis of $(\mathcal V,q)$ and $\alpha$ is bounded there, its dual norm gives

$$\begin{align}
\sum_{n=0}^{\infty}\frac{a_n^2}{\lambda_n^-}&<\infty.
\end{align}$$

Therefore $T_N\to T$ locally uniformly away from the alternative poles, and $T'(\lambda)=\sum_n a_n^2/(\lambda_n^--\lambda)^2>0$ on every real pole-free interval.

The zeros of $T$ are precisely the standard eigenvalues

$$\begin{align}
\tau_p&=(2-\Delta+\ell+2p)^2,&
\lambda_p^-&<\tau_p<\lambda_{p+1}^-.
\end{align}$$

To prove this identification rather than assume it, take a standard eigenfunction $F_p$ from the earlier fast-mode construction. Its Green identity against $E_n^-$ is

$$\begin{align}
\lambda_n^-\langle E_n^-,F_p\rangle_{\mathcal H}
&=\tau_p\langle E_n^-,F_p\rangle_{\mathcal H}
 -2\nu\beta[F_p]a_n,\\
\langle E_n^-,F_p\rangle_{\mathcal H}
&=\frac{2\nu\beta[F_p]a_n}{\tau_p-\lambda_n^-}.
\end{align}$$

The slow-mode spectral partial sums converge to $F_p$ in form norm. Taking their continuous slow trace gives

$$\begin{align}
0=\alpha[F_p]&=-2\nu\beta[F_p]T(\tau_p).
\end{align}$$

Here $\beta[F_p]\ne0$. Trace summation is legitimate: weighted Cauchy–Schwarz bounds $\sum_n|a_n\langle E_n^-,F_p\rangle|$ using the finite dual trace norm and $q(F_p,F_p)$. Thus $T(\tau_p)=0$. Between consecutive poles, $T$ rises strictly from $-\infty$ to $+\infty$, so this is its unique zero. Below $\lambda_0^-$ all summands are positive and there is no zero.

### An Arbitrary Fixed Fast Representative

Let $h\in\mathcal V$ be real, centre-regular, and possess differentiated asymptotics with

$$\begin{align}
\alpha[h]&=0,&\beta[h]&=1.
\end{align}$$

The normalization of $\beta$ can always be imposed when it is nonzero. The non-eigen example in the companion calculation is $h=z^\nu(1+z/2)$ in transformed variables. For the proof, no eigenvalue equation for $h$ is assumed. Put

$$\begin{align}
b_n&=\langle E_n^-,h\rangle_{\mathcal H},&
g&=\|h\|_{\mathcal H}^2,&k&=q(h,h),\\
\mathcal U_N&=\operatorname{span}\{h,E_0^-,\ldots,E_{N-1}^-\}.
\end{align}$$

These spaces are nested and have dimension $N+1$: every finite slow combination has $\beta=0$, while $h$ has $\beta=1$. Slow-mode completeness in the kinetic and form norms, and continuity of $\alpha$, imply

$$\begin{align}
g&=\sum_{n=0}^{\infty}b_n^2,&
k&=\sum_{n=0}^{\infty}\lambda_n^-b_n^2,&
0&=\sum_{n=0}^{\infty}a_nb_n.
\end{align}$$

The last series is absolutely convergent by the same weighted Cauchy–Schwarz estimate. In the ordering $(h,E_0^-,\ldots,E_{N-1}^-)$, the kinetic matrix has blocks $(g,b^T;b,I)$ and the stiffness has diagonal blocks $k,\operatorname{diag}\lambda_n^-$ and mixed entries $\lambda_n^-b_n+2\nu a_n$.

For $\lambda$ away from the retained poles, its characteristic determinant is

$$\begin{align}
\det(K_{\mathrm L,N}-\lambda G_N)
&=\prod_{n=0}^{N-1}(\lambda_n^--\lambda)\,S_N(\lambda),\\
S_N(\lambda)
&=k-\lambda g-\sum_{n=0}^{N-1}
 \frac{\bigl((\lambda_n^--\lambda)b_n+2\nu a_n\bigr)^2}{\lambda_n^--\lambda}.
\end{align}$$

Define the nonnegative spectral tails $g_N^{\mathrm{tail}}=\sum_{n\geq N}b_n^2>0$ and $k_N^{\mathrm{tail}}=\sum_{n\geq N}\lambda_n^-b_n^2$. Expanding the square yields the useful identity

$$\begin{align}
S_N(\lambda)
&=k_N^{\mathrm{tail}}-\lambda g_N^{\mathrm{tail}}
 +4\nu\sum_{n\geq N}a_nb_n-4\nu^2T_N(\lambda),\\
S_N'(\lambda)
&=-g_N^{\mathrm{tail}}-4\nu^2\sum_{n=0}^{N-1}
 \frac{a_n^2}{(\lambda_n^--\lambda)^2}<0.
\end{align}$$

All tails tend to zero. In particular,

$$\begin{align}
\left|\sum_{n\geq N}a_nb_n\right|
&\leq\left(\sum_{n\geq N}\frac{a_n^2}{\lambda_n^-}\right)^{1/2}
 \left(k_N^{\mathrm{tail}}\right)^{1/2}\longrightarrow0,\\
S_N(\lambda)&\longrightarrow-4\nu^2T(\lambda)
\quad\text{locally uniformly away from the poles}.
\end{align}$$

### The Extra Negative Eigenvalue and the Physical Tower

The finite kinetic matrix is positive definite because it is the Gram matrix of independent profiles. Its generalized eigenvalues are therefore real. The strictly decreasing $S_N$ has one zero below the lowest retained pole, one in every intervening interval, and one above the largest retained pole. At each retained pole the apparent singularity cancels against the determinant product, leaving a nonzero determinant because $a_n\ne0$. Thus the poles themselves are not eigenvalues.

Writing the eigenvalues in increasing order gives strict interlacing:

$$\begin{align}
\theta_{0,N}<\lambda_0^-<\theta_{1,N}<\lambda_1^-<\cdots
<\lambda_{N-1}^-<\theta_{N,N}.
\end{align}$$

For each fixed $p$, the zero in $(\lambda_p^-,\lambda_{p+1}^-)$ tends to the unique zero $\tau_p$ of $T$ there. For example, choose two points arbitrarily close to $\tau_p$ on opposite sides. The limiting $-T$ has opposite signs at those points; local uniform convergence and strict monotonicity place the finite zero between them for sufficiently large $N$.

The lowest zero behaves differently. For every fixed $L<\lambda_0^-$, $T(L)>0$, hence $S_N(L)<0$ for all sufficiently large $N$. Since $S_N$ decreases from $+\infty$ on $(-\infty,\lambda_0^-)$, its zero is then below $L$. As $L$ is arbitrary,

$$\begin{align}
\theta_{0,N}&\longrightarrow-\infty,&
\theta_{p+1,N}&\longrightarrow\tau_p.
\end{align}$$

There is at most one nonpositive eigenvalue at any cutoff, and exactly one negative eigenvalue for all sufficiently large cutoffs. The remaining eigenvalues are positive by interlacing.

Nestedness also gives monotonicity. The finite-dimensional min–max principle applies on every $\mathcal U_N$ even though the form on their union is not bounded below. Comparing the two finite spaces gives $\theta_{j,N+1}\leq\theta_{j,N}$ at every fixed available index $j$. Combining this with the identified limits proves

$$\begin{align}
\boxed{\theta_{0,N}\downarrow-\infty,\qquad
\theta_{p+1,N}\downarrow(2-\Delta+\ell+2p)^2.}
\end{align}$$

In particular, the fixed physical frequencies approach the standard spectrum from above. This theorem holds for every fixed fast representative satisfying the assumptions above, not just the polynomial seed used in the numerical table. It is a statement about stationary spectra with exact matrix elements, not stability of the full finite-time dynamics.

There are no additional bounded spectral accumulation points. If positive eigenvalue indices tend to infinity, the interlacing lower bound $\theta_{j,N}>\lambda_{j-1}^-$ forces them to infinity. A bounded-index positive subsequence has the corresponding standard limit; the lowest subsequence escapes to negative infinity.

### Positive Constrained Slow-Mode Spaces

A positive approximation instead restricts the original form to

$$\begin{align}
\mathcal Z_N&=\operatorname{span}\{E_0^-,\ldots,E_N^-\}\cap\mathcal V_0, &\dim\mathcal Z_N&=N.
\end{align}$$

These nested spaces are form-dense in $\mathcal V_0$. Indeed, let $H\in\mathcal V_0$ and let $P_{N+1}^-H$ be its slow spectral partial sum. Define

$$\begin{align}
H_N&=P_{N+1}^-H-\frac{\alpha[P_{N+1}^-H]}{a_0}E_0^-.
\end{align}$$

The first term tends to $H$ in form norm. Its trace tends to $\alpha[H]=0$, so the correction tends to zero in the same norm. Thus $H_N\in\mathcal Z_N$ and $H_N\to H$. The positive closed form $q|_{\mathcal V_0}$ has the complete fast eigenbasis established above, and the usual min–max argument gives

$$\begin{align}
\lambda_{p,N}^{(0)}&\downarrow(2-\Delta+\ell+2p)^2.
\end{align}$$

The multiplier construction in the companion note is exactly this restriction. Its secular equation is $T_{N+1}(\lambda)=0$. It has one root in each $(\lambda_p^-,\lambda_{p+1}^-)$, $0\leq p<N$, and no extra negative root. At $\lambda=\tau_p$, the omitted tail is positive, so $T_{N+1}(\tau_p)<0$; strict increase places the finite root above $\tau_p$, in agreement with the form proof.

In the continuum mixed variational formulation, write the independent multiplier as $b(t)$ and add $-2\nu b\alpha[H]$ to the original Lagrangian. Variation imposes $\alpha[H]=0$. For a regular stationary field, the Green identity then identifies $b=\beta[H]$. Finite slow-mode sums have $\beta=0$, but their form limits need not; the multiplier is not identified with the finite sum's derivative trace off shell.

### Verification and Scope of the Reverse Result

**Verified (analytic proof):** For fixed $0<\Delta<1$, fixed $\ell$, and any fixed finite-form-energy fast representative with $\alpha=0$, $\beta\ne0$ and the stated asymptotics, the raw Legendre restrictions have one eigenvalue escaping to $-\infty$ and every fixed remaining eigenvalue decreases to the standard tower. The proof uses the convergent boundary resolvent sum, finite Schur complements, interlacing and form completeness. Separately, the trace-constrained slow spaces are form-dense in $\mathcal V_0$ and yield a positive convergent approximation.

**Verified (computational support):** xAct/xTras with the full canonicalization and `FullSimplification[]` pipeline gives zero residuals for the bulk scalar variation and both boundary-sign identities. [scalar_reverse_legendre.wl](scalar_reverse_legendre.wl) passes 81 Mathematica checks, including direct seed and cross integrals for $\Delta\in\{3/10,3/5,4/5\}$, $\ell\in\{0,2\}$, $n\leq3$, the renormalized Legendre limit, and symbolic finite Schur determinant/derivative checks. Exact moments followed by 80-digit diagonalization give the recorded spectra at $N=4,8,16,32,64,128$. Repeating the full $N=64$ spectrum with 100 digits changes it by less than $10^{-60}$. The $\ell=1,3$ tests at $\Delta=3/5,N=32$ also approach the angularly shifted standard targets. These finite checks support the formulas; they are not the proof of the infinite-dimensional assertions.

**Assumptions:** The original counterterm and outward-normal convention, fixed background, regular centre, $0<\Delta<1$, a fixed representative independent of cutoff, and exact restrictions of the displayed forms. At finite $R$ the Legendre term uses $\sqrt{-\gamma}$; its renormalized limit is taken before the mode cutoff is removed.

**Not verified:** Uniform rates in mass, angular momentum or eigenvalue index; BF/logarithmic endpoints; or convergence of the full time evolution of the raw Legendre system. Its diverging negative squared frequency prevents interpreting the complete finite action as a positive oscillator theory. No asymptotic law such as $\theta_{0,N}\sim-cN^2$ is inferred from the numerical table.


## Boundary Response Coordinate and Multiplier Limit

The negative mode can be identified within the finite action without treating it as an additional continuum boundary particle. Keep the transformed profiles and notation of the reverse proof: $\nu=1-\Delta$, $\alpha[h]=0$, $\beta[h]=1$, $b_n=\langle E_n^-,h\rangle_{\mathcal H}$ and $a_n=\alpha[E_n^-]$. Define the spectral residual

$$\begin{align}
r_N&=h-P_N^-h=h-\sum_{n=0}^{N-1}b_nE_n^-,\\
\langle E_n^-,r_N\rangle_{\mathcal H}&=0,&q(E_n^-,r_N)&=0\qquad(n<N),\\
\|r_N\|_{\mathcal H}^2&=g_N^{\mathrm{tail}}>0,&q(r_N,r_N)&=k_N^{\mathrm{tail}}\longrightarrow0,\\
\alpha[r_N]&=-\sum_{n<N}a_nb_n=\sum_{n\geq N}a_nb_n\longrightarrow0,&\beta[r_N]&=1.
\end{align}$$

The orthogonality in both pairings follows from the weak alternative eigenvalue identity. The trace limit follows from continuity of $\alpha$, or from the weighted tail estimate already proved. The response remains one because each finite alternative-mode sum has response zero. In particular, $r_N$ is not a vanishing response direction, even though it vanishes in the original energy topology.

### Exact Finite Action

Write a field in $\mathcal U_N$ in either of two bases:

$$\begin{align}
H_N&=b(t)h+\sum_{n<N}q_n(t)E_n^-
 =b(t)r_N+\sum_{n<N}x_n(t)E_n^-,&x_n&=q_n+b_nb,\\
\beta[H_N]&=b,&\alpha[H_N]&=\sum_{n<N}a_nx_n+b\alpha[r_N].
\end{align}$$

The scalar $b(t)$ is the response coefficient; it is distinct from the fixed overlaps $b_n$. Orthogonality removes all mixed terms from the original kinetic and potential forms. The Legendre term remains, giving the exact expression

$$\begin{align}
L_N^{\mathrm L}
&=\frac12\sum_{n<N}(\dot x_n^2-\lambda_n^-x_n^2)
 +\frac{g_N^{\mathrm{tail}}}{2}\dot b^2-\frac{d_N}{2}b^2
 -2\nu b\sum_{n<N}a_nx_n,\\
d_N&=k_N^{\mathrm{tail}}+4\nu\alpha[r_N]\longrightarrow0.
\end{align}$$

Equivalently, the coordinate change is the congruence with $\mathsf U_N=\left(\begin{smallmatrix}1&0\\-b&I\end{smallmatrix}\right)$, where the lower-left block is the overlap vector. It sends the kinetic matrix to $\operatorname{diag}(g_N^{\mathrm{tail}},I)$ and the stiffness matrix to

$$\begin{align}
\mathsf U_N^TK_{\mathrm L,N}\mathsf U_N
&=\begin{pmatrix}d_N&2\nu a^T\\2\nu a&\operatorname{diag}(\lambda_n^-)\end{pmatrix}.
\end{align}$$

No equation of motion or large-cutoff approximation was used in this transformation.

### The Negative Direction

Restrict the potential form to the response coordinate and one fixed alternative mode, for example $E_0^-$. Its determinant is

$$\begin{align}
\det\begin{pmatrix}d_N&2\nu a_0\\2\nu a_0&\lambda_0^-\end{pmatrix}
&=d_N\lambda_0^--4\nu^2a_0^2\longrightarrow-4\nu^2a_0^2<0.
\end{align}$$

Thus sufficiently large cutoffs have a negative potential direction, while the kinetic form remains positive. There can be at most one such direction for each fixed angular harmonic: $q_{\mathrm L}=q>0$ on the codimension-one subspace $\alpha=0$, so any two-dimensional negative subspace would intersect a positive subspace nontrivially. The earlier Schur argument proves that the single negative eigenvalue escapes to $-\infty$.

For a real eigenprofile with $\theta=\omega^2<0$,

$$\begin{align}
0>\theta\|H_N\|_{\mathcal H}^2
&=q_{\mathrm L}(H_N,H_N)
 =q(H_N,H_N)+4\nu\alpha[H_N]\beta[H_N],\\
\alpha[H_N]\beta[H_N]&<0.
\end{align}$$

The harmonic coefficient equations also identify the mixing explicitly:

$$\begin{align}
x_n&=-\frac{2\nu a_nb}{\lambda_n^--\theta},&
\frac{\alpha[H_N]}{\beta[H_N]}
&=\alpha[r_N]-2\nu T_N(\theta).
\end{align}$$

Here $T_N(\theta)$ is the boundary resolvent sum defined earlier. A negative eigenvector necessarily has $b\ne0$. It couples a nonzero response to an opposite-sign slow trace. This identifies its boundary data without claiming pointwise localization or a continuum limit of its normalized profile.

### Meaning of the Multiplier Limit

The exact response equation and its momentum are

$$\begin{align}
g_N^{\mathrm{tail}}\ddot b+d_Nb+2\nu\sum_{n<N}a_nx_n&=0,&
p_b&=g_N^{\mathrm{tail}}\dot b.
\end{align}$$

For a sequence of solutions on a fixed time interval with $b_N$, $\dot b_N$ and $\ddot b_N$ uniformly bounded, this equation implies

$$\begin{align}
p_{b,N}&\longrightarrow0,&\sum_{n<N}a_nx_n&\longrightarrow0,&\alpha[H_N]&\longrightarrow0.
\end{align}$$

The last implication uses $\alpha[r_N]b_N\to0$. These conditional limits describe how the response coordinate loses its kinetic term and enforces the slow-trace constraint. For variations of a controlled coefficient history, the remaining coupling is $-2\nu b\alpha$, exactly the multiplier coupling in the positive mixed formulation.

This is a singular variational limit, not a statement that the negative eigenmode itself becomes a multiplier or a physical boundary state. Its frequency diverges, so the derivative bounds needed above are not supplied by the spectral theorem. General initial data can excite its exponentially growing solution. Spectral convergence of the other modes does not establish convergence of the complete Hamiltonian evolution.

The interpretation is therefore specific: $b$ parametrizes a boundary response of bulk trial fields at finite cutoff; in the controlled limiting variational description it acts as the multiplier imposing $\alpha=0$. No independent boundary kinetic action has been introduced, and no additional standard-quantization degree of freedom follows from this construction.

### Why the Forward Enlargement Is Positive

The two directions start from different closures in the same energy topology:

$$\begin{align}
\overline{\operatorname{span}\{F_n\}}^{\|\cdot\|_q}&=\mathcal V_0=\ker\alpha,&
\overline{\operatorname{span}\{E_n^-\}}^{\|\cdot\|_q}&=\mathcal V.
\end{align}$$

For a forward slow representative $\eta$ with $\alpha[\eta]=1$, the trace bound $|\alpha[H]|\leq C\|H\|_q$ gives

$$\begin{align}
\|\eta-v\|_q&\geq C^{-1}\qquad\text{for every }v\in\mathcal V_0.
\end{align}$$

The added slow direction cannot disappear into the fast span in form norm. It represents the missing one-dimensional trace quotient $\mathcal V/\mathcal V_0$. The forward construction restricts the same positive $q$ to a larger trial space, so it cannot produce a negative squared frequency.

For the reverse construction, every fixed $h\in\mathcal V$ is already in the alternative-mode form closure. Its residual $r_N$ tends to zero in form norm while retaining $\beta=1$. The boundary term remains sensitive to this response because $\beta$ is discontinuous in that norm, and the nonvanishing $b\alpha$ coupling survives while the residual self terms vanish. Consequently the raw reverse action acquires a saddle direction. This does not contradict the Legendre exchange of boundary variables; that exchange does not make their regularity in the original form topology symmetric.

**Verified:** Mathematica gives exact symbolic agreement for the kinetic and stiffness congruences, the response Euler–Lagrange equation, the two-coordinate potential determinant and the harmonic mixing relation in a generic two-slow-mode/one-response system. The arbitrary-cutoff identities follow from the spectral orthogonality displayed above. The one-negative-direction statement uses positivity on $\ker\alpha$ and is independent of the finite checks.

**Assumptions:** Fixed $0<\Delta<1$, angular sector and representative, the same boundary and regularity conditions as the reverse theorem, and exact matrix elements. The controlled multiplier limit additionally assumes the explicit uniform bounds on the response history and its first two time derivatives.

**Not verified:** These bounds for general initial data, a continuum limit of normalized negative eigenprofiles, or convergence of the full finite-time evolution. The multiplier interpretation does not add a physical boundary oscillator to the standard theory.
