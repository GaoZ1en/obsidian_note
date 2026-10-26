# BF-bound extrapolation and the protected IIB 20′ three-point function

## 1. Result and physical regime

The finite-radial insertion construction extends to the logarithmic BF endpoint in AdS₅. With a canonical bulk scalar and the source-free logarithmic coefficient set to zero,

$$
O_z^I=(z/\ell)^{-2}\phi^I(z),\qquad
\langle O_z^I O_w^J\rangle_k
=\delta^{IJ}\ell I_0(kz_<)K_0(kz_>).
\tag{1.1}
$$

Its Euclidean boundary limit requires a local quadratic subtraction. Its Lorentzian free-field limit exists on the common finite-particle domain without that subtraction. A canonical cubic interaction has the genuine, unsubtracted three-point boundary limit

$$
\langle O^I(x_1)O^J(x_2)O^K(x_3)\rangle_{c,\mathrm{tree}}
=-\frac{\lambda_{IJK}\ell^2}{16\pi^4}
\frac1{x_{12}^2x_{23}^2x_{31}^2}.
\tag{1.2}
$$

The convergence is proved below for arbitrary overlapping Schwartz sources, not just separated insertion points.

For the actual IIB reduction, in the matrix convention $T=e^t$ and $\operatorname{Tr}_6(Y^IY^J)=\delta^{IJ}$,

$$
\phi^I=\frac{t^I}{2\kappa_5},\qquad
\lambda_{IJK}=\frac{8\kappa_5}{\ell^2}d_{IJK},\qquad
d_{IJK}=\operatorname{Tr}_6(Y^IY^JY^K),\qquad
\kappa_5^2=\frac{4\pi^2\ell^3}{N^2}.
\tag{1.3}
$$

Thus $\widehat O=\sqrt{2\pi^2/\ell}\,O$ has unit two-point coefficient and three-point coefficient $-2\sqrt2\,d_{IJK}/N$. An independent Coulomb-quadrupole calculation fixes $\widehat O\simeq-\widehat Q$, where the unit-normalized $SU(N)$ SYM operator has three-point coefficient $+2\sqrt2\,d_{IJK}/\sqrt{N^2-1}$. The two answers agree at leading large $N$, including their relative orientation.

This comparison uses the AdS-invariant vacuum, flat noncompact boundary, and the controlled window

$$
N\gg1,\qquad 1\ll\lambda_{\mathrm{tH}}=g_{\mathrm{YM}}^2N\ll N.
$$

Protected separated-point two- and three-point data may be transported from weakly coupled SYM to this window. Generic four-point data may not. The calculation establishes the scalar three-point tree coefficient of the full supergravity theory; it does not define a standalone nonperturbative real cubic measure or a nonlinear scalar-only truncation.

## 2. Direct construction at the BF bound

### 2.1 Action, boundary domain and insertion source

We retain the conventions of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>):

$$
g_E=\frac{\ell^2}{z^2}(dz^2+dx^i dx^i),\quad
\Omega=z/\ell,\quad \epsilon=\Omega^{-5}dz\,d^4x,\quad
\int_k=\int\frac{d^4k}{(2\pi)^4},\quad e^{ik\cdot x}.
$$

For each species,

$$
S_0=\frac12\int\epsilon\left[(\nabla\phi)^2-\frac4{\ell^2}\phi^2\right],\qquad
S[J]=S_0-\int\epsilon J\phi,\qquad
E\phi=-J,\quad E=\nabla^2+4/\ell^2.
\tag{2.1}
$$

Write

$$
\phi=\Omega^2F,\qquad
F=a(x)\log(z/\ell)+b(x)+O(z^2\log z).
\tag{2.2}
$$

The vacuum domain is $a=0$, with regularity in the Poincaré interior. This is the nonnegative Friedrichs realization of $-z^{-1}\partial_z(z\partial_z)$ in $L^2(z\,dz)$. It includes a boundary completion of the bare action: on a region whose far-end boundary contribution vanishes,

$$
S_0+\frac1\ell\int_{z=\varepsilon}\sqrt h\,\phi^2
=\frac1{2\ell}\int_\varepsilon^\infty dz\,d^4x\,
 z\big[(\partial_zF)^2+(\partial_iF)^2\big].
\tag{2.3}
$$

Without this leading boundary term, the raw action has the nonvanishing boundary variation $-2b\,\delta b/\ell$ even at $a=0$; the desired domain must not be inferred from the bare improper integral alone.

Use a radial mollifier before forming a sheet insertion:

$$
J_{z,\eta}(u,x)=\Omega_u^3\rho_\eta(u-z)j(x),\qquad
\int\epsilon J_{z,\eta}\phi
=\int du\,d^4x\,\rho_\eta(u-z)j(x)O_u(x).
\tag{2.4}
$$

The thin-layer limit $\eta\to0$ is taken at fixed $z>0$, followed by $z\to0$. Source pairings are bilinear, also for complex sources; $j(-k)j(k)$ is not replaced by a Hermitian pairing unless the source is real.

### 2.2 Green function and logarithmic contact

The radial solutions are $\Omega^2I_0(kz)$ and $\Omega^2K_0(kz)$, with weighted Wronskian $-1/\ell$. Consequently the inverse normalized by $E G=-\delta_g$ is

$$
G_k(z,w)=\ell^{-3}(zw)^2 I_0(kz_<)K_0(kz_>).
\tag{2.5}
$$

For $r=|x-y|$, the insertion covariance is also explicit:

$$
H(z,w;r)=\frac{\ell(r^2+z^2+w^2)}
 {2\pi^2[(r^2+(z-w)^2)(r^2+(z+w)^2)]^{3/2}}.
\tag{2.6}
$$

It follows, for example, from the invariant bulk Green function

$$
G(\zeta)=\frac{\zeta}{8\pi^2\ell^3(\zeta^2-1)^{3/2}},\qquad
\zeta=\frac{r^2+z^2+w^2}{2zw}.
$$

This solves $(\zeta^2-1)G''+5\zeta G'+4G=0$ and has the canonical five-dimensional short-distance coefficient $1/(8\pi^2\rho^3)$. At fixed positive radius the thin-layer covariance is a well-defined tempered distribution; the logarithmic divergence arises only in the boundary limit.

Set

$$
c(k)=\log(k\ell/2)+\gamma_E.
$$

Then

$$
H_k(z,w)+\ell\log(z_>/\ell)\longrightarrow-\ell c(k),\qquad
H_\partial(r)=\frac{\ell}{2\pi^2r^4}\quad(r\ne0).
\tag{2.7}
$$

The larger radius is essential. Replacing $z_>$ by the geometric mean leaves a radius-ratio-dependent contact term, which need not converge along arbitrary paths.

Here is a uniform distributional argument. For $0\le x\le y\le1$, the Bessel expansions give

$$
\left|I_0(x)K_0(y)+\log(y/2)+\gamma_E\right|
\le C y^2(1+|\log y|).
$$

For $y\ge1$, monotonicity gives $I_0(x)K_0(y)\le I_0(y)K_0(y)\le C$, and the remainder is bounded by $C(1+\log y)$. Hence, for every fixed $0<\beta<2$,

$$
\left|I_0(x)K_0(y)+\log(y/2)+\gamma_E\right|\le C_\beta y^\beta
\quad(0\le x\le y).
\tag{2.8}
$$

With $x=kz_<$ and $y=kz_>$ this proves strong $\mathcal S'$ convergence, uniformly in the radius ratio. In particular,

$$
W_z^{(2),\mathrm{ren}}[j]
=\frac12\int_k j^I(-k)\ell I_0(kz)K_0(kz)j^I(k)
 +\frac\ell2\log(z/\ell)\int d^4x\,j^Ij^I
\longrightarrow-\frac\ell2\int_k j^I(-k)c(k)j^I(k).
\tag{2.9}
$$

The displayed addition is a counterterm in $W=\log Z$; its sign is reversed if implemented as an added action term. A change of reference scale changes only a quadratic local source contact. The singularity at $k=0$ is locally integrable in four momentum dimensions and is interpreted distributionally. Compact-boundary zero modes are not included here.

### 2.3 Source/response map and the distinction from a wall action

For $L=\log(\varepsilon/\ell)$ the BF boundary terms are

$$
S_{\rm ct}=\frac1{2\ell}\int_{z=\varepsilon}\sqrt h\left(2+\frac1L\right)\phi^2.
\tag{2.10}
$$

Indeed the radial boundary variation of the bulk action plus (2.10), evaluated on $F=aL+b$, is

$$
\frac1\ell(F/L-a)\,\delta F
=\frac b\ell\delta a+\frac b{\ell L}\delta b
\longrightarrow\frac b\ell\delta a.
\tag{2.11}
$$

The regular solution is $\phi=-a\Omega^2K_0(kz)$, so $b=c(k)a$ and

$$
S_{\rm ren}[a]=\frac1{2\ell}\int_k a(-k)c(k)a(k).
\tag{2.12}
$$

Now derive, rather than postulate, its relation to the insertion functional. Taking the boundary limit of the external Green line gives

$$
\langle\phi(u,k)\rangle_j=\frac{u^2}{\ell}K_0(ku)j(k).
$$

Comparing logarithmic coefficients yields

$$
\boxed{a=-\ell j,\qquad \langle O\rangle_j=b,\qquad
W_\partial^{(2),\rm ren}[j]=-S_{\rm ren}[-\ell j].}
\tag{2.13}
$$

For every finite shell the region inside the shell still obeys $a=0$. The nonzero $a$ in (2.13) arises by sending the shell to the boundary at fixed bulk observation point. These two limiting procedures do not commute.

A finite wall is a different variational problem. For the rescaled wall datum $F(\varepsilon)=q$, use the weighted action in (2.3). The regular IR solution and the log-free UV cap have Dirichlet-to-Neumann multipliers

$$
D_{\rm IR}=\frac{xK_1(x)}{\ell K_0(x)},\qquad
D_{\rm UV}=\frac{xI_1(x)}{\ell I_0(x)},\qquad x=k\varepsilon.
$$

The Bessel Wronskian gives

$$
D_{\rm IR}+D_{\rm UV}
=\frac1{\ell I_0(x)K_0(x)}=H_k(\varepsilon,\varepsilon)^{-1}.
\tag{2.14}
$$

Thus the slice covariance inverts the two-sided quadratic action, not the IR action alone. Adding the BF logarithmic term to that IR wall action further shifts $D_{\rm IR}$ by $1/(\ell L)$. This does not turn it into the finite-radial insertion functional.

Within momentum-independent real separated radial boundary domains, a finite condition $b=fa$ admits a negative mode $K_0(\kappa z)$ with

$$
\kappa=2e^{f-\gamma_E}/\ell.
$$

This follows directly from its small-$z$ logarithm and radial eigenvalue $-\kappa^2$. Merely exchanging $a$ and $b$ therefore does not produce a second stable conformal vacuum at this endpoint.

## 3. Lorentzian free operator and its CFT representation

Use $\eta=(-,+,+,+)$, Fourier phase $e^{-i\omega t+i\mathbf p\cdot\mathbf x}$, $s=\omega^2-\mathbf p^2$, and $\theta_+=\theta(\omega)\theta(s)$. The Hankel resolvent representation of (2.5) gives

$$
\widetilde W_{zw}(\omega,\mathbf p)
=\pi\ell\theta_+J_0(z\sqrt s)J_0(w\sqrt s),\qquad
W_\partial(x)=\frac{\ell}{2\pi^2[\mathbf x^2-(t-i0)^2]^2}.
\tag{3.1}
$$

The spectral density is positive. With $\pi_\phi=(\ell/z)^3\partial_t\phi$, the Hankel completeness identity $\int_0^\infty dq\,qJ_0(qz)J_0(qw)=\delta(z-w)/z$ gives the canonical equal-time commutator $[\phi(z,\mathbf x),\pi_\phi(w,\mathbf y)]=i\delta(z-w)\delta^3(\mathbf x-\mathbf y)$. Thus this spectral realization is the canonical free bulk field, not an auxiliary field with only a fitted two-point function. For real spacetime Schwartz $f$, define the boundary one-particle norm by

$$
\|f\|_\partial^2=\pi\ell\int\frac{d\omega\,d^3p}{(2\pi)^4}\theta_+|\widehat f(\omega,\mathbf p)|^2.
$$

The angular integral for $J_0$ proves $|J_0(x)|\le1$ and $|1-J_0(x)|\le x^2/4$. Thus the creation/annihilation realization obeys, for a vector with at most $n$ particles,

$$
\|[O_z(f)-O_\partial(f)]\Psi\|
\le(\sqrt n+\sqrt{n+1})\frac{z^2}{4}\|\square f\|_\partial\|\Psi\|.
\tag{3.2}
$$

This is common-domain convergence of the actual free scalar field, not operator-norm convergence. Spacetime smearing is essential. There is no Lorentzian logarithmic subtraction. The Euclidean subtracted multiplier $-\ell c(k)$ need not be a positive ordinary Gaussian covariance; its reflection positivity follows from the positive spectral representation, with local contacts absent between reflected disjoint time supports.

In the large-$N$ generalized-free sector this gives the concrete CFT representation

$$
\widehat O_z(p)=-J_0(z\sqrt s)\widehat Q(p)
\quad\text{on the free timelike spectral support},
\tag{3.3}
$$

with the orientation derived in §6. At this order it is a nonlocal smearing of the boundary primary, not a new local CFT primary at each radius. Formula (3.3) is not an interacting reconstruction: the nonlinear bulk equation requires multi-trace corrections. Its Euclidean $I_0$ continuation grows exponentially at large spacelike momentum and cannot be used as a multiplier on arbitrary Schwartz sources.

## 4. The finite-radial cubic functional

### 4.1 External kernel and diagram

Take the formal tree interaction

$$
S_{\rm int}=\frac1{3!}\lambda_{IJK}\int\epsilon\,\phi^I\phi^J\phi^K,
\tag{4.1}
$$

with a real symmetric coupling. The external line is determined by the bulk covariance, not by imposing a new boundary source:

$$
\widehat E_z(u,k)=\langle\phi(u,k)O_z(-k)\rangle
=\frac{u^2}{\ell}I_0(k\min(u,z))K_0(k\max(u,z)),
\tag{4.2}
$$

$$
E_z(u,r)=\frac{u^2}{2\pi^2\ell}
\frac{r^2+u^2+z^2}{[(r^2+(u-z)^2)(r^2+(u+z)^2)]^{3/2}},\qquad
E_0(u,r)=\frac{u^2}{2\pi^2\ell(u^2+r^2)^2}.
\tag{4.3}
$$

The thin-layer limit exists after smearing. Pointwise coincident bulk insertions need not be finite. Removing the total-momentum delta function, the tree three-point kernel at independent radii is

$$
\mathcal T_{IJK}(z_1,z_2,z_3;k_a)
=-\lambda_{IJK}\ell^2\int_0^\infty du\,u
 \prod_{a=1}^3 I_0(k_a\min(u,z_a))K_0(k_a\max(u,z_a)),
\tag{4.4}
$$

where $k_a=|\mathbf k_a|$ are Euclidean magnitudes and $\sum_a\mathbf k_a=0$. Exceptional exact zero momenta are not asserted to be finite point values of this distribution.

Let $\Phi_z[j](u,y)=(E_z(u,\cdot)*j)(y)$. Then

$$
W_{z,\rm tree}^{(3)}[j]=-
\frac{\lambda_{IJK}}{3!}\int_0^\infty\frac{\ell^5du}{u^5}\int d^4y\,
\Phi_z[j^I]\Phi_z[j^J]\Phi_z[j^K].
\tag{4.5}
$$

### 4.2 Boundary convergence with overlapping sources

The following estimates use units $\ell=1$ and any fixed reference length for the split at $u=1$; restoring units does not change convergence. Write $B_z(u,k)=I_0(k\min(u,z))K_0(k\max(u,z))$.

For $0<u\le1$, uniformly in $z>0$,

$$
|B_z(u,k)|\le C[1+\log_+(1/(ku))].
$$

If $k\max(u,z)\le1$, this is the small-argument $K_0$ bound; otherwise use $I_0(a)K_0(b)\le I_0(b)K_0(b)\le C$ for $a\le b$, $b\ge1$. Hausdorff–Young and the local integrability of $\log_+(1/k)$ imply

$$
\|\Phi_z[j](u)\|_{L^3(\mathbb R^4)}
\le C_j u^2(1+|\log u|),\qquad 0<u\le1.
\tag{4.6}
$$

For $u\ge1$ and $z\le1/2$,

$$
I_0(kz)K_0(ku)\le C K_0(ku/2).
$$

Indeed $I_0(t/2)K_0(t)/K_0(t/2)$ tends to one as $t\to0$ and is $O(t^{-1/2})$ at infinity. Using $\|K_0(u|k|/2)\|_{3/2}=u^{-8/3}\|K_0(|k|/2)\|_{3/2}$ gives

$$
\|\Phi_z[j](u)\|_3\le C_j u^{-2/3},\qquad u\ge1.
\tag{4.7}
$$

Hölder therefore bounds the absolute cubic radial integrand by

$$
C_{j_1,j_2,j_3}
\begin{cases}
u(1+|\log u|)^3,&u\le1,\\
u^{-7},&u\ge1.
\end{cases}
\tag{4.8}
$$

Both terms are integrable, uniformly in all three external radii. At fixed $u>0$, Fourier dominated convergence in $L^{3/2}$ gives $\Phi_z[j](u)\to\Phi_0[j](u)$ in $L^3$. Another dominated-convergence step proves the joint boundary limit of (4.5). Taking a common Fourier envelope for each bounded Schwartz set proves uniform convergence on such sets.

Thus the continuous trilinear source functional converges for arbitrary overlapping Schwartz sources and arbitrary paths $z_a\to0$. No cubic source counterterm is required at this order. The quadratic term (2.9) is still necessary for the full generating functional.

### 4.3 Integrated boundary answer

The limiting bulk integral is

$$
-\frac{\lambda_{IJK}\ell^2}{8\pi^6}
\int_0^\infty du\,u\int d^4y
\prod_{a=1}^3\frac1{(u^2+|y-x_a|^2)^2}.
$$

Conformal covariance fixes its position dependence. Sending the third insertion to infinity reduces its normalization to

$$
\int_0^\infty du\,u\int\frac{d^4y}
 {(u^2+y^2)^2(u^2+(y-x)^2)^2}
=\pi^2\int_0^1dt\,t(1-t)\int_0^\infty\frac{u\,du}{[u^2+t(1-t)x^2]^2}
=\frac{\pi^2}{2x^2}.
\tag{4.9}
$$

This proves (1.2). The resulting kernel is locally integrable at pair and triple collisions and absolutely integrable against products of Schwartz sources. It specifies the actual distribution furnished by the limiting diagram, not only its separated-point coefficient.

The renormalized boundary functional through these tree source orders is consequently

$$
W_{\partial,\rm tree}^{\rm ren}[j]
=-\frac\ell2\int_k j^I(-k)c(k)j^I(k)
-\frac{\lambda_{IJK}\ell^2}{3!\,16\pi^4}
\int\frac{\prod_{a=1}^3d^4x_a\,j^I(x_1)j^J(x_2)j^K(x_3)}
 {x_{12}^2x_{23}^2x_{31}^2}
+\text{higher source orders}.
\tag{4.10}
$$

At cubic order the on-shell comparison can now also be checked: the linear regular solution with $a=-\ell j$ is exactly $\Phi_0[j]$. Its cubic action is $+\lambda\int\Phi_0^3/3!$, so $W=-S_{\rm ren}$ reproduces (4.10). No extra cubic boundary divergence changes the logarithmic source map. This boundary identity was obtained from the insertion diagrams; it does not identify the finite-radius functional with a single-sided wall action.

A nonzero real homogeneous cubic polynomial has both signs. Scaling a compactly supported field in a direction with $\lambda(v,v,v)\ne0$ makes one sign of the cubic action arbitrarily negative. Hence a standalone real cubic Euclidean measure is not normalizable. Equations (4.4)–(4.10) concern formal tree perturbation; loops require a separate UV prescription, and no interacting Wightman positivity theorem follows from this calculation.

## 5. The actual IIB coupling and independent SYM calculation

### 5.1 Five-dimensional normalization

The relevant part of the two-derivative Lorentzian reduction is

$$
S_L=\frac1{2\kappa_5^2}\int\sqrt{-g}\left[
R-\frac14\operatorname{Tr}(T^{-1}DT)^2-V+\text{vector terms}\right],
$$

$$
V=\frac{g^2}{2}\left[2\operatorname{Tr}T^2-(\operatorname{Tr}T)^2\right],
\qquad T=e^t,\quad t=t^IY^I,\quad \operatorname{Tr}t=0.
\tag{5.1}
$$

Here $Y^I$ are real symmetric traceless $6\times6$ matrices, orthonormal in the matrix trace. The potential and kinetic expansion give

$$
V=-12g^2-g^2\operatorname{Tr}t^2+\frac{g^2}{3}\operatorname{Tr}t^3+O(t^4),
\qquad
\operatorname{Tr}(dt[dt,t])=0.
\tag{5.2}
$$

There is no pure-scalar cubic derivative vertex in these logarithmic matrix coordinates. With $g=1/\ell$ and $\phi=t/(2\kappa_5)$, the Euclidean scalar action is canonical, $m^2\ell^2=-4$, and (1.3) follows. The triple trace is fully symmetric: cyclicity and transpose invariance generate all its permutations. Symmetrization, when written, has weight $1/3!$.

The flux/Newton relations are

$$
G_5=\frac{\pi\ell^3}{2N^2},\quad \kappa_5^2=8\pi G_5,\quad
\ell^4=4\pi g_sN\alpha'^2,\quad g_{\rm YM}^2=4\pi g_s.
\tag{5.3}
$$

They are classical large-$N$ bulk relations. Replacing $N^2$ by $N^2-1$ in this action by hand is not justified.

Arbitrary $20'$ scalar configurations do **not** form a scalar-only consistent truncation. The scalar kinetic term contains an $A\,t\,dt$ vertex, and the vector equation is sourced by $[t,dt]$ at quadratic order. Gravitons are also sourced quadratically. Neither exchange contributes to the pure-scalar three-point tree, but both matter from four scalars onwards. Diagonal mutually commuting scalar configurations are a special case, not a proof for arbitrary $20'$ sources.

For finite-radius interacting components we use the specified field coordinate $t=\log T$, an asymptotically FG coordinate system, and an internal radial gauge $A_z=0$ with boundary frame fixed. Linear scalar fluctuations around $T=1$ are invariant under linearized gauge redundancies. A complete nonlinear boundary-anchored gravitational/internal-gauge dressing is not constructed here. These choices and this limitation are part of the meaning of the finite-radius tree calculation.

### 5.2 SYM Wick contractions

Take $SU(N)$, fundamental color trace $\operatorname{Tr}_{c}(T^aT^b)=\delta^{ab}/2$, and canonically normalized real components with free covariance

$$
\langle\Phi_i^a(x)\Phi_j^b(0)\rangle
=\frac{\delta_{ij}\delta^{ab}}{4\pi^2x^2}.
$$

Define

$$
Q^I=Y^I_{ij}:\operatorname{Tr}_{c}(\Phi_i\Phi_j):
=\frac12Y^I_{ij}:\Phi_i^a\Phi_j^a:,
\qquad D=N^2-1.
\tag{5.4}
$$

The two cross-pairings in the two-point function give

$$
\langle Q^I(x_1)Q^J(x_2)\rangle
=\frac{D\delta^{IJ}}{32\pi^4x_{12}^4}.
\tag{5.5}
$$

The eight connected triangle pairings give

$$
\langle Q^I(x_1)Q^J(x_2)Q^K(x_3)\rangle_c
=\frac{D\,d_{IJK}}{64\pi^6x_{12}^2x_{23}^2x_{31}^2}.
\tag{5.6}
$$

Therefore

$$
\widehat Q^I=4\pi^2\sqrt{\frac2D}\,Q^I,\qquad
C_{\widehat Q\widehat Q\widehat Q}=\frac{2\sqrt2}{\sqrt{N^2-1}}d_{IJK}.
\tag{5.7}
$$

These Wick factors were computed independently of the bulk vertex. The protected half-BPS separated-point two- and three-point functions retain these values under covariant transport of the normalized operator basis on the conformal manifold. This is a protection statement for these observables, not for arbitrary correlators. At dimension two in $SU(N)$ there is no competing double trace built from $\operatorname{Tr}\Phi_i$, because this trace vanishes. A $U(N)$ theory contains an additional free abelian sector and must not be silently substituted at finite $N$.

## 6. Relative orientation from the Coulomb branch

A two-point comparison cannot fix an operator's overall sign. Here it is fixed by the geometric matrix convention in (5.1), rather than adjusted after the three-point calculation.

For a small source-free Coulomb perturbation let

$$
r=\ell^2/z,\qquad t=L/r^2,\qquad \operatorname{Tr}L=0.
$$

The scalar stress tensor is quadratic, so to linear order the five-dimensional metric remains $ds_5^2=r^2dx_{1,3}^2/\ell^2+\ell^2dr^2/r^2$. The uplift is

$$
ds_{10}^2=\Delta^{1/2}ds_5^2+\ell^2\Delta^{-1/2}(T^{-1})_{ij}d\mu^i d\mu^j,
\qquad \Delta=T_{ij}\mu^i\mu^j,\quad \mu^i\mu^i=1.
\tag{6.1}
$$

The Cartesian transverse coordinates to this order are

$$
y_i=r\mu_i-\frac{L_{ij}\mu_j}{2r},\qquad
\rho^2=y^2=r^2-\mu L\mu,
$$

$$
dy^2=\left(1+\frac{\mu L\mu}{r^2}\right)dr^2
 +(r^2\delta_{ij}-L_{ij})d\mu^i d\mu^j+O(L^2).
\tag{6.2}
$$

The mixed radial/angular terms cancel by the symmetry of $L$. For centered D3 locations $y_a$, the harmonic function has quadrupole

$$
H=\frac{\ell^4}{\rho^4}\left[1+\frac{12M_{ij}^{\rm STF}n_i n_j}{\rho^2}+\cdots\right],\qquad
M_{ij}^{\rm STF}=\frac1N\sum_a\left(y_{a i}y_{a j}-\frac{\delta_{ij}}6y_a^2\right).
\tag{6.3}
$$

The coefficient follows from $|y-y_a|^{-4}$: its quadratic term is $12(n\cdot y_a)^2-2y_a^2$. Matching both the worldvolume factor $H^{-1/2}$ and all radial/angular factors of $H^{1/2}dy^2$ to (6.1) gives

$$
M^{\rm STF}=-L/4.
\tag{6.4}
$$

To match the gauge-theory normalization, use

$$
S_{\rm SYM}\supset-\frac1{g_{\rm YM}^2}\int\operatorname{Tr}_c\left[\frac12F^2+(DX_i)^2\right],
\qquad X_i=g_{\rm YM}\Phi_i,\qquad y_a=2\pi\alpha'X_a.
$$

This indeed gives the canonical component kinetic coefficient $-1/2$ in §5.2. With $t=z^2t_{(2)}+\cdots$, (6.4) and $\ell^4=g_{\rm YM}^2N\alpha'^2$ imply

$$
t_{(2)}^I=-\frac{16\pi^2}{N^2}Q^I,\qquad
O^I=\lim_{z\to0}(z/\ell)^{-2}\phi^I
=-\frac{4\pi\sqrt\ell}{N}Q^I.
\tag{6.5}
$$

Consequently the classical calibration reads

$$
\widehat O^I=-\frac{4\sqrt2\pi^2}{N}Q^I
=-\sqrt{1-N^{-2}}\,\widehat Q^I\simeq-\widehat Q^I.
\tag{6.6}
$$

The middle expression combines a classical bulk coefficient with an exact CFT normalization; it is **not** an established finite-$N$ operator identity. The calibration is linear, source-free, and assumes a fixed boundary Minkowski normalization and vanishing center-of-mass dipole. It does not assert that arbitrary separated D3 distributions are captured by the finite truncation, nor determine nonlinear multipole/operator relations.

Combining (1.2), (1.3) and (6.6),

$$
\langle\widehat O^I(x_1)\widehat O^J(x_2)\rangle
=\frac{\delta^{IJ}}{x_{12}^4},\qquad
\langle\widehat O^I\widehat O^J\widehat O^K\rangle_{c,\rm tree}
=-\frac{2\sqrt2}{N}\frac{d_{IJK}}{x_{12}^2x_{23}^2x_{31}^2}.
\tag{6.7}
$$

These match the SYM two- and three-point coefficients for $-\widehat Q$ at orders $N^0$ and $N^{-1}$ respectively. The subleading difference between $N$ and $\sqrt{N^2-1}$ is not computed by classical supergravity.

The quadratic source contact can also be matched explicitly. In unit normalization the chosen bulk Fourier kernel is

$$
-2\pi^2c(k)=-\pi^2\log(k^2/\mu_*^2),\qquad
\mu_*=2e^{-\gamma_E}/\ell.
$$

Choosing this same extension of $1/x^4$ on the CFT side makes the renormalized quadratic source functionals agree, rather than only their separated-point values. The cubic kernel is already locally integrable and needs no such extension. Explicitly, a source $\widehat j$ coupled to $\widehat O$ corresponds to $j=\sqrt{2\pi^2/\ell}\,\widehat j$ in (4.10). With this common contact prescription, the two displayed source coefficients of $W_{\rm bulk}[\sqrt{2\pi^2/\ell}\,\widehat j]$ match those of $W_{\rm SYM}[-\widehat j]$ to the stated large-$N$ orders.

## 7. Verification and remaining physical question

**Verified:** the BF Green normalization, logarithmic subtraction and variational sign; the two-sided wall identity; the free spectral/common-domain limit; the cubic boundary limit on bounded Schwartz sets; the integrated three-point coefficient; the IIB canonical coupling; independent CFT Wick factors; and the linear Coulomb-quadrupole orientation.

[Reproducible Wolfram checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_checks_results.txt>) accompany the analytic arguments. Evaluate the script with `Get` in a fresh kernel to obtain its report. All symbolic residuals vanish and the saved run has no messages. A nonzero matrix-commutator example explicitly checks the obstruction to scalar-only truncation. Eight $J_0$ inequalities pass; fifteen logarithmic-remainder samples support, but do not prove, the uniform bound. For momentum magnitudes $(1,1,\sqrt2)$ the boundary triple-$K$ integral is $0.4579827971$; relative finite-radius errors at $z=10^{-1},10^{-2},10^{-3}$ are $0.123873$, $0.00420793$ and $0.0000892614$. These are numerical samples, separate from the full source-space theorem.

Fresh independent derivations checked the BF variational problem, the actual IIB normalization and Coulomb sign, the CFT Wick/protection inputs, and the cubic integral and arbitrary-overlap limit. The Fourier/Hausdorff–Young argument was separately reviewed, including its infrared domination and uniformity on bounded Schwartz sets. Two subsequent fresh manuscript reviews independently checked the BF/source/convergence sector and the IIB/SYM/Coulomb sector; both found the claims valid within their stated scope.

**Assumptions:** noncompact flat boundary; log-free vacuum domain; the reference source and mollifier prescription; fixed IIB field coordinates and finite-radius gauge choice; formal tree perturbation; classical supergravity in the large-$N$, strong-'t Hooft-coupling window; and protected CFT operator transport.

**Not verified:** finite-$N$ bulk corrections, interacting Lorentzian operator convergence/positivity, nonlinear dressed reconstruction, or four-point agreement. The next concrete question is the first $1/N$ correction to (3.3): construct a boundary multi-trace completion that solves the cubic bulk equation, reproduces the finite-radial three-point kernel (4.4), and has the local BF boundary limit. Gravitational and internal-gauge dressing must be distinguished from the scalar multi-trace correction; simply retaining the free $J_0$ multiplier cannot solve the nonlinear equation.

## References and source scope

- Cvetič, Lü, Pope and Sadrzadeh, [hep-th/0003103v2](<https://arxiv.org/pdf/hep-th/0003103v2>): uplift on PDF p. 4 (printed p. 3), action and potential on PDF p. 5 (printed p. 4), eqs. (8)–(9), and the vector-omission warning and original consistency-check limitation on PDF pp. 6–7. These pages were visually checked. The paper itself does not claim to have completed every ten-dimensional Einstein-equation check.
- Baguet, Hohm and Samtleben, [1506.01385v2](<https://arxiv.org/abs/1506.01385v2>): full nonlinear consistent IIB reduction to maximal five-dimensional supergravity. This supports the full-system embedding, not an arbitrary scalar-only truncation.
- Henningson and Skenderis, [hep-th/9806087v2](<https://arxiv.org/pdf/hep-th/9806087v2>): Einstein normalization on PDF p. 4 and Newton/flux relations and large-$N$ qualification in §3.2, PDF p. 8 (printed p. 7), visually checked. Their convention for the named boundary functional differs; here $W=+\log Z$ throughout.
- Baggio, de Boer and Papadodimas, [1203.1036v2](<https://arxiv.org/html/1203.1036v2>): §2.1 for operator-bundle/covariant transport and §5 for four-dimensional half-BPS three-point protection; also Eden, Howe and West, [hep-th/9905085](<https://arxiv.org/abs/hep-th/9905085>). Protection is used only for the stated separated-point observables.
- Lee, Minwalla, Rangamani and Seiberg, [hep-th/9806074](<https://arxiv.org/abs/hep-th/9806074>): historical large-$N$ chiral-primary comparison. Its $U(N)$ conventions are not substituted for the finite-$N$ $SU(N)$ Wick computation above.
