# From the complete corner trace to the global switched gravitational coefficient

## Status and precise new content

This note independently proves the high-spacelike cancellation and its uniform polynomial bounds. Its conclusions for the complete global adiabatic limit are **conditional on the indicated complete boundary-corner restriction theorem and on the common homogeneous retarded extension**. Theorems 3–4 state this conditional step; they supply no new proof of the gravitational all-null corner restriction. No temperedness assumption is made for an isolated boundary-subtracted Volterra term.

The new unconditional ingredients are:

1. an exact compact Riemann representation of the scalar Volterra kernel, with polynomial bounds at all positive output masses;
2. an exact positive-resolvent majorant for the complete spacelike scalar-insertion graph, uniform in genuine switch momentum and bounded radial vertex regulators;
3. a low/high spacelike partition that reconstructs the complete two-finite-radius coefficient from the corner trace using only Schwartz multipliers and uniformly tempered, explicitly known remainders;
4. a homogeneous-distribution lemma: an all-null local adiabatic restriction of the degree-zero corner seed automatically upgrades to strong global Schwartz convergence.

Consequently the high-energy $I_0$ obstruction is not a further independent obstacle once the complete all-null corner trace is proved in the same prescription. The actual cancellation occurs at finite switch inside the time-retarded radial Green kernel.

The model, insertion normalization and common switch are those of the fixed-source files:

- half_bps_stress_switching.md, (3)–(14);
- half_bps_stress_boundary_switch_independent.md, (7), (9), (10), (14);
- half_bps_stress_wightman.md, (22)–(23).

All assertions concern the first reduced-TT gravitational tree coefficient. A finite-switch gauge-invariant completion can be attached only after its equality with this same kernel has been established.

## 1. Full momenta, cones, tensor, and normalization

Use $\eta=(-,+,+,+)$, $s(k)=-k^2$, $d\nu(k)=d^4k/(2\pi)^4$, and external momenta

$$
(p,r,-q),\qquad r=\Omega+q-p.
$$

Set $C_k=\mathbf1_{V_+}(k)$, $x=s(p)$, $y=s(q)$, $t=s(r)$, and

$$
\mathcal N_{ij}(p;q,q+\Omega)
=x^2\Pi_{ij,kl}(p)q^k(q+\Omega)^l.
$$

The polynomial continuation in the source report is used on every cone boundary. It has total momentum degree six. Write

$$
c_g=\frac{\alpha\pi^6}{80},\quad
h_z(s)=J_0(z\sqrt s),\quad f_2(v)=\frac{8J_2(v)}{v^2}.
$$

The square roots in expressions containing free modes are taken only on the corresponding positive-energy cone. The full coefficient includes all three insertions. Their supports are:

| Insertion | Free-line support |
|---|---|
| middle scalar | $C_pC_q$ |
| nonlinear stress | $C_{-r}C_q$ |
| right scalar | $C_pC_r$ |

These are genuine finite-$\Omega$ supports; no momentum-conservation delta has been used.

Let $\beta$ be a common radial vertex regulator with $|\beta|\le1$. It is assumed equal to one throughout the radial interval of interest when cutoff-independent Volterra expressions are used. The scalar time-retarded kernel $\mathscr R_k(z,u)$ inverts

$$
\partial_z^2+z^{-1}\partial_z+s(k)
$$

with measure $u\,du$. For spacelike output $s(k)=-\kappa^2<0$,

$$
\mathscr R_k(z,u)=-G_\kappa(z,u),\qquad
G_\kappa(z,u)=I_0(\kappa z_<)K_0(\kappa z_>).
\tag{1}
$$

## 2. A compact Riemann representation of the Volterra kernel

### Lemma 1

For $0<u\le z$ and all complex $s$,

$$
\boxed{
K_s(z,u)=u\int_0^{\log(z/u)}
J_0\!\left(\sqrt{s\,[z^2+u^2-2zu\cosh v]}\right)\,dv.
}
\tag{2}
$$

The integrand is interpreted by the entire function of its squared argument. This equals the Bessel-Wronskian expression in the source reports.

### Proof

Put $A=z^2+u^2-2zu\cosh v$ and $F(z,v)=J_0(\sqrt{sA})$. If $f(A)=J_0(\sqrt{sA})$, then

$$
4Af''+4f'+sf=0.
$$

A direct calculation gives

$$
(\partial_z^2+z^{-1}\partial_z+s)F=z^{-2}\partial_v^2F.
$$

Let $T(z)=\log(z/u)$. At $v=T$ one has $A=0$, $F=1$ and

$$
z^{-2}A_v+z^{-1}A_z=0.
$$

Differentiating the integral with its moving endpoint therefore gives the homogeneous radial equation for $z>u$. At the diagonal the integral is zero and its first $z$ derivative is $1/u$; multiplication by $u$ produces the unit jump. These data uniquely fix the Volterra kernel. Entire continuation in $s$ follows directly from the finite integral. $\square$

### Uniform estimates

On the integration interval $0\le A\le(z-u)^2\le z^2$. The normalized Bessel integral gives, for $s\ge0$,

$$
\left|\partial_s^jJ_0(\sqrt{sA})\right|
\le\frac{A^j}{4^j j!}.
$$

For $s\ge-c/z^2$, the right side can be multiplied by $e^{\sqrt c}$. Hence

$$
\boxed{
|\partial_s^j K_s(z,u)|
\le e^{\sqrt c}\frac{z^{2j}}{4^j j!}\,
u\log(z/u),\qquad s z^2\ge-c.
}
\tag{3}
$$

In particular the estimate has no exponential in a positive output mass, even when that mass is arbitrarily large. With the $u^4$ switched source,

$$
\int_0^zdu\,|\partial_s^jK_s(z,u)|\,u^4
\le e^{\sqrt c}\frac{z^{6+2j}}{36\,4^j j!}.
\tag{4}
$$

Boundary-momentum derivatives follow by the polynomial chain rule for $s(\Omega+q-p)$. They cost only polynomial powers of the full momenta, uniformly for $0\le z\le Z$.

## 3. The complete spacelike graph has a positive-resolvent bound

### Theorem 2: finite-switch spacelike cancellation

Suppose $t=s(r)=-\kappa^2<0$. Then $C_r=C_{-r}=0$, so both outer-insertion graphs vanish exactly. The complete coefficient is the middle graph

$$
\boxed{
\widetilde W_{\chi,\beta;ij}(z,w)
=c_g\widehat\chi(\Omega)\,
C_pC_q\,\mathcal N_{ij}\,J_0(\sqrt y\,w)
\int_0^\infty du\,u^5\beta(u)
G_\kappa(z,u)f_2(\sqrt x\,u)J_0(\sqrt y\,u).
}
\tag{5}
$$

This identity holds before removing the common switch or radial regulator. On the support, $x,y\ge0$, and therefore $|f_2|,|J_0|\le1$. It follows that

$$
\boxed{
|\widetilde W_{\chi,\beta;ij}(z,w)|
\le |c_g\widehat\chi(\Omega)|\,
C_pC_q\,|\mathcal N_{ij}|
\left(\frac{z^4}{\kappa^2}
+\frac{16z^2}{\kappa^4}+\frac{64}{\kappa^6}\right).
}
\tag{6}
$$

The right scalar radius $w$ is arbitrary and enters only through a bounded free mode.

### Proof of the exact majorant

The radial two-dimensional Laplacian is $\Delta_{\rm rad}=\partial_z^2+z^{-1}\partial_z$. Its positive resolvent kernel in the measure $u\,du$ is $G_\kappa$. Its heat semigroup is positivity preserving, and

$$
e^{v\Delta_{\rm rad}}z^4=z^4+16vz^2+32v^2.
$$

Consequently

$$
\int_0^\infty du\,u^5G_\kappa(z,u)
=\int_0^\infty dv\,e^{-\kappa^2v}
(z^4+16vz^2+32v^2)
=\frac{z^4}{\kappa^2}
+\frac{16z^2}{\kappa^4}+\frac{64}{\kappa^6}.
\tag{7}
$$

One can equivalently verify the radial inhomogeneous equation, logfree UV branch and polynomial IR behavior. Positivity allows monotone approximation of the polynomial source by compact sources, so its lack of membership in the radial Hilbert space causes no ambiguity in (7).

### Derivatives and the large-spacelike region

Complete monotonicity of the positive resolvent gives

$$
\int_0^\infty du\,u^5
|\partial_{\kappa^2}^{\,j}G_\kappa(z,u)|
=\frac{j!\,z^4}{\kappa^{2j+2}}
+\frac{16(j+1)!\,z^2}{\kappa^{2j+4}}
+\frac{32(j+2)!}{\kappa^{2j+6}}.
\tag{8}
$$

If $\kappa z\ge1$, this is at most

$$
C_j z^{6+2j},\qquad
C_j=j!+16(j+1)!+32(j+2)!,
\qquad C_0=81.
\tag{9}
$$

Therefore the complete high-spacelike graph and every fixed number of output-momentum derivatives have a uniform polynomial bound. Its isolated boundary-subtracted part can still grow like $I_0(\kappa z)$; the complete kernel (1) has already canceled that growth at finite switch.

The right-output version is identical. If $s(q)=-\kappa_q^2<0$, only the right insertion survives, its free support is $C_pC_r$, and (5)–(9) hold after exchanging the sourced radius $z$ for $w$, replacing the second free mass $\sqrt y$ by $\sqrt t$, and multiplying by the bounded free middle mode $J_0(\sqrt t\,z)$.

## 4. Exact reconstruction from the complete corner

Let

$$
B_\chi(p,q,\Omega)=\widetilde W_\chi(0,0;p,q,\Omega)
$$

be the complete, common-prescription boundary corner. Define

$$
V_{2,\chi}(z,w)=
-c_g\widehat\chi\,C_pC_q\,\mathcal N\,J_0(\sqrt y\,w)
\int_0^zdu\,K_t(z,u)u^4f_2(\sqrt x\,u)J_0(\sqrt y\,u),
\tag{10}
$$

$$
V_{3,\chi}(w)=
-c_g\widehat\chi\,C_pC_r\,\mathcal N
\int_0^wdu\,K_y(w,u)u^4f_2(\sqrt x\,u)J_0(\sqrt t\,u).
\tag{11}
$$

The exact two-leg subtraction identity is

$$
\boxed{
\widetilde W_\chi(z,w)
=h_z(t)h_w(y)B_\chi
+V_{2,\chi}(z,w)+h_z(t)V_{3,\chi}(w).
}
\tag{12}
$$

It is initially an identity in local momentum distributions at finite common vertex regulators. The middle equation is sourced only by the middle insertion; the right boundary-face equation is sourced only by the right insertion. Both equations use the actual nonstationary output momenta. No product by an unrestricted exponentially growing multiplier is used in the following theorem.

### A smooth partition adapted to the physical output

Choose $\ell\in C^\infty(\mathbb R)$ with

$$
\ell(v)=1\quad(v\le1),\qquad
\ell(v)=0\quad(v\ge2),\qquad 0\le\ell\le1,
$$

and put

$$
\ell_z(r)=\ell(-z^2s(r)),\qquad
\ell_w(q)=\ell(-w^2s(q)).
$$

The full coefficient has no region in which both $r$ and $q$ are spacelike: this follows immediately from the three free-cone supports. Consequently

$$
\widetilde W_\chi
=\ell_z\ell_w\widetilde W_\chi
+(1-\ell_z)\widetilde W_\chi^{(2)}
+(1-\ell_w)\widetilde W_\chi^{(3)}.
\tag{13}
$$

On the first piece, insert (12). The multiplier

$$
m_{z,w}=\ell_z(r)\ell_w(q)h_z(t)h_w(y)
$$

and each of its momentum derivatives have uniform polynomial bounds for $z\le Z,w\le W$: positive squared mass uses real Bessel bounds, while negative squared mass is restricted to $-z^2t\le2$ and $-w^2y\le2$. Formula (3) gives the same property for the two compact Volterra terms.

The high pieces use (5) and its right-output version. Formula (8) controls all output derivatives and (9) eliminates inverse transfer masses. Thus they are uniformly tempered function kernels.

For the right piece use independent coordinates $(p,r,\Omega)$, with $q=p+r-\Omega$. This change has unit Jacobian and makes its free-cone indicators independent of $\Omega$. It avoids differentiating a moving cone. The middle piece uses $(p,q,\Omega)$ directly.

## 5. Global finite-radius adiabatic transfer theorem

### Theorem 3

Let $\chi_R(X)=\chi(X/R)$ with real $\chi\in C_c^\infty$, $\chi=1$ near zero. Assume:

1. The common-regulator all-insertion coefficient and its logfree corner obey (12) in local momentum distributions.
2. The corner family has the strong global limit
   $$
   B_{\chi_R}\longrightarrow(2\pi)^4\delta(\Omega)B_\partial
   \quad\text{in }\mathcal S'(\mathbb R^{12}).
   \tag{14}
   $$
3. Radial cutoff removal is taken in the same corner prescription; $|\beta_B|\le1$ and $\beta_B=1$ for $u\le B$, with $B\to\infty$.

Then the complete coefficient has a strong global adiabatic limit in $\mathcal S'(\mathbb R^{12})$, uniformly for $0\le z\le Z$, $0\le w\le W$, in the radial-cutoff/adiabatic order established for the corner. If the corner theorem permits a joint removal, so does this conclusion. The limit is exactly the solution obtained by inserting the same $B_\partial$ and the stationary sources into the two radial equations. If $B_\partial$ is the independent complete CFT Wightman tensor, this identifies the global limit with the boundary-fixed combined tensor, including all exceptional strata.

### Proof

Multiply the corner by the bounded family of Schwartz multipliers $m_{z,w}$ and use (14). This gives the low-piece homogeneous limit uniformly on bounded Schwartz test sets.

For each remaining term in (13), use the independent variables in which both free-cone factors are fixed. The switch-free kernel has $\Omega$ derivatives bounded by a fixed polynomial in the full momenta, uniformly in the bounded radii. After pairing the free momenta with a Schwartz test, one obtains a smooth function of $\Omega$ with bounded derivatives and adequate decay. Setting $v=R\Omega$ and Taylor expanding gives the limit from the moments

$$
\int d\nu(v)\widehat\chi(v)=1,\qquad
\int d\nu(v)\,v^\gamma\widehat\chi(v)=0\quad(|\gamma|>0).
$$

For every $M$, the explicitly known remainder kernels have an $O(R^{-M})$ bound in a finite Schwartz seminorm. This includes the high-spacelike graphs because (8) controls their output derivatives.

Radial cutoff errors in the low pieces vanish identically once $B>\max(Z,W)$. In a high piece $\kappa\ge1/Z$ or $\kappa_q\ge1/W$; the omitted radial tail has an exponential bound in $B/\max(Z,W)$, times a polynomial. This bound is uniform in $R\ge1$ because the absolute polynomial moments of $\widehat\chi_R$ are uniformly bounded. Thus the explicit remainder terms permit joint removal; any restriction on the full radial-cutoff/adiabatic order is exactly the restriction inherited from the corner theorem.

The partition is an exact identity on all insertion supports. Summing its limits gives the stationary solution with corner $B_\partial$. Local regular-singular uniqueness in the two radii identifies it with the combined tensor. Both sides are now tempered, so equality as local distributions is equality in $\mathcal S'$. $\square$

### Quantitative and joint-boundary consequence

If the corner error has a global bound $C R^{-\epsilon}$ in a fixed Schwartz seminorm, the complete finite-radius error has the same rate, plus the rapid explicit-remainder terms and the radial-cutoff tail. The previously proved boundary-fixed estimate

$$
\widetilde W_{z,w}^{\rm combined}-B_\partial=O(\max(z,w)^2)
$$

then gives the joint adiabatic/radial limit with independent $R,z,w$. The rates in this statement refer to the complete coefficient.

## 6. A local corner theorem is enough: the homogeneous upgrade

### Theorem 4

Suppose the regulator-removed switch-free corner tensor $B$ is a globally defined distribution on $\mathbb R^{12}$, exactly homogeneous of degree zero:

$$
B(\lambda p,\lambda q,\lambda\Omega)=B(p,q,\Omega),\quad\lambda>0.
\tag{15}
$$

Let $B_R=R^4\widehat\chi(R\Omega)B$. If $B_R$ converges in $\mathcal D'_{\rm loc}$ to $(2\pi)^4\delta(\Omega)B_\partial$, then the convergence is strong in $\mathcal S'$. Any quantitative local estimate with a finite distribution order upgrades to a global estimate in a sufficiently high Schwartz seminorm.

### Proof

The scaling identity is

$$
B_R(\lambda k)=\lambda^{-4}B_{\lambda R}(k),\qquad k=(p,q,\Omega).
\tag{16}
$$

Local convergence gives an equicontinuous family on a fixed compact ball; on a fixed annulus it has some common finite distribution order $k_0$. Pairing a dyadic shell of radius $\lambda=2^j$ and using (16) costs at most

$$
C\,\lambda^{12-4+k_0-M}\,\mathfrak p_{k_0,M}(\Psi)
=C\,\lambda^{8+k_0-M}\,\mathfrak p_{k_0,M}(\Psi).
\tag{17}
$$

Choose $M>8+k_0$. The sum of large-shell tails tends to zero uniformly in $R\ge1$ and uniformly on bounded Schwartz test sets. The remaining compact part converges by the assumed local theorem. The same argument controls the limit distribution. This proves strong $\mathcal S'$ convergence.

For a local error $CR^{-\epsilon}$, the shell bound gains $(\lambda R)^{-\epsilon}$; the same summation proves the global rate. Rapid local estimates work similarly with their corresponding finite distribution orders. $\square$

### Why degree zero is the correct value

The uncut all-insertion corner has $\mathcal N$ of degree six and $\partial_x^2 H$ of degree minus six. All cone indicators have degree zero. Thus (15) holds for the exact common retarded extension if that extension is inherited from a common regulator removal without an introduced scale. For $\beta_B(u)=\beta(u/B)$, momentum scaling maps $B$ to $\lambda B$; if the common cutoff limit exists, this proves the required homogeneity of its limit.

This argument requires a distribution on the exceptional sets, not merely the off-threshold formula. Establishing that complete local extension/restriction remains the precise input from the corner analysis.

## 7. What this closes and what it leaves to the corner calculation

Proved here:

- finite-switch cancellation of spacelike exponential growth inside the complete retarded kernel;
- global polynomial bounds for the high-spacelike pieces and all their output derivatives;
- a uniformly polynomial low-spacelike/timelike Volterra calculus;
- strong-global propagation of a complete corner adiabatic theorem to both finite radii;
- automatic local-to-global upgrade for the degree-zero boundary seed.

Required from the complete corner calculation:

- one common all-null retarded extension, including output-projector/null mass-raising contacts;
- its $\Omega=0$ local restriction for the genuine switch;
- identification of that complete restriction with the independently known CFT distribution.

These are explicit assumptions in Theorems 3–4. No supported term is discarded by the global argument. A supported term present in the actual corner would propagate through (12); specifying the complete corner is exactly what fixes it.

## 8. Actual verification

The accompanying global_transfer_checks.py was independently executed. Its JSON and stdout record:

- exact Riemann-kernel PDE coefficients and moving-endpoint cancellation;
- eight Bessel-versus-compact-integral comparisons, including positive, zero and negative squared mass;
- exact positive-resolvent ODE and heat equation;
- six complete-monotonicity derivative identities;
- five direct positive radial integrals;
- three finite-radius direct-full versus homogeneous-plus-Volterra comparisons.

Analytic estimates and distributional arguments prove the theorems. Numerical results are supplementary checks, with quadrature errors recorded.

## Reproducible verification files

- [global_transfer_checks.py](checks/stress_completion/global_transfer_checks.py)
- [Execution record and complete program index](checks/stress_completion/README.md)
