# Proca insertions, radial constraints and the Maxwell limit in AdS₄

## Abstract

We construct the finite-radial extrapolate dictionary of the free massive vector in Poincaré AdS₄ directly from its bulk Gaussian theory. The exact inverse contains a radial contact term essential to the sourced Proca constraint; the tangential covariance nevertheless has a well-defined thin-layer limit. Its longitudinal kernel is not a scalar kernel copied into a vector projector. We prove the contact-subtracted Euclidean boundary limit for arbitrary unequal radii in the mass interval $0<m^2\ell^2<3/4$. The positive-energy tangential Wightman kernel has a boundary limit, without source-contact subtraction, for every $m^2>0$; the corresponding free fields converge on a common Fock domain after smearing. Finally, the boundary-first massless limit gives a conserved current, while the normalized divergence retains a canonically normalized massless scalar. Thus the full Proca limit is not Maxwell alone.

## 1. Insertion and variational domain

We retain the conformal slice measure, source adjoint, Fourier convention and order of limits of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>), PDF pp. 3–4 / printed pp. 1–2, equations (0.1), (0.6)–(0.11). The reference is the 40-page local version identified in the [scalar report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_quantization.md>). The scalar power is not imposed on a coordinate vector component: its replacement is derived below.

Set
$$
g_E=\Omega^{-2}(dz^2+\delta_{ij}dx^i dx^j),\quad \Omega=z/\ell,
\quad \epsilon=\Omega^{-4}dz\,d^3x,\quad \int_k=\int\frac{d^3k}{(2\pi)^3}.
\tag{1.1}
$$
Fields and sources use $A_\mu(z,x)=\int_k e^{ik\cdot x}A_\mu(z,k)$; covariance kernels suppress the common $(2\pi)^3\delta^{(3)}(k+k')$. Here $\ell>0$, $z>0$, $m>0$, and $A_\mu$ is the canonical coordinate covector, not its orthonormal-frame components. Take
$$
S_E[A;J]=\int\epsilon\left(\frac14F_{\mu\nu}F^{\mu\nu}
 +\frac{m^2}{2}A_\mu A^\mu-J^\mu A_\mu\right),
\qquad W[J]=\log\frac{Z[J]}{Z[0]}.
\tag{1.2}
$$
All spacetime index raising in (1.2) uses $g_E$. Slice indices and their sources use $\delta_{ij}$. There is no gauge quotient for $m>0$. We select the fast boundary domain and the regular interior endpoint; for positive Euclidean $k$, these are the $I$ and $K$ solutions. The fast-domain boundary variation vanishes, so no additional fluctuating boundary field is introduced. Smooth compact radial sources and momentum packets away from zero initially define the response; the kernels below extend the insertion functional to Schwartz slice sources.

The equation and its sourced constraint are
$$
\nabla_\nu F^{\nu\mu}-m^2A^\mu=-J^\mu,
\qquad m^2\nabla_\mu A^\mu=\nabla_\mu J^\mu.
\tag{1.3}
$$
Imposing $\nabla\cdot A=0$ inside an arbitrary source layer would therefore change the problem. Define the coordinate source density $s^\mu=\Omega^{-4}J^\mu$, and
$$
M=m\ell,\qquad \nu=\sqrt{\tfrac14+M^2}>\tfrac12,
\qquad \alpha=\nu+\tfrac12,\qquad \Delta=\alpha+1.
\tag{1.4}
$$
The coordinate tangential insertion will be
$$
\mathcal O_{z,i}=\Omega^{-\alpha}A_i(z),\qquad
J^i_\eta=\Omega^{4-\alpha}\rho_\eta(z-z_0)j^i,
\qquad J^z_\eta=0.
\tag{1.5}
$$
Indeed $\int\epsilon J^\mu_\eta A_\mu=\int dz\,d^3x\,\rho_\eta j^i\Omega^{-\alpha}A_i$. First pair this source with the bulk inverse, then let $\eta\downarrow0$ at fixed $z_0$, and only afterwards take the boundary limit. The measure is $d^3x$, not $\Omega^{-3}d^3x$.

## 2. Solving the constraint rather than dropping it

Four-dimensional conformal invariance of the Maxwell term reduces the quadratic action to the flat-coordinate expression
$$
S_E[A;0]=\int dz\,d^3x\left(\frac14F_{\mu\nu}F_{\mu\nu}
 +\frac{M^2}{2z^2}A_\mu A_\mu\right).
\tag{2.1}
$$
For $k>0$ set $P^L_{ij}=k_i k_j/k^2$, $P^T=\delta-P^L$, $a=\hat k_i A_i$, and $b=A_z$. Suppressing the paired Fourier arguments, the longitudinal action is
$$
S_L=\frac12\int dz\left(|a'-ikb|^2+\frac{M^2}{z^2}(|a|^2+|b|^2)\right).
\tag{2.2}
$$
Eliminating $b$ in the Gaussian integral gives its conditional mean and the effective operator
$$
\overline b[a,s]=\frac{s^z-ik a'}{D},\quad D=k^2+\frac{M^2}{z^2},\qquad
H_L=-\partial_z(p\partial_z)+\frac{M^2}{z^2},\quad
p=\frac{M^2}{M^2+k^2z^2}.
\tag{2.3}
$$
This conditional mean is not an off-shell identity: the conditional radial Gaussian fluctuation has covariance $D^{-1}\delta(z-z')$. The effective longitudinal source is $s_L-ik\partial_z(s^z/D)$, and completing the square also retains the quadratic source term involving $s^z/D$. These facts are important for radial contacts.

The transverse operator is $H_T=-\partial_z^2+D$. Put
$$
u(z)=\sqrt z\,I_\nu(kz),\qquad v(z)=\sqrt z\,K_\nu(kz),\qquad
L_z=z\partial_z-1.
\tag{2.4}
$$
Here $u(z)$, not the order $\nu$, denotes the first endpoint solution. If $H_Tu=0$, then $H_L(Lu)=0$: $(Lu)'=zDu$ and $p(Lu)'=M^2u/z$. The Wronskians are
$$
u v'-u'v=-1,\qquad p\big[(Lu)(Lv)'-(Lu)'Lv\big]=M^2.
\tag{2.5}
$$
With $a_r=\min(z,z')$, $b_r=\max(z,z')$, define
$$
g(z,z';k)=u(a_r)v(b_r),\qquad
h(z,z';k)=-\frac{(Lu)(a_r)(Lv)(b_r)}{M^2}.
\tag{2.6}
$$
The sign in $h$ is fixed by the inverse-operator jump, not by a choice of longitudinal polarization. Both kernels are positive on their respective Euclidean Gaussian sectors.

The complete coordinate covariance, paired with $dz'\,s^\nu(z',k)$, is
$$
\boxed{\begin{aligned}
G_{ij}&=P^T_{ij}g+P^L_{ij}h,\\
G_{zi}&=\frac{ik_i z}{M^2}L_{z'}g,\qquad
G_{iz}=-\frac{ik_i z'}{M^2}L_zg,\\
G_{zz}&=\frac{z^2}{M^2}\delta(z-z')-\frac{k^2zz'}{M^2}g.
\end{aligned}}
\tag{2.7}
$$
There is no omitted overall power of $\ell$ in this coordinate kernel. All such dependence in the bulk inverse is through $M$ and the conversion from $J$ to $s$.

For clarity, the distributional identity underlying the longitudinal entry is
$$
h=\frac{z^2\delta(z-z')-L_zL_{z'}g}{M^2}.
\tag{2.8}
$$
The differentiated kernel $L_zL_{z'}g$ itself contains $z^2\delta(z-z')$; the two contacts in (2.8) cancel, leaving the continuous function (2.6). No such cancellation removes the contact in $G_{zz}$.

### 2.1 Distributional inverse and sourced divergence

In coordinate density variables the block operator is
$$
K_{ij}=(-\partial_z^2+D)P^T_{ij}
 +(-\partial_z^2+M^2/z^2)P^L_{ij},\quad
K_{iz}=K_{zi}=ik_i\partial_z,\quad K_{zz}=D.
\tag{2.9}
$$
One checks $KG=\mathbf1\delta$ using $g''=Dg-\delta$, (2.8), and the jump $[p\partial_z h]_{z=z'-}^{z=z'+}=-1$. The only remaining derivative-contact combination in the off-diagonal block is proportional to
$$
-z'\delta-zz'\partial_z\delta+\partial_z(z^2\delta)=0,
\tag{2.10}
$$
where $(z-z')\partial_z\delta=-\delta$. In particular,
$$
\frac{M^2}{z^2}\left[(\partial_z-2/z)G_{z\lambda}+ik_iG_{i\lambda}\right]
 =(\delta_{z\lambda}\partial_z+\delta_{i\lambda}ik_i)\delta(z-z').
\tag{2.11}
$$
Thus (1.3) holds for nonconserved sources as well. Omitting the first term of $G_{zz}$ would fail both (2.9) and (2.11).

## 3. What exists on a finite Euclidean slice?

For any finite collection of tangential slice sources, Gaussian integration gives
$$
W_{\{z_a\}}[j]=\frac12\sum_{a,b}\int_k j_a^i(-k)
 C_{ij}(z_a,z_b;k)j_b^j(k),\qquad
C_{ij}(z,z';k)=\frac{\ell^{2\alpha}}{(zz')^\alpha}
 (P^T_{ij}g+P^L_{ij}h).
\tag{3.1}
$$
All connected functions of degree greater than two vanish. At equal radius $z$ the unrescaled polarization covariances are
$$
g_z=zI_\nu(x)K_\nu(x),\qquad
h_z=-\frac z{M^2}
 [xI_\nu'(x)-I_\nu(x)/2][xK_\nu'(x)-K_\nu(x)/2],\quad x=kz.
\tag{3.2}
$$
They are continuous under radial pairing and polynomially bounded in momentum. Indeed,
$$
g_z,h_z\longrightarrow\frac z{2\nu}\quad(k\to0),\qquad
g_z\sim\frac1{2k},\quad h_z\sim\frac{kz^2}{2M^2}\quad(kz\to\infty).
\tag{3.3}
$$
These estimates, locally uniform in positive radii, justify the thin-layer limit against arbitrary Schwartz sources. Longitudinal ultraviolet behavior is qualitatively different from the transverse behavior.

The same Euclidean prescription does **not** define an unsubtracted radial slice insertion. For a normalized mollifier of width $\eta$ centered at $z_0$, the radial contact contribution to the variance is
$$
\frac{z_0^2}{M^2\eta}\left(\int dt\,\rho(t)^2\right)
\int d^3x\,j(x)^2+O(1).
\tag{3.4}
$$
The smooth second term in $G_{zz}$ cannot cancel this divergence. Deleting the contact would define a different source functional, not the canonical inverse. This is a statement about the Euclidean insertion prescription; it must not be confused with a prohibition on Lorentzian on-shell radial fields, whose Wightman distributions do not contain this instantaneous source contact.

### 3.1 Tangential data and the radial field

The indicial equation of $H_T$ is $\alpha(\alpha-1)=M^2$, giving the power in (1.5) and $m^2\ell^2=(\Delta-1)(\Delta-2)$. For a smooth source-free solution near the boundary,
$$
A_i=z^\alpha b_i+\cdots,\qquad
A_z=-\frac{ik_i b_i}{\alpha-1}z^{\alpha+1}+\cdots.
\tag{3.5}
$$
The constraint integrates to $A_z=z^2[c-\int_0^zdu\,u^{-2}ik_iA_i(u)]$. The full radial equation $DA_z=-ik_iA_i'$ excludes an independent $cz^2$ term. Thus all radial boundary coefficients at leading order are determined by the tangential boundary data. Values of $A_i$ on **one finite slice**, however, do not determine $A_z$: the radial derivative and, in a source layer, $s^z$ are required. Off-shell radial contact fluctuations are also absent from such a classical reconstruction.

### 3.2 Source functional versus radial actions

Let $a_i$ now denote the unrescaled tangential field value at a fixed slice. Its exact Gaussian marginal has quadratic exponent
$$
\Gamma_z[a]=\frac12\int_k a_i(-k)
 \left(\frac{P^T_{ij}}{g_z}+\frac{P^L_{ij}}{h_z}\right)a_j(k).
\tag{3.6}
$$
This is the Gaussian Legendre transform of the unrescaled insertion $W_z$, not the insertion functional itself. It also equals the sum of the two quadratic on-shell actions obtained by integrating the fast ultraviolet cap and regular infrared region. Explicitly their transverse Dirichlet-to-Neumann sum is
$$
\frac{u'}u-\frac{v'}v=\frac1{g_z};
\quad\text{the longitudinal sum is}\quad
p\left(\frac{(Lu)'}{Lu}-\frac{(Lv)'}{Lv}\right)=\frac1{h_z}.
\tag{3.7}
$$
A single infrared on-shell action omits the ultraviolet term and is not (3.6). These identities derive the relation among the three objects; they do not identify them by terminology. Adding a quadratic term to the dynamical slice marginal changes its covariance. Subtracting a local term from a renormalized *source* functional instead changes its contact prescription; inversion and this subtraction do not commute.

## 4. A uniform Euclidean boundary theorem

In this section fix
$$
\frac12<\nu<1\quad\Longleftrightarrow\quad 0<M^2<\frac34.
\tag{4.1}
$$
Define
$$
c_\nu=\frac{\Gamma(-\nu)}{2^{2\nu+1}\Gamma(\nu+1)},\qquad
r_\nu=\frac{\nu-1/2}{\nu+1/2},\qquad
P_{zz',ij}=\frac{\ell^{2\alpha}}{2\nu\,b_r^{2\nu}}\delta_{ij}.
\tag{4.2}
$$
The contact is independent of the ratio $a_r/b_r$ and combines into $\delta_{ij}$; subtracting a constant times $P^L$ alone would be spatially nonlocal.

**Theorem.** There is a finite $B_\nu$ such that for every $0<z,z'<\infty$ and $k\ge0$,
$$
\left\|C(z,z';k)-P_{zz'}
 -\ell^{2\alpha}c_\nu k^{2\nu}(P^T-r_\nu P^L)\right\|
 \le B_\nu\ell^{2\alpha}b_r^{2-2\nu}k^2.
\tag{4.3}
$$
The matrix norm is the Euclidean operator norm. Consequently arbitrary unequal approaches to zero give a strong $\mathcal S'$ limit, and (3.1), with the corresponding quadratic contacts removed, converges on Schwartz sources to
$$
\boxed{W_\partial[j]=\frac12\int_k j^i(-k)
 \ell^{2\alpha}c_\nu k^{2\nu}(P^T_{ij}-r_\nu P^L_{ij})j^j(k).}
\tag{4.4}
$$

*Proof.* Put $x=ka_r\le y=kb_r$. After division by $\ell^{2\alpha}k^{2\nu}$ the transverse and longitudinal kernels are
$$
f_T=(xy)^{-\nu}I_\nu(x)K_\nu(y),\qquad
f_L=-\frac{(xy)^{-\nu}}{M^2}
 [xI_\nu'-I_\nu/2][yK_\nu'-K_\nu/2].
\tag{4.5}
$$
For $y\le1$, write $I_\nu=x^\nu F(x^2)$ and
$K_\nu=y^{-\nu}A(y^2)+y^\nu B(y^2)$ with analytic functions on this compact interval. The leading analytic product is $y^{-2\nu}/(2\nu)$ in both polarizations, since $\alpha(\alpha-1)=M^2$. The next analytic terms are bounded by a constant times $y^{2-2\nu}$ uniformly in $x/y$. The nonanalytic products have constant terms $c_\nu$ and $-r_\nu c_\nu$, and their remainders are $O(x^2+y^2)$, also bounded by $O(y^{2-2\nu})$.

For $y\ge1$, both the contact and the constant boundary terms are bounded by a constant times $y^{2-2\nu}$. If $x\le1$, the factors $x^{-\nu}I_\nu(x)$ and $x^{-\nu}(xI_\nu'-I_\nu/2)$ are bounded, while the $K$ factors decay exponentially. If $1\le x\le y$, the large-argument bounds for $I,K$ and their derivatives give a factor bounded by $e^{x-y}$; the largest longitudinal prefactor is $x^{1/2-\nu}y^{1/2-\nu}\le1$. Hence the two kernels are bounded as well. Multiplication by $k^{2\nu}$ proves (4.3). Its polynomial right-hand side controls all Schwartz pairings and uniformly controls bounded Schwartz sets. ∎

The constants are not uniform as $M\to0$ or $\nu\to1$. For $\nu\ge1$ additional derivative contacts and, at integer orders, logarithmic subtractions are necessary. The exact kernels remain valid there, but (4.2) alone is not a complete Euclidean prescription. We do not extend theorem (4.3) beyond its stated interval.

### 4.1 Position normalization and a smeared example

Away from coincidence, (4.4) is
$$
\boxed{C_{\partial,ij}(x)=\mathcal C_\Delta
 \frac{\delta_{ij}-2x_i x_j/|x|^2}{|x|^{2\Delta}},\qquad
\mathcal C_\Delta=\ell^{2\alpha}
 \frac{\Delta\Gamma(\Delta)}{2\pi^{3/2}(\Delta-1)\Gamma(\Delta-1/2)}.}
\tag{4.6}
$$
The distribution at coincidence is fixed by (4.4). One way to verify the normalization is to Fourier transform $|x|^{-2\Delta}$ by analytic continuation: its coefficient is $\pi^{3/2}2^{-2\nu}\Gamma(-\nu)/\Gamma(\Delta)$. The vector inversion tensor multiplies this by $(\Delta-1)/\Delta$ and changes the longitudinal/transverse ratio to $(2-\Delta)/(\Delta-1)=-r_\nu$. This recovers exactly $c_\nu$.

For the genuine massive example $M^2=5/16$, one has $\nu=3/4$, $\Delta=9/4$ and $r_\nu=1/5$. Formula (3.2) gives its full finite-radius correlator, while (4.6) has coefficient $9\ell^{5/2}\Gamma(9/4)/(10\pi^{3/2}\Gamma(7/4))$. For the real source $j_i(x)=e_i j_0e^{-|x|^2/(2L^2)}$, $e_i e_i=1$, angular integration gives the complete renormalized functional
$$
W_\partial[j]=\frac{\pi\Delta\Gamma(\Delta)}{3(\Delta-1)}
 \ell^{2\alpha}c_\nu j_0^2L^{3-2\nu}.
\tag{4.7}
$$
This finite part is negative in the chosen interval. It is not an ordinary positive Euclidean random-field covariance; the bulk Gaussian before source subtraction is positive. The appropriate positive-energy statement follows next.

## 5. Positive-energy limit and free-field operators

Continue to $g_L=\ell^2z^{-2}(dz^2-dt^2+d\mathbf x^2)$, selecting the Poincaré positive-energy vacuum inherited from the Euclidean regular endpoint. Use
$$
W(t,\mathbf x)=\int\frac{d\omega\,d^2p}{(2\pi)^3}
 e^{-i\omega t+i\mathbf p\cdot\mathbf x}\widetilde W(\omega,\mathbf p).
\tag{5.1}
$$
Under $t=-i\tau$, continue the one-form components as $A_\tau^E=-iA_t^L$; the time component is not treated as a scalar. Tangential Lorentzian indices are $\mu,\lambda=0,1,2$, $\eta=\operatorname{diag}(-,+,+)$, and $p_\mu=(-\omega,\mathbf p)$. For $s=\omega^2-|\mathbf p|^2>0$, $q=\sqrt s$, define
$$
\theta_+=\theta(\omega)\theta(s),\quad
\Pi^T_{\mu\lambda}=\eta_{\mu\lambda}+\frac{p_\mu p_\lambda}{s},\quad
\Pi^S_{\mu\lambda}=\frac{p_\mu p_\lambda}{s},\quad
\mathscr D J_\nu(x)=xJ_\nu'(x)-\tfrac12J_\nu(x).
\tag{5.2}
$$
The superscript $T$ now means orthogonality to the timelike boundary momentum. Both $\Pi^T$ and $\Pi^S$ are positive semidefinite matrices on covector source pairings; in the rest frame they are $\operatorname{diag}(0,1,1)$ and $\operatorname{diag}(1,0,0)$.

The exact tangential slice Wightman kernel is
$$
\boxed{\widetilde W_{zz',\mu\lambda}
 =\pi\ell^{2\alpha}(zz')^{-\nu}\theta_+
 \left[J_\nu(qz)J_\nu(qz')\Pi^T_{\mu\lambda}
 +\frac{\mathscr D J_\nu(qz)\mathscr D J_\nu(qz')}{M^2}
 \Pi^S_{\mu\lambda}\right].}
\tag{5.3}
$$
The resolvent identity $\int_0^\infty dq\,qJ_\nu(qz)J_\nu(qz')/(q^2+k_E^2)=I_\nu K_\nu$ fixes the factor $\pi$. The negative sign in $h$ is canceled by the continuation $P^L\mapsto-\Pi^S$. Euclidean source contacts have no spectral discontinuity. There is no additional massless pole from the projectors: $g=h$ at $k_E=0$ cancels its residue. For $1/2<\nu<1$, $(h-g)/k_E^2$ generally has the branch behavior $(k_E^2)^{\nu-1}$, not an analytic Taylor expansion. Its continuum density is locally integrable and is already included in (5.3).

For every fixed $\nu>1/2$, arbitrary unequal radii give the strong tempered-distribution limit
$$
\boxed{\widetilde W_{\partial,\mu\lambda}
 =\kappa_\nu\ell^{2\alpha}s^\nu\theta_+
 (\Pi^T_{\mu\lambda}+r_\nu\Pi^S_{\mu\lambda}),\qquad
\kappa_\nu=\frac{\pi}{2^{2\nu}\Gamma(\nu+1)^2}>0.}
\tag{5.4}
$$
For noninteger $\nu$ this agrees with $-2c_\nu\sin(\pi\nu)=\kappa_\nu$; (5.3) also establishes the integer-order result without taking a divergent Euclidean contact coefficient literally.

Here is a uniform domination proof, including the light cone. The Poisson representation implies, for $x\ge0$,
$$
|J_\nu(x)|\le a_\nu x^\nu,\qquad
|\mathscr D J_\nu(x)|\le a_\nu x^\nu
 \left(\nu-\tfrac12+\frac{x^2}{2\nu+2}\right),\qquad
 a_\nu=\frac1{2^\nu\Gamma(\nu+1)}.
\tag{5.5}
$$
The second bound uses $\mathscr D J_\nu=(\nu-1/2)J_\nu-xJ_{\nu+1}$. For bounded positive radii these estimates give polynomial growth at large momentum after multiplication by Schwartz tests. Near the light cone the worst tensor factor is $p_\mu p_\lambda s^{\nu-1}$, locally integrable for $\nu>0$; at the cone vertex its joint homogeneity is also integrable. Small-argument Bessel limits and dominated convergence then prove (5.4), uniformly on bounded Schwartz sets. The radius-indexed matrices in (5.3) are positive: each polarization is an outer product of its radial mode amplitudes.

This is a **free Proca theory**, so its Gaussian/Wick construction is the actual theory rather than an auxiliary replacement for interacting higher correlators. Choose transverse polarizations $\varepsilon^{(a)}$, $a=1,2$, with $\sum_a\varepsilon^{(a)}_\mu\varepsilon^{(a)}_\lambda=\Pi^T_{\mu\lambda}$. Its tangential one-particle map can be chosen as
$$
h_z(f;p)=\sqrt\pi\,\ell^\alpha z^{-\nu}
 \left(J_\nu(qz)\varepsilon^{(1)}\!\cdot\widehat f,
 J_\nu(qz)\varepsilon^{(2)}\!\cdot\widehat f,
 \frac{\mathscr D J_\nu(qz)}M\frac{p\cdot\widehat f}{q}\right)
\tag{5.6}
$$
on the positive timelike cone with measure $d\omega\,d^2p/(2\pi)^3$. Its limit $h_0$ replaces $z^{-\nu}J_\nu(qz)$ by $a_\nu q^\nu$ and $z^{-\nu}\mathscr D J_\nu(qz)/M$ by $a_\nu q^\nu(\nu-1/2)/M$. Equation (5.5) proves $\|h_z(f)-h_0(f)\|\to0$. For real $f$, the creation/annihilation estimate is
$$
\|[\mathcal O_z(f)-\mathcal O_\partial(f)]\Psi\|
 \le 2\|h_z(f)-h_0(f)\|\,\|(N+1)^{1/2}\Psi\|,
\tag{5.7}
$$
where $N$ is the Fock particle-number operator. Thus the fields converge on the common domain $D((N+1)^{1/2})$ at fixed mass. Real tests define Hermitian fields, followed by complex linear extension. Wick's theorem also gives all vacuum $n$-point limits with independently smeared insertions. This is not convergence in bounded-operator norm, nor a claim about unsmeared products at coincident points.

## 6. Why the massless limit is not simply Maxwell

### 6.1 Boundary-first current and a surviving scalar

Taking the already renormalized Euclidean boundary kernel to $M\downarrow0$ gives
$$
C^E_{\partial,ij}\longrightarrow-\ell^2 kP^T_{ij},\qquad
C_{\partial,ij}(x)\longrightarrow\frac{2\ell^2}{\pi^2}
 \frac{\delta_{ij}-2x_i x_j/|x|^2}{|x|^4}.
\tag{6.1}
$$
Its Wightman continuation is $2\ell^2\sqrt s\,\theta_+\Pi^T$ and obeys the conserved-current Ward identity. However, for $m>0$ define the normalized descendant
$$
\chi_m=\frac1{3m}\partial^i\mathcal O_i.
\tag{6.2}
$$
At separated Euclidean points,
$$
\langle(\partial\cdot\mathcal O)(x)(\partial\cdot\mathcal O)(0)\rangle
 =2(\Delta-2)(2\Delta-1)\mathcal C_\Delta|x|^{-2\Delta-2}.
\tag{6.3}
$$
Using $m^2\ell^2=(\Delta-1)(\Delta-2)$ gives
$$
\langle\chi_m(x)\chi_m(0)\rangle
 \longrightarrow\frac{4\ell^4}{3\pi^2|x|^6},\qquad
\langle\mathcal O_i\chi_m\rangle\longrightarrow0.
\tag{6.4}
$$
The normalization is precisely that of $\lim_{z\to0}(\ell/z)^3\pi$ for a canonical fast massless scalar $\pi$ in AdS₄. The same limit holds for the positive-energy distributions: its density is $(2\ell^4/9)s^{3/2}\theta_+$, and the mixed density vanishes. Light-cone integrability supplies domination near $\nu=1/2$. Thus in the Gaussian boundary theory the limiting current and scalar decouple; the scalar is lost only if one discards the normalized descendant before the mass limit.

### 6.2 Finite-radius singularity and the order of limits

At fixed positive radii the raw longitudinal kernel instead satisfies
$$
\lim_{M\downarrow0}M^2h(z,z';k)
 =k^2(zz')^{3/2}I_{3/2}(ka_r)K_{3/2}(kb_r).
\tag{6.5}
$$
This follows from $\mathscr D I_{1/2}=xI_{3/2}$ and $\mathscr D K_{1/2}=-xK_{3/2}$. The right-hand side is $\ell^2k^2G_\pi$, with
$G_\pi=\ell^{-2}(zz')^{3/2}I_{3/2}K_{3/2}$ the canonical massless scalar inverse. It is a nonlocal divergence for nonconserved slice sources, not a removable finite polynomial contact. In Stückelberg variables $A=B+m^{-1}d\pi$, the limiting action contains Maxwell **and** this scalar.

Nonuniformity is already visible in the local small-radius expansion. For the unrescaled equal-slice kernels,
$$
g_{z,\mathrm{an}}=z\left[\frac1{2\nu}+a_1(kz)^2+\cdots\right],\quad
h_{z,\mathrm{an}}=z\left[\frac1{2\nu}+b_1(kz)^2+\cdots\right],
\tag{6.6}
$$
$$
a_1=\frac1{4\nu(1-\nu^2)},\qquad
b_1=\frac{3/4-\nu^2}{4\nu(1-\nu^2)M^2},\qquad
M^2b_1\longrightarrow\frac13.
\tag{6.7}
$$
The remainder after the sole subtraction (4.2) includes
$\ell^{2\alpha}b_1k^2z^{2-2\nu}$. It vanishes at fixed positive mass, but not uniformly as $m\to0$. This explains why a mass-first limit of an arbitrary finite-radius insertion is not justified by the boundary theorem.

For conserved tangential slice sources, $k_i j_i=0$, the longitudinal sector vanishes identically. The transverse kernel has the regular Maxwell limit
$$
g\longrightarrow\frac{e^{-k|z-z'|}-e^{-k(z+z')}}{2k}.
\tag{6.8}
$$
Equivalently, the nonlocal tangential projection $P^TA_i$ is invariant under bulk gauge transformations $A_i\mapsto A_i+\partial_i\Lambda$. This constructs the conserved-source Maxwell sector without asserting that the unprojected $A_i$ is a gauge-invariant slice operator. The treatment does not yet classify Maxwell boundary conditions, edge data, or AdS₃ logarithmic modes.

## 7. Scope and verification

The exact inverse, the sourced constraint, the finite tangential insertion functional and the positive-energy free-field limit hold for every $m^2>0$ in AdS₄ with the specified fast/Poincaré vacuum. The uniform Euclidean subtraction theorem is proved only for $0<m^2\ell^2<3/4$. General dimensions, a complete higher-mass Euclidean contact classification, Maxwell edge structure and interacting vectors are separate questions.

[Verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/proca_checks.wl>) and its [recorded output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/proca_checks_results.txt>) test the longitudinal differential equation, Wronskian, Fourier normalization, spectral coefficient, massless scalar residue and descendant normalization, together with all-ratio numerical samples and Bessel domination tests. Sixteen labelled groups contain eighteen zero scalar residuals; all twenty-four Bessel tests pass, and no Wolfram messages occur. Two independent derivations and manuscript reviews checked the constrained inverse, the uniform theorem, the positive-energy normalization and the operator/mass-limit qualifications. Numerical samples support, but do not replace, the analytic uniform estimates. The source-contact and operator-domain distinctions above are essential parts of the result, not optional choices of notation.
