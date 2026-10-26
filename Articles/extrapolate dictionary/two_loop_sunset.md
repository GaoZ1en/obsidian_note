# The sunset correction and a complete two-vertex extrapolate functional

## Abstract

For the standard conformally coupled scalar with quartic interaction on Euclidean $\mathrm{AdS}_4$, we compute the genuine two-loop two-point correction that remained after the tadpole and four-point fish calculations. A differential identity relates the cubic propagator to the invariant fish distribution. A Legendre expansion then gives an exact positive spectral decomposition into propagators of dimensions $6+2n$. Two on-shell subtractions fix the physical dimension and residue, leaving a convergent, nonzero finite-radius spectral tower. Its boundary limit vanishes after a new quadratic slice contact subtraction, with an explicit $O(z)$ Schwartz bound; at separated points the leading correction is proportional to $z^8/R^{12}$. We also construct a formal Euclidean Wick renormalization scheme at two interaction vertices, compatible with the already prescribed fish extension. Together with the previously derived tree and fish sectors, this supplies the entire normalized source functional through order $\lambda^2$ in that scheme. The result is finite-order perturbation theory on a fixed background and vacuum, not a nonperturbative measure or an all-order renormalization construction.

## 1. Model and normalization conditions

The formalism remains that of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>):

$$
g=\frac{\ell^2}{z^2}(dz^2+d\mathbf x^2),\qquad
\Omega=z/\ell,\qquad\epsilon=\Omega^{-4}dz\,d^3x,
\qquad E\varphi=-J,\qquad W=\log[Z[J]/Z[0]].
\tag{1.1}
$$

Sources appear as $-\int\epsilon J\varphi$ in the Euclidean action. We use the fast standard Poincaré vacuum and the reference mass $m_0^2\ell^2=-2$, so $\Delta_0=2$. Write

$$
P_0=-\nabla^2-2/\ell^2,\qquad G_0=P_0^{-1},\qquad
S_{\rm int}=\frac\lambda{24}\int\epsilon\,\varphi^4.
\tag{1.2}
$$

The inverse exists on the standard $L^2$ domain, whose $P_0$ spectrum starts at $1/(4\ell^2)$. The slice operator is $\mathcal O_z=\Omega^{-2}\varphi$ with conformal source measure $d^3x$. As before, bulk renormalization is performed before the paired thin-layer and boundary limits.

We first cancel the total order-$\lambda$ mass shift. This is the finite matching described in [the tadpole report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/one_loop_tadpole.md>), not a universal claim that the tadpole is zero. At order $\lambda^2$ we additionally impose

$$
\boxed{\Sigma^{(2)}(0)=0,\qquad
\left.\frac{d\Sigma^{(2)}(p)}{dp}\right|_{p=0}=0,}
\tag{1.3}
$$

where $p$ is the analytically continued eigenvalue of $P_0$ and the inverse propagator is $p+\Sigma(p)$. These conditions keep the physical dimension at two and the elementary pole residue at one through this order. They are conditions on analytic continuation near $p=0$, not a claim that $P_0$ has a zero eigenvalue on Euclidean $L^2$. A discussion with arbitrary second-order mass and residue is given in §8.

## 2. Sunset sign, invariant extension and the forest issue

For $r=\rho(X,Y)/\ell$,

$$
G_0(X,Y)=\frac{\operatorname{csch}^2r}{4\pi^2\ell^2}.
\tag{2.1}
$$

Let $T_\mu=[G_0^2]_R$ be the invariant geodesic prescription fixed in [the fish report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/one_loop_fish.md>):

$$
T_\mu=\lim_{\varepsilon\downarrow0}
\left[\mathbf1_{\rho>\varepsilon}G_0^2
+\frac{\log(\mu\varepsilon)}{8\pi^2}\delta_g\right].
\tag{2.2}
$$

The connected sunset contribution and its inverse-propagator sign are

$$
\delta G_{\rm sun}=\frac{\lambda^2}{6}G_0*S*G_0,
\qquad \Sigma_{\rm sun}=-\frac{\lambda^2}{6}S,
\qquad S=[G_0^3]_R.
\tag{2.3}
$$

The coefficient is $2\cdot4^2\cdot3!/[2(4!)^2]=1/6$; the two external assignments are included. A star denotes convolution with the invariant bulk measure.

The radial Laplacian gives

$$
\ell^2\nabla^2\operatorname{csch}^{2n}r
=2n(2n-3)\operatorname{csch}^{2n}r
+4n(n-1)\operatorname{csch}^{2n+2}r.
\tag{2.4}
$$

Therefore, away from the diagonal,

$$
\boxed{G_0^3=\frac1{32\pi^2}
\left(\nabla^2-\frac4{\ell^2}\right)G_0^2.}
\tag{2.5}
$$

One admissible differential extension is

$$
S_\mu^{D}=\frac1{32\pi^2}
\left(\nabla^2-\frac4{\ell^2}\right)T_\mu.
\tag{2.6}
$$

With the original scaling-degree bound six, the remaining invariant freedom is $A\nabla^2\delta_g+B\delta_g$, with $A$ dimensionless and $B$ of mass dimension two. On a fixed AdS background, finite mass and curvature-coupling shifts cannot be separated by this two-point calculation.

For comparison, a direct proper-distance prescription is

$$
S_\mu^{\rm cut}=\lim_{\varepsilon\downarrow0}
\left[\mathbf1_{\rho>\varepsilon}G_0^3
-\frac{\delta_g}{64\pi^4\varepsilon^2}
+\frac{\log(\mu\varepsilon)}{256\pi^4}
\left(\nabla^2-\frac4{\ell^2}\right)\delta_g\right],
\tag{2.7}
$$

$$
S_\mu^D=S_\mu^{\rm cut}
-\frac3{1024\pi^4}\nabla^2\delta_g
-\frac1{384\pi^4\ell^2}\delta_g.
\tag{2.8}
$$

These finite terms follow from the spherical mean $\bar f(\rho)=f(0)+\rho^2\nabla^2f(0)/8+\cdots$ and the boundary term in Green's identity. Thus even the differential and direct geodesic prescriptions require explicit matching.

Equation (2.5) alone is not a full two-loop forest construction. There are three overlapping fish subgraphs; contracting one leaves a tadpole. Expressions such as $\delta_gG_0(X,X)$ are undefined before a coincident-field prescription is chosen. First-order mass tuning does not itself set the renormalized Wick square to zero. The double-scoop, mass-counterterm tadpole and coupling-counterterm tadpole must also be accounted for. Their 1PI external legs attach at one vertex, so they are invariant local mass kernels on this fixed vacuum. They do not change the nonlocal kernel (2.5). Section 5 makes a definite finite-order Wick construction rather than silently discarding these issues.

## 3. Exact spectral decomposition

For any standard scalar dimension $D$, denote its canonically normalized propagator by $G_D$, with $m_D^2\ell^2=D(D-3)$. In terms of $Z=\cosh r>1$,

$$
G_D(r)=-\frac{Q'_{D-2}(Z)}{4\pi^2\ell^2}
=\frac{\Gamma(D)}{2\pi^{3/2}\ell^2\Gamma(D-1/2)}
 e^{-Dr}\,{}_2F_1\left(D,\frac32;D-\frac12;e^{-2r}\right).
\tag{3.1}
$$

Here $Q$ is the real decaying Legendre function on $Z>1$; the prime differentiates $Z$. The normalization reproduces (2.1) at $D=2$.

Neumann's Legendre expansion gives

$$
\frac1{Z-t}=\sum_{j\ge0}(2j+1)Q_j(Z)P_j(t).
\tag{3.2}
$$

Average at $t=1,-1$, remove the $j=0$ term and differentiate in $Z$. This proves

$$
\boxed{G_0^2=\sum_{n=0}^\infty
\frac{4n+5}{8\pi^2\ell^2}G_{4+2n},\qquad r>0.}
\tag{3.3}
$$

Convergence is locally uniform away from $r=0$. Applying (2.5) term by term there kills the $D=4$ term and gives

$$
\boxed{G_0^3=\sum_{n=0}^\infty\kappa_nG_{D_n},
\quad D_n=6+2n,\quad
\kappa_n=\frac{b_n}{\pi^4\ell^4},\quad
b_n=\frac{(n+1)(2n+7)(4n+9)}{128}.}
\tag{3.4}
$$

All coefficients are positive. This is an off-diagonal spectral identity, not a prescription for summing the unrenormalized coincident expression. In particular $\kappa_n=O(n^3)$, which displays the ultraviolet problem instead of hiding it.

## 4. A convergent on-shell extension and the exact two-point correction

Define

$$
d_n=(D_n-1)(D_n-2)=(2n+4)(2n+5),\qquad
\delta_n=d_n/\ell^2,
\qquad G_{D_n}=(P_0+\delta_n)^{-1}.
\tag{4.1}
$$

Two subtractions at $p=0$ produce the operator

$$
\boxed{
S_{\rm OS}(P_0)=\sum_{n\ge0}\kappa_n
\left[(P_0+\delta_n)^{-1}-\delta_n^{-1}
+P_0\delta_n^{-2}\right]
=P_0^2\sum_{n\ge0}\frac{\kappa_n}{\delta_n^2}(P_0+\delta_n)^{-1}.
}
\tag{4.2}
$$

The bracket must be summed as a whole, not as three divergent sums. Its terms are $O(n^{-3})$ on compact spectral sets away from their poles. The sum is analytic near $p=0$, with nearest pole at $-20/\ell^2$. Hence $S_{\rm OS}(0)=S'_{\rm OS}(0)=0$.

This defines an actual invariant extension. For example, the last resolvent sum has the heat-kernel representation

$$
F(P_0)=\int_0^\infty dt\,e^{-tP_0}
\sum_n\frac{\kappa_n}{\delta_n^2}e^{-t\delta_n}.
\tag{4.3}
$$

The sum in the integrand is $O(1+|\log(t/\ell^2)|)$ near zero. Thus $S_{\rm OS}=P_0^2F$ has ultraviolet order $P_0\log P_0$, consistent with scaling degree six. Away from the diagonal, $P_0^2G_{D_n}=\delta_n^2G_{D_n}$, so (4.2) agrees with (3.4). It differs from (2.6) only by the two allowed local terms, fixed uniquely by (1.3).

With $w_n=b_n/d_n^2$, cancellation of the two external resolvents now gives

$$
\boxed{
\delta G_{\rm OS}(X,Y)=\frac{\lambda^2}{6\pi^4}
\sum_{n=0}^\infty w_nG_{6+2n}(X,Y),
\qquad w_n>0,\quad w_n\sim\frac1{256n}.
}
\tag{4.4}
$$

It is nonzero at finite separation even though the elementary mass and residue have been fixed. The tower is unchanged by local mass and kinetic scheme shifts after imposing the same physical conditions. Its position-space series is locally uniformly convergent for $\rho>0$; it is not evaluated termwise at spacetime coincidence.

At high Euclidean spectral parameter,

$$
S_{\rm OS}(P_0)\sim\frac{P_0\log(P_0\ell^2)}{512\pi^4}.
\tag{4.5}
$$

Thus $\delta G/G_0\sim\lambda^2\log(P_0\ell^2)/(3072\pi^4)$. The nontrivial ultraviolet field-renormalization logarithm remains despite the fixed low-lying residue. Its coefficient agrees with the flat four-dimensional two-loop scalar anomalous-dimension coefficient. This is a perturbative ultraviolet check, not a claim that a fixed-order approximation remains uniformly accurate at arbitrarily large momentum and nonzero coupling.

## 5. Explicit two-vertex Wick construction

To specify the renormalization scheme rather than only its nonlocal answer, define the interaction with vacuum Wick ordering, $V=:\varphi^4:_{G_0}/24$. This makes the order-$\lambda$ tadpole zero in this description and includes the finite mass matching relative to an un-normal-ordered action. It is a fixed-background, fixed-vacuum prescription; no assertion of state-independent local covariance on arbitrary geometries is made.

At distinct interaction positions, the joint Wick product is

$$
:\varphi^4(X)::\varphi^4(Y):
=\sum_{k=0}^4\binom4k^2k!\,G_0(X,Y)^k
:\varphi^{4-k}(X)\varphi^{4-k}(Y):.
\tag{5.1}
$$

At the common diagonal, extend the scalar coefficients with $k=2$ by $T_\mu$ and $k=3$ by $S_{\rm OS}$. The $k=1$ kernel is already locally integrable; a scaling-degree-preserving extension of $k=4$ is a vacuum term and cancels in $Z[J]/Z[0]$. With only two interaction positions there is no further hierarchy of distinct position-space partial diagonals. These choices construct the formal Euclidean two-vertex Wick product with invariant local counterterms. Overlapping momentum-space fish subtractions are not replaced by the undefined product $\delta_gG_0$; their finite normalization is encoded in this Wick prescription and its allowed local extensions.

For initially smooth compactly supported bulk sources, $\Phi=G_0J$, the complete connected functional through this order is

$$
\boxed{
\begin{aligned}
W[J]={}&\frac12\int\epsilon J\Phi
-\frac\lambda{24}\int\epsilon\,\Phi^4\\
&+\frac{\lambda^2}{72}\int\epsilon(X)\epsilon(Y)
 \Phi(X)^3G_0(X,Y)\Phi(Y)^3\\
&+\frac{\lambda^2}{16}\int\epsilon(X)\epsilon(Y)
 \Phi(X)^2T_\mu(X,Y)\Phi(Y)^2\\
&+\frac{\lambda^2}{12}\int\epsilon(X)\epsilon(Y)
 \Phi(X)S_{\rm OS}(X,Y)\Phi(Y)+O(\lambda^3).
\end{aligned}
}
\tag{5.2}
$$

The coefficients are $\binom4k^2k!/[2(4!)^2]$ for $k=1,2,3$. The $k=0$ term cancels in the connected logarithm, and $k=4$ cancels by vacuum normalization. There are no other nonvacuum source degrees through two vertices. The kinetic ambiguity of the $k=3$ extension is the ordinary local field counterterm after integration by parts.

This is a constructed finite-order Euclidean renormalization scheme compatible with the previous fish prescription. It does not identify the bare counterterms of a particular MS/BPHZ regulator, establish all-order causal renormalization, or construct a positive interacting probability measure. The boundary-source limit still requires the estimates below and those in the earlier tree/fish reports.

## 6. Equal-radius kernel and its additional contact subtraction

At equal nonzero radius, the reference-normalized mixed propagator is

$$
G_D(z,z;k)=\ell^{-2}z^3 I_{D-3/2}(kz)K_{D-3/2}(kz).
\tag{6.1}
$$

Let $\nu_n=2n+9/2$. Equation (4.4) gives the complete on-shell quadratic correction

$$
\boxed{
\delta C_z(k)=\frac{\lambda^2\ell^2}{6\pi^4z}
\sum_{n\ge0}w_n I_{\nu_n}(kz)K_{\nu_n}(kz).
}
\tag{6.2}
$$

Since $0<I_\nu(x)K_\nu(x)\le1/(2\nu)$ and $w_n=O(n^{-1})$, this series converges absolutely, uniformly for $x\ge0$. In particular the sharp equal-slice quadratic coefficient is a well-defined distribution after bulk renormalization. The paired thin-layer limit is justified before taking $z\to0$: positivity of each radial Green function gives a Cauchy–Schwarz bound on the rescaled two-radius kernel, $|C_n(z,z';k)|\le\ell^2/[2\nu_n\sqrt{zz'}]$. For a mollifier supported in a fixed compact positive-radius neighborhood this is summable with $w_n$, uniformly in $k$. Termwise radial continuity and Schwartz tangential pairing therefore give the thin-layer limit by dominated convergence. This verifies, rather than bypasses, the reference's source-pairing order.

Fixing mass and residue does not eliminate the slice contact divergence. The new coefficient is

$$
\boxed{
A_*:=\sum_{n\ge0}\frac{w_n}{2\nu_n}
=\frac{19-\pi^2-13\log2}{256}>0,
\qquad
\delta P_z=\frac{\lambda^2\ell^2A_*}{6\pi^4z}.
}
\tag{6.3}
$$

The full quadratic source subtraction in this on-shell scheme is therefore

$$
P_z=\frac{\ell^2}{z}\left[1+\frac{\lambda^2A_*}{6\pi^4}\right]
+O(\lambda^3).
\tag{6.4}
$$

It multiplies the local quadratic source term $\frac12\int d^3x\,j(x)^2$ in $W_z$. No anomalous external exponent is needed in this particular mass condition, but the new local subtraction remains necessary.

### 6.1 A global momentum bound proving the boundary limit

For $\nu>1$,

$$
0\le\frac1{2\nu}-I_\nu(x)K_\nu(x)
\le\frac{x^2}{4\nu(\nu^2-1)}.
\tag{6.5}
$$

A direct proof uses the Friedrichs resolvent on the real line of

$$
L_{\nu,x}=-\partial_t^2+\nu^2+x^2e^{2t}.
$$

Its diagonal inverse at $t=0$ is $I_\nu(x)K_\nu(x)$, and the zero-potential Green function is $e^{-\nu|t-s|}/(2\nu)$. Positivity and the resolvent identity bound the diagonal difference by

$$
\frac{x^2}{4\nu^2}\int_{-\infty}^{\infty}
 e^{-2\nu|t|+2t}\,dt
=\frac{x^2}{4\nu(\nu^2-1)}.
$$

The unbounded potential may be treated by monotone bounded-potential/form approximations; the displayed integral is finite precisely in the range used here.

The summed remainder coefficient is also elementary:

$$
B_*:=\sum_{n\ge0}\frac{w_n}{4\nu_n(\nu_n^2-1)}
=\frac{-40+3\pi^2+15\log2}{1152}>0.
\tag{6.6}
$$

Thus, globally for $k\ge0$ and $z>0$,

$$
\boxed{
-\frac{\lambda^2\ell^2B_*}{6\pi^4}\,zk^2
\le\delta C_z(k)-\delta P_z\le0.
}
\tag{6.7}
$$

For every Schwartz momentum test $f$ the absolute pairing is bounded by $\lambda^2\ell^2B_*z\int_k k^2|f(k)|/(6\pi^4)$. This proves an $O(z)$ tempered-distribution boundary limit, not just convergence of finitely many spectral terms. In particular,

$$
\lim_{z\to0}[C_z(k)-P_z]=-\ell^2k+O(\lambda^3)
\tag{6.8}
$$

through the calculated perturbative coefficients. It is the reference's subtracted Euclidean two-point distribution, not a positive Gaussian covariance on unrestricted slice sources.

The proof and contact prescription here concern a common cutoff $z$ for both insertions. At distinct points, unequal radii can also be taken to zero, but a general unequal-cutoff distribution theorem requires separate contact bookkeeping and is not claimed.

### 6.2 A nonzero separated finite-radius signal

For fixed $R=|x-y|>0$, the lowest tower dimension is six. Its coefficient is $w_0=63/51200$ and its large-distance propagator coefficient is $128/(63\pi^2\ell^2)$. Therefore

$$
\boxed{
\delta C_z(R)=\frac{\lambda^2\ell^2z^8}{2400\pi^6R^{12}}
\left[1+O(z^2/R^2)\right]+O(\lambda^3),\qquad z/R\to0.
}
\tag{6.9}
$$

This positive separated correction is not a contact term. It survives at finite radius but is projected out of the leading dimension-two boundary two-point function. The equal-slice momentum remainder in (6.7) begins with analytic contact-type powers such as $zk^2$; this does not contradict the much faster separated-point behavior (6.9).

## 7. The complete boundary functional through order $\lambda^2$

The tree six-point source limit and the fish four-point source limit have already been proved for Schwartz sources in [the multivertex report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/multivertex_trees.md>) and [the fish report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/one_loop_fish.md>). Section 6 supplies the remaining quadratic sector in the explicitly constructed scheme (5.2). Consequently

$$
\boxed{
W_\partial[j]=\frac12\int_k|j(k)|^2(-\ell^2k)
+\frac1{4!}\int_{\{k_i\}}\delta_{\sum k_i}
 \prod_{i=1}^4j(k_i)\,\mathcal C^{(4)}_\partial
+\frac1{6!}\int_{\{k_i\}}\delta_{\sum k_i}
 \prod_{i=1}^6j(k_i)\,\mathcal C^{(6)}_\partial
+O(\lambda^3),
}
\tag{7.1}
$$

where $\int_{\{k_i\}}$ includes each $d^3k_i/(2\pi)^3$ and $\delta_{\sum k_i}=(2\pi)^3\delta^{(3)}(\sum_i\mathbf k_i)$. The connected kernels are

$$
\mathcal C^{(4)}_\partial
=-\frac{\lambda\ell^4}{E}
+\frac{\lambda^2\ell^4}{2}\sum_{\text{three }2|2}\mathcal I_\mu(a,b,q),
\qquad E=\sum_{i=1}^4|k_i|,
\tag{7.2}
$$

where each $2|2$ channel has $a=\sum_{i\in A}|k_i|$, $b=\sum_{i\in B}|k_i|$ and $q=|\sum_{i\in A}\mathbf k_i|$, with the closed logarithm/dilogarithm kernel $\mathcal I_\mu$ of the fish report, and

$$
\mathcal C^{(6)}_\partial
=\lambda^2\ell^6\sum_{\text{ten unordered }3|3}
\frac1{(s_A+s_B)(s_A+q_A)(s_B+q_A)}.
\tag{7.3}
$$

Here $s_A=\sum_{i\in A}|k_i|$ and $q_A=|\sum_{i\in A}\mathbf k_i|$. The source functional is obtained from (5.2) by the paired thin-layer limit and subtracting $\frac12P_z\int j^2$ with (6.4). No further fourth- or sixth-degree source subtraction is required in this model through this order.

Equation (7.1) is complete as a coefficientwise formal perturbative statement through $\lambda^2$, in the stated Wick/on-shell scheme. It includes a two-loop bulk contribution even though that contribution has no remaining nonlocal boundary two-point coefficient after normalization. It does not claim an all-order interacting boundary functional, a fixed-coupling uniform limit, or a nonperturbative boundary probability measure.

## 8. What changes when mass and residue are not fixed

The on-shell conditions are a useful physical matching, not the prediction that every renormalized scheme has zero anomalous dimension. To make the alternatives explicit, let $a$ be the eigenvalue of $-\ell^2\nabla^2$, so $a=h(3-h)$ and $a=2$ is the conformal mass shell. The normalized spherical function there is $\Phi_2(r)=\operatorname{sech}^2(r/2)$.

The exact transform of the fixed fish distribution is

$$
\widehat T_\mu(a)=\frac1{8\pi^2}
\left[\log(\mu\ell)+\frac12-\gamma_E
-\frac12\psi\left(\frac{h+1}{2}\right)
-\frac12\psi\left(\frac{4-h}{2}\right)\right].
\tag{8.1}
$$

It is symmetric under $h\leftrightarrow3-h$. One proof takes convergent differences of the resolvent sum (3.3) and fixes the additive constant using (2.2). At the shell,

$$
\widehat T_\mu(2)=\frac{\log(2\mu\ell)-1/2}{8\pi^2},\qquad
\widehat T_\mu'(2)=\frac{\pi^2/3-4}{32\pi^2}.
\tag{8.2}
$$

For the differential extension (2.6), $\widehat S_\mu^D(a)=-(a+4)\widehat T_\mu(a)/(32\pi^2\ell^2)$. Its sunset mass and residue contributions, with no further local second-order adjustment, are

$$
\gamma_D=\Delta_{\rm phys}-2
=\frac{\lambda^2}{256\pi^4}\left[\log(2\mu\ell)-\frac12\right],
\tag{8.3}
$$

$$
\zeta_D=Z_{\rm pole}-1
=-\frac{\lambda^2}{1536\pi^4}
\left[\log(2\mu\ell)+\frac{\pi^2}{2}-\frac{13}{2}\right].
\tag{8.4}
$$

These are numbers in a specified finite graph prescription. Additional local mass and kinetic terms shift them independently. They are not universal predictions following from first-order tadpole cancellation alone. In the Wick construction one could choose $S_\mu^D$ instead of $S_{\rm OS}$; then these are precisely the corresponding second-order parameters unless further finite terms are added.

For general matched second-order values $\gamma,\zeta=O(\lambda^2)$, the propagator decomposes into

$$
G=G_2+\gamma\,\partial_DG_D|_{D=2}+\zeta G_2
+\frac{\lambda^2}{6\pi^4}\sum_n w_nG_{6+2n}+O(\lambda^3).
\tag{8.5}
$$

The tower is independent of these two local choices. Physical extrapolation uses $\Omega^{-2-\gamma}\varphi$, and the quadratic subtraction becomes

$$
P_z^{\rm phys}=\frac{\ell^2}{z}
\left[1+\zeta+2\gamma\left(\log\frac\ell z-1\right)
+\frac{\lambda^2A_*}{6\pi^4}\right]+O(\lambda^3).
\tag{8.6}
$$

The resulting boundary multiplier is

$$
C_\partial(k)=-\ell^2k
\left[1+\zeta+2\gamma\left(\log(k\ell)+\gamma_E+\log2-2\right)\right]
+O(\lambda^3).
\tag{8.7}
$$

With the original unshifted external power, the nonlocal $k\log z$ term returns whenever $\gamma\ne0$. It cannot be removed by (6.3), which is a different, purely local divergence. A finite field normalization can set the chosen pole residue to one; a mass condition fixes the exponent. These are distinct operations.

The higher spectral tower also has an equation-of-motion interpretation: at this order $E\varphi=\lambda:\varphi^3:/6$ away from sources, while the Gaussian Wick-cubic two-point function is $6G_0^3$. Dividing each dimension-$D_n$ component by the squared mass gap gives $\lambda^2\kappa_n/(6\delta_n^2)$, precisely (4.4). This is a normalization check on the three-particle contribution, not a general theorem excluding composite-operator mixing at higher orders.

## 9. Reproducible checks and limits of the result

The [Wolfram script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/sunset_checks.wl>) and its [output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/sunset_checks_results.txt>) contain fourteen labelled groups of exact checks, including thirteen series coefficients for each spectral identity, the cutoff finite terms, shell transforms and derivatives, both infinite contact/remainder sums, the subtracted resolvent identity, separated normalization, asymptotic weight and Wick coefficients. All forty scalar residuals vanish; no Wolfram messages occurred. The Legendre argument, rather than the finite coefficient tests, proves the infinite spectral identities.

Twenty numerical samples satisfy the global Bessel inequality. A 101-term spectral sum reproduces $G_0^3$ at $r=0.2,0.7,2$; its relative missing tail at the hardest sample is approximately $5.56\times10^{-14}$. For the finite-slice correction, take $\lambda=\ell=k=1$. Summing $n=0,\ldots,160$ gives:

| $z$ | Partial sum of $\delta C_z-\delta P_z$ | Bound on magnitude of its omitted negative tail |
|---|---:|---:|
| $1$ | $-8.63913391762\times10^{-9}$ | $1.6150\times10^{-14}$ |
| $10^{-1}$ | $-8.93926317956\times10^{-10}$ | $1.6150\times10^{-15}$ |
| $10^{-2}$ | $-8.94245338895\times10^{-11}$ | $1.6150\times10^{-16}$ |
| $10^{-3}$ | $-8.94248531248\times10^{-12}$ | $1.6150\times10^{-17}$ |

The tail bound follows analytically from (6.5) and the exact remaining part of $B_*$, rather than comparing two truncations without an error estimate. Two independent fresh derivations checked the invariant differential extension, spectral identity, transform, pole parameters and on-shell tower. Subsequent reviews checked the finite-order Wick construction, Bessel bound, contact sums and boundary normalization.

**Established:** a definite formal two-vertex renormalized Euclidean source functional; the exact on-shell sunset tower; a nonzero finite-radius two-point correction; its required quadratic contact subtraction and equal-cutoff Schwartz limit; and the complete boundary generating functional through $\lambda^2$ in the specified model and normalization.

**Not established:** all-order renormalization or reflection positivity; matching to a particular bare forest/MS regulator; arbitrary-background local covariance of the vacuum Wick prescription; unequal-cutoff distributional contact terms; Lorentzian operator limits; general-spin theories; or a quantitative comparison with an independent holographic dual. Fixing the physical mass and residue is a normalization condition, not a scheme-independent prediction that interacting anomalous dimensions vanish.
