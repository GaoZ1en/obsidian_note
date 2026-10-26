# Independent Euclidean Ward boundary-limit check

## Result and scope

For the explicitly proposed Ward reconstruction below, its natural locally integrable extension satisfies

\[
G_{ab}\longrightarrow G_0\quad\text{strongly in }\mathcal S'(\mathbb R^4_{k_1}\times\mathbb R^4_{k_2})
\]

jointly as positive \(a,b\to0\), without restricting their ratio or deleting the \(p=0,q=0,r=0\) edges. This is an analytic domination theorem, not an inference from a fixed-momentum expansion. It does **not** prove that the supplied completion is the physical stress response, or exclude additional edge-supported distributions if these are permitted independently of the displayed regular-distribution prescription.

This independent analysis uses §7 of [the stress reconstruction](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_reconstruction.md#L361-L435>) and §2.2 of [the BF scalar analysis](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps.md#L96-L163>). No existing source was modified.

## Definitions

All momenta are Euclidean and incoming in four boundary dimensions:
\(\mathbf p=-\mathbf k_1-\mathbf k_2\), \(p=|\mathbf p|\), \(q=|\mathbf k_1|\), \(r=|\mathbf k_2|\). Set \(R=\max(a,b)\), \(s=\min(a,b)\),

\[
C_{ab}(k)=2\pi^2I_0(ks)K_0(kR),\quad
c=2\pi^2\log(R/\ell),\quad C^{\rm ren}_{ab}=C_{ab}+c,
\]
\[
C_\partial(k)=-2\pi^2[\log(k\ell/2)+\gamma_E],\qquad
\pi_{ij}=\delta_{ij}-p_ip_j/p^2,
\]
\[
\Pi_{ij,kl}=\tfrac12(\pi_{ik}\pi_{jl}+\pi_{il}\pi_{jk})-\tfrac13\pi_{ij}\pi_{kl}.
\]

The supplied response is
\[
G_{ij}=4\pi^2\Pi_{ij,kl}k_{1k}k_{1l}J_{ab}+L_{ij}[d,\tau],
\]
\[
L_{ij}=\frac{p_i d_j+p_jd_i}{p^2}-\frac{p_ip_j(p\cdot d)}{p^4}
+\frac{\pi_{ij}}3\left(\tau-\frac{p\cdot d}{p^2}\right),
\quad d=k_1C^{\rm ren}_{ab}(q)+k_2C^{\rm ren}_{ab}(r),
\]
\[
\begin{split}
\tau={}&-(a\partial_a+2+a^2p\cdot k_2/2)C^{\rm ren}_{ab}(r)
-(b\partial_b+2+b^2p\cdot k_1/2)C^{\rm ren}_{ab}(q)\\
&+2\pi^2+c(a^2p\cdot k_2+b^2p\cdot k_1)/2.
\end{split}
\]

Also
\[
H_p(u)=\tfrac12p^2u^2K_2(pu),\quad
F_a(q,u)=I_0(q\min(a,u))K_0(q\max(a,u)),
\]
\[
J_{ab}=\int_0^\infty uH_p(u)F_a(q,u)F_b(r,u)\,du,
\quad J_{00}=\int_0^\infty uH_p(u)K_0(qu)K_0(ru)\,du.
\]

The limiting tensor is this same expression with \(J_{ab}\mapsto J_{00}\), \(d\mapsto d_0=k_1C_\partial(q)+k_2C_\partial(r)\), and
\[
\tau\mapsto\tau_0=-2[C_\partial(q)+C_\partial(r)]+2\pi^2.
\]

## 1. A radius-independent TT majorant

Positivity and monotonicity of \(I_0,K_0\) imply, for every positive radius,
\[
0<F_a(q,u)\le h(qu),\qquad h(t)=I_0(t)K_0(t).
\]
The small- and large-\(t\) Bessel asymptotics give
\[
M:=\sup_{t>0}\sqrt t\,h(t)<\infty.
\]
Thus, whenever \(pqr>0\),
\[
0\le J_{ab}\le\frac{M^2}{\sqrt{qr}}\int_0^\infty H_p(u)\,du
=\frac{3\pi M^2}{4p\sqrt{qr}}.
\]
This also dominates the limiting radial integrand and proves \(J_{ab}\to J_{00}\) by radial dominated convergence. Since Euclidean \(\Pi\) has bounded components,
\[
|\Pi_{ij,kl}k_{1k}k_{1l}J_{ab}|\le C\frac{q^{3/2}}{p\sqrt r}.
\]
The right side is homogeneous of degree zero in eight independent momentum coordinates. On the unit seven-sphere, the three sets \(p=0,q=0,r=0\) are pairwise disjoint smooth codimension-four submanifolds. Its negative exponents are only \(1\) at \(p=0\) and \(1/2\) at \(r=0\), so the angular integral is finite. The simultaneous origin is harmless by degree zero, and polynomially weighted integrability at infinity follows.

## 2. Radial derivatives, including coincident radii

Put \(x=ks\), \(y=kR\). For \(a<b\),
\[
\frac{a\partial_a C^{\rm ren}_{ab}}{2\pi^2}=A(x,y):=xI_1(x)K_0(y),
\qquad
\frac{b\partial_b C^{\rm ren}_{ab}}{2\pi^2}=B(x,y):=1-yI_0(x)K_1(y).
\]
For \(a>b\), exchange the two radial labels. The Wronskian identity
\[
y[I_1(y)K_0(y)+I_0(y)K_1(y)]=1
\]
shows that at \(a=b\), \(A(y,y)=B(y,y)\). Consequently **the renormalized covariance has ordinary, unique first partial derivatives across the diagonal**. No averaging prescription is needed for \(C^{\rm ren}\). The bare covariance and the subtraction separately have opposite derivative jumps; differentiating them with inconsistent side prescriptions would introduce an artificial term.

Moreover,
\[
0\le A(x,y)\le yI_1(y)K_0(y)\le1,
\quad
0\le B(x,y)\le1-yK_1(y)\le1.
\]
Both upper bounds tend to zero as \(y\to0\). Therefore both radial Euler derivatives are bounded by \(2\pi^2\) globally and tend to zero at fixed momentum uniformly in the radius ratio. This argument does not differentiate an uncontrolled asymptotic expansion.

## 3. Ward-sector domination

The established scalar estimate, for any fixed \(0<\beta<2\), is
\[
|C^{\rm ren}_{ab}(k)-C_\partial(k)|\le C_\beta(kR)^\beta.
\]
Fix any \(R_0>0\) and restrict \(0<R\le R_0\). Choosing \(\beta=1\) supplies a radius-independent bound by a constant times \(1+|\log(k\ell)|+kR_0\).

Cancel the explicit \(c\)-terms in the trace before estimating:
\[
\begin{split}
\tau={}&-a\partial_aC^{\rm ren}_{ab}(r)-b\partial_bC^{\rm ren}_{ab}(q)
-2[C^{\rm ren}_{ab}(r)+C^{\rm ren}_{ab}(q)]+2\pi^2\\
&-\tfrac12a^2(p\cdot k_2)C_{ab}(r)
-\tfrac12b^2(p\cdot k_1)C_{ab}(q).
\end{split}
\]
Since \(a^2,b^2\le R^2\), \(C_{ab}=C^{\rm ren}_{ab}-c\), and \(R^2|\log(R/\ell)|\to0\), the last line tends to zero at fixed nonzero momentum. It has a uniform polynomial/logarithmic majorant. Hence \(d\to d_0\), \(\tau\to\tau_0\) almost everywhere, with such majorants.

In Euclidean component norm,
\[
|L[d,\tau]|\le C\bigl(|d|/p+|\tau|\bigr).
\]
After absorbing positive momentum logarithms into a polynomial, a common majorant for this sector has the form
\[
C(1+\ell(q+r))^m
[1+\log^-(\ell q)+\log^-(\ell r)](1+1/(\ell p)),
\quad \log^-t=\max(0,-\log t),
\]
for some fixed finite integer \(m\). Constants can depend on \(\ell,R_0\), not on the radius ratio.

For completeness, the apparent overlap at the simultaneous origin does not invalidate this bound. Write \((k_1,k_2)=\rho\omega\), \(\omega\in S^7\), and work in fixed dimensionless units. For \(0<\rho<1\),
\[
\log^-(\rho q_\omega)\le |\log\rho|+\log^-q_\omega,
\qquad p^{-1}=\rho^{-1}p_\omega^{-1}.
\]
The angular integrals of \(p_\omega^{-1}\), \(\log^-q_\omega\), and their products are finite: their singular submanifolds are disjoint and each has codimension four. The radial worst case is
\[
\int_0^1\rho^7\rho^{-1}(1+|\log\rho|)\,d\rho<\infty.
\]
The actual \(d/p\) carries an additional degree-one numerator and is even less singular. For \(\rho\ge1\), the same angular estimates and a sufficiently strong polynomial weight give integrability at infinity.

## 4. Distributional conclusion

Together the TT and Ward estimates provide a measurable radius-independent majorant \(B(k_1,k_2)\) such that, for some sufficiently large integer \(N\),
\[
\int_{\mathbb R^8}(1+|(k_1,k_2)|)^{-N}B(k_1,k_2)\,d^4k_1d^4k_2<\infty.
\]
Almost-everywhere convergence and dominated convergence yield
\[
\int(1+|(k_1,k_2)|)^{-N}|G_{ab}-G_0|\,d^4k_1d^4k_2\longrightarrow0.
\]
This proves convergence against arbitrary Schwartz tests, uniformly over bounded subsets of Schwartz space, along every joint positive-radius path. Values assigned exactly on \(pqr=0\) do not change these regular distributions. No extra distributions supported on these sets are added.

## CAS supplement

A fresh Wolfram kernel returned Wronskian residual zero and
\(\int_0^\infty t^2K_2(t)\,dt/2=3\pi/4\), with no messages. A finite numerical sample of \(\sqrt t I_0(t)K_0(t)\) is only a check; finiteness of its global supremum follows analytically from the endpoint asymptotics and continuity.

Reproducible input: [Wolfram check](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_ward_limit_checks.wl>). Actual returned values: [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_ward_limit_checks_results.txt>).
