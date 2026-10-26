# Complementary spinor insertions and the Dirac extrapolate limit

## Result and scope

For a canonical complex Dirac field on Poincaré AdS₄, both standard and alternative quantization admit a direct finite-radial dictionary in the mass window

$$
0<M=m\ell<\frac12.
$$

The observable is a projected spinor, paired with the **complementary barred projector**. Its Euclidean insertion kernel has a counterterm-free boundary limit in this window. The unprojected finite-radial trace instead retains an ordering-dependent local contact term; in the standard domain this term diverges after boundary rescaling. In Lorentzian signature, spacetime-smeared fields converge in **operator norm on the actual free-Dirac Fock space**, with an explicit $O(z^2)$ estimate. This is stronger than the common-domain convergence appropriate to the preceding bosonic examples.

The construction below determines the variational polarization, the entire bulk inverse, Grassmann source pairing, two-point normalization, and the relation between the two quantizations. It also exhibits a finite-radius difference between a bulk insertion kernel and a moving-wall response. No equality of these objects is assumed.

The geometry, conformal slice measure, order of radial limits, and normalized source functional follow [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>). Only the field type and its first-order kinetic operator change. Spinors are components in the specified orthonormal frame, not coordinate vectors. The background is fixed; there are no gauge fields, thermal identifications, or dynamical gravitational dressings. The Poincaré patch has its ordinary spin structure, and Lorentzian correlators use the positive-energy Poincaré vacuum. Other spin structures and the endpoint masses are not classified here.

## 1. Action, projectors, and independent boundary data

Take

$$
g_E=\Omega^{-2}(dz^2+dx_i dx_i),\qquad
\Omega=\frac z\ell,\qquad
\epsilon=\Omega^{-4}dz\,d^3x,\qquad
\epsilon_{\widetilde\Sigma}=d^3x.
$$

Use constant Hermitian $4\times4$ matrices $\{\Gamma^a,\Gamma^b\}=2\delta^{ab}$ in the frame $e^a=\Omega^{-1}dx^a$, and

$$
P_\pm=\frac{1\pm\Gamma^z}{2},\qquad
\psi_\pm=P_\pm\psi,\qquad
\bar\psi_\pm=\bar\psi P_\pm.
$$

The Euclidean barred field is an independent Grassmann row, not a Hermitian adjoint. Our action is the unsymmetrized action specified in the problem:

$$
S_E=\int\epsilon\,\bar\psi(\slashed D-m)\psi,\qquad
\slashed D=\Omega\left[\Gamma^z\left(\partial_z-\frac{3}{2z}\right)
+\Gamma^i\partial_i\right].
$$

Writing

$$
\psi=\Omega^{3/2}\chi,\qquad
\bar\psi=\Omega^{3/2}\bar\chi
$$

removes the spin connection and all measure factors:

$$
S_E=\int dz\,d^3x\,\bar\chi\mathcal D\chi,
\qquad
\mathcal D=\Gamma^z\partial_z+\Gamma^i\partial_i-\frac Mz.
\tag{1}
$$

Columns have Fourier convention $\chi(x)=\int_k e^{ikx}\chi(k)$, $\int_k=\int d^3k/(2\pi)^3$. For compact notation rows are written $\bar\chi(x)=\int_k e^{-ikx}\bar\chi(k)$. Thus a momentum pairing is $\bar\chi(k)\mathcal D(k)\chi(k)$; in an all-$e^{ikx}$ convention this row would be denoted $\bar\chi(-k)$. Neither notation means complex conjugation of a Grassmann source.

Set $Q=\Gamma^ik_i$, $k=|\mathbf k|$. The column equations are

$$
(\partial_z-M/z)\chi_++iP_+Q\chi_-=0,
\qquad
(-\partial_z-M/z)\chi_-+iP_-Q\chi_+=0.
\tag{2}
$$

The asymptotic data, including the barred equations obtained by integration by parts, are

$$
\begin{aligned}
\chi_-&=\Omega^{-M}a_-+O(z^{1+M}),&
\chi_+&=\Omega^{M}b_++O(z^{1-M}),\\
\bar\chi_+&=\Omega^{-M}\bar a_++O(z^{1+M}),&
\bar\chi_-&=\Omega^{M}\bar b_-+O(z^{1-M}).
\end{aligned}
\tag{3}
$$

The remainder terms are the induced descendants of the opposite datum. Standard quantization fixes $(a_-,\bar a_+)$; its homogeneous domain sets these to zero. Alternative quantization fixes $(b_+,\bar b_-)$, setting them to zero in its homogeneous domain. One cannot choose the two column components independently at the same endpoint.

The Lorentzian conserved Dirac norm reduces to $\int dz\,d^2x\,\chi^\dagger\chi$. The slow branch is admissible precisely when $\int_0 dz\,z^{-2M}$ converges, hence $M<1/2$. This is not the Euclidean covariant spacetime $L^2$ norm, whose radial weight is $\ell\,dz/z$; alternative quantization is not an assertion that the slow branch lies in that naive Euclidean $L^2$ domain.

## 2. Variational boundary terms and the response map

At the lower cutoff $z=\varepsilon$, the outward normal points toward decreasing $z$. On shell,

$$
\delta S_E\big|_{\varepsilon}
=\int d^3x\,[-\bar\chi_+\delta\chi_++\bar\chi_-\delta\chi_-].
$$

Consequently the required terms are

$$
B_{\rm std}=+\int d^3x\,\bar\chi_+\chi_+,
\qquad
B_{\rm alt}=-\int d^3x\,\bar\chi_-\chi_-.
\tag{4}
$$

They give, respectively,

$$
\delta I_{\rm std}=\int[\delta\bar\chi_+\chi_++\bar\chi_-\delta\chi_-],
\qquad
\delta I_{\rm alt}=-\int[\bar\chi_+\delta\chi_++\delta\bar\chi_-\chi_-].
$$

There is **no factor $1/2$ in (4)** for (1). A symmetrized Dirac action instead uses the equivalent boundary terms $\pm\frac12\int\sqrt h\,\bar\psi\psi$. These variational terms are required even when no divergent source counterterm is needed.

For $k>0$, interior regularity selects the $K$ solutions. A column solution can be written, with $u_-$ a constant $P_-$ spinor,

$$
\chi_-=\sqrt z K_{M+1/2}(kz)u_-,\qquad
\chi_+=i\frac Qk\sqrt z K_{M-1/2}(kz)u_-.
$$

Define

$$
c(t)=\frac{\Gamma(\frac12-t)}{2^{2t}\Gamma(\frac12+t)},
\qquad
\mathcal R(k)=i\ell^{2M}c(M)P_+QP_-\,k^{2M-1}.
$$

The source-to-response map is

$$
b_+=\mathcal R a_-,\qquad
\bar b_-=\bar a_+\mathcal R.
\tag{5}
$$

Here the second equation uses the corresponding row map; it is not obtained by replacing $\mathcal R$ with $\mathcal R^\dagger$. In the chosen window the descendant contributions to (4) vanish with positive powers of $\varepsilon$. The limiting on-shell functionals are

$$
I_{\rm std}=\int_k\bar a_+\mathcal R a_-,\qquad
I_{\rm alt}=-\int_k\bar b_-\mathcal R^{-1}b_+.
\tag{6}
$$

All inverses here and below are between the rank-two projected spaces, not inverses of a rank-two $4\times4$ matrix on its full space. The kernels are interpreted distributionally at $k=0$; pointwise inversion at that single momentum is not required.

## 3. The full bulk inverse and its radial jump

Let

$$
g_\nu(z,w;k)=\sqrt{zw}\,I_\nu(kz_<)K_\nu(kz_>),\qquad
z_<=\min(z,w),\quad z_>=\max(z,w).
$$

Introduce

$$
\begin{array}{c|cc}
&\nu_+&\nu_-\\\hline
\text{standard}&M+\tfrac12&M-\tfrac12\\
\text{alternative}&-M-\tfrac12&\tfrac12-M
\end{array}
$$

and the matrix kernel

$$
\mathcal G=-\left(\Gamma^z\partial_z+iQ+\frac Mz\right)
\left[P_+g_{\nu_+}+P_-g_{\nu_-}\right].
\tag{7}
$$

Then the original-field inverse is

$$
S_k(z,w)=\Omega_z^{3/2}\Omega_w^{3/2}\mathcal G_k(z,w),
\qquad
(\slashed D-m)S(X,Y)=\delta_g(X,Y)\mathbf1.
\tag{8}
$$

To verify (7), factor the first-order operator:

$$
\mathcal D\left(\Gamma^z\partial_z+iQ+\frac Mz\right)
=\partial_z^2-k^2-\frac{M^2+M\Gamma^z}{z^2}.
$$

The scalar inverse of $-\partial_z^2+k^2+(\nu^2-1/4)/z^2$ is $g_\nu$. The first-order equations fix **which signed $I$ order** belongs to each projector. In standard quantization, replacing $I_{M-1/2}$ by $I_{|M-1/2|}$ would reintroduce the forbidden slow $\chi_-$ datum. Factorization therefore does not make the two radial components independently quantizable scalars.

For example, put $b=M+1/2$, $c=M-1/2$ in the standard domain. For $z<w$, the four blocks of $\mathcal G/\sqrt{zw}$ are

$$
\begin{pmatrix}
-k I_c(kz)K_b(kw)P_+&-i I_c(kz)K_c(kw)P_+QP_-\\
-i I_b(kz)K_b(kw)P_-QP_+&+k I_b(kz)K_c(kw)P_-
\end{pmatrix}.
\tag{9}
$$

For $z>w$ the diagonal blocks are $+kK_c(kz)I_b(kw)P_+$ and $-kK_b(kz)I_c(kw)P_-$; each off-diagonal block simply has $I$ at the smaller radius and $K$ at the larger one. The identity

$$
x[I_{M+1/2}(x)K_{M-1/2}(x)+I_{M-1/2}(x)K_{M+1/2}(x)]=1
$$

gives

$$
\mathcal G(w+0,w)-\mathcal G(w-0,w)=\Gamma^z.
\tag{10}
$$

Both quantizations satisfy the left equation $\mathcal D_z\mathcal G=\delta(z-w)\mathbf1$ and the right equation

$$
-\partial_w\mathcal G\,\Gamma^z+\mathcal G(iQ-M/w)=\delta(z-w)\mathbf1.
$$

The column and row endpoint conditions in (3) can also be checked directly on (7). These conditions, interior regularity, and (10) fix the inverse, rather than only its nonlocal asymptotic part.

## 4. Radial insertions and the Grassmann Gaussian

Use $\sigma=+1$ for standard and $\sigma=-1$ for alternative, and define

$$
t=\sigma M,\qquad \Delta_t=\frac32+t,\qquad
\mathcal O^{(t)}_z=\Omega^{-\Delta_t}P_\sigma\psi
=\Omega^{-t}P_\sigma\chi,
\qquad
\bar{\mathcal O}^{(t)}_z=\Omega^{-\Delta_t}\bar\psi P_{-\sigma}.
\tag{11}
$$

For independent odd sources $\bar\eta=\bar\eta P_\sigma$ and $\eta=P_{-\sigma}\eta$, the insertion exponent is

$$
\int d^3x\,[\bar\eta\mathcal O^{(t)}_z+\bar{\mathcal O}^{(t)}_z\eta].
$$

Let $\rho_{z,\delta}(u)$ have unit integral in $du$ and support away from $u=0$ at each finite stage. In the bulk covariant pairing $\int\epsilon(\bar J\psi+\bar\psi J)$ the corresponding sources are

$$
J(u,x)=\Omega_u^{4-\Delta_t}\rho_{z,\delta}(u)P_{-\sigma}\eta(x),\qquad
\bar J(u,x)=\Omega_u^{4-\Delta_t}\rho_{z,\delta}(u)\bar\eta(x)P_\sigma.
\tag{12}
$$

Equivalently the flat-density sources in (1) are $j=\Omega^{-5/2}J=\Omega^{-t}\rho\eta$ and $\bar j=\Omega^{-t}\rho\bar\eta$. This explicitly retains the reference's conformal slice measure; no extra $\sqrt h$ is inserted. With $S_E[J]=S_E-\int\epsilon(\bar J\psi+\bar\psi J)$ the column equation is $(\slashed D-m)\psi=J$. This sign follows from the stated fermion action; it is not obtained by relabeling the scalar operator $E$ in $E\varphi=-J$.

Fix the Berezin convention by

$$
\frac{Z[\bar j,j]}{Z[0,0]}=\exp(\bar j\mathcal G j),\qquad
\langle\chi\bar\chi\rangle=\mathcal G.
$$

There is no bosonic factor $1/2$. Radially pair (7) with both mollifiers before taking the thin-layer limit. The complementary block is continuous at $z=w$, so this limit is independent of radial ordering and gives

$$
\boxed{
C_t(z,w;k)=-i\ell^{2t}(zw)^{1/2-t}
 P_\sigma QP_{-\sigma}
 I_{t-1/2}(kz_<)K_{t-1/2}(kz_>).
}
\tag{13}
$$

In particular,

$$
W_z^{(t)}[\bar\eta,\eta]=\int_k\bar\eta(k)C_t(z,z;k)\eta(k),
\qquad W=\log[Z/Z[0]].
\tag{14}
$$

Several radial sources give the corresponding sum $\sum_{r,s}\bar\eta_r C_t(z_r,z_s)\eta_s$. The full bulk source-to-field map remains (8), $\langle\psi\rangle=S J$, and all even correlators follow by fermionic Wick contraction. Equations (12)–(14) define actual bulk insertions, not new oscillators placed on a slice.

The distinction from an unprojected insertion is important. If $\lambda$ denotes the limiting weight of the region $z>w$ in an asymmetric two-layer pairing, the full trace differs from the symmetric trace by

$$
S_\lambda(\varepsilon,\varepsilon)-S_{1/2}(\varepsilon,\varepsilon)
=(\lambda-\tfrac12)\Omega_\varepsilon^3\Gamma^z\delta^3(x-y).
\tag{15}
$$

Identical real mollifier profiles give $\lambda=1/2$. In the standard domain the leading diagonal contact before extrapolation is

$$
-\Omega_\varepsilon^3[(1-\lambda)P_++\lambda P_-]\delta^3(x-y).
$$

Multiplication by $\Omega_\varepsilon^{-2\Delta_+}$ makes this diverge as $\Omega_\varepsilon^{-2M}$. Projection in (11) annihilates the entire ambiguity. Thus “no divergent source subtraction” is a statement about (13), not the full matrix.

## 5. Boundary two-point functions and a uniform Euclidean limit

The small-argument expansion of (13) gives

$$
\boxed{
C_{t,\partial}(k)=-i\ell^{2t}c(t)P_\sigma QP_{-\sigma}\,k^{2t-1},
\qquad -\frac12<t<\frac12.
}
\tag{16}
$$

In this report $t=\pm M$; the continuous $t\to0$ limit is also a useful check. At separated points,

$$
\boxed{
C_{t,\partial}(x)=
\ell^{2t}\frac{\Gamma(2+t)}{\pi^{3/2}\Gamma(\frac12+t)}
\frac{P_\sigma\Gamma^i x_iP_{-\sigma}}{|x|^{4+2t}}.
}
\tag{17}
$$

This is the spinor-primary two-point structure of dimension $\Delta_t=3/2+t$, with its coefficient fixed by the canonical bulk action. For $t\ge0$, (17) means the symmetric principal-value distribution fixed by (16), not an absolutely integrable function at $x=0$. Oddness removes the constant test-function term, and the remainder is integrable precisely for $t<1/2$. For $t<0$ the kernel is locally integrable. The Fourier coefficient follows by applying $-\Gamma\cdot\partial$ to the Riesz transform of $k^{2t-1}$.

There is a useful estimate that is uniform even when the two radii approach zero at very different rates. Put

$$
\beta=\frac12-t\in(0,1),\qquad
A_\beta=2^{2\beta-1}\frac{\Gamma(\beta)}{\Gamma(1-\beta)},
\qquad
F_\beta(x,y)=(xy)^\beta I_{-\beta}(x)K_\beta(y),\quad 0<x\le y.
$$

Then there is a finite constant $B_\beta$ such that

$$
|F_\beta(x,y)-A_\beta|\le B_\beta y^{2\beta}.
\tag{18}
$$

**Proof.** For $y\le1$, the convergent $I_{-\beta}$ series gives $x^\beta I_{-\beta}(x)=2^\beta/\Gamma(1-\beta)+O(x^2)$, uniformly down to $x=0$. The two branches of $K_\beta$ give $y^\beta K_\beta(y)=2^{\beta-1}\Gamma(\beta)+O(y^{2\beta})+O(y^2)$. Since $x\le y$ and $2\beta<2$, these prove (18) in this region. For $y\ge1$, first consider $x\le1$: the first factor is bounded and $y^\beta K_\beta(y)$ decays exponentially. For $1\le x\le y$, the usual real-axis Bessel estimates give $|F_\beta(x,y)|\le C(xy)^{\beta-1/2}e^{x-y}$. This is bounded if $\beta\le1/2$ and is at most $Cy^{2\beta-1}$ otherwise. Both cases imply (18). The constants on the compact transition intervals are finite. □

Since $\|P_\sigma QP_{-\sigma}\|=k$, (18) yields

$$
\boxed{
\|C_t(z,w;k)-C_{t,\partial}(k)\|
\le B_\beta\ell^{2t}z_>^{1-2t}\,k.
}
\tag{19}
$$

Thus (13) converges strongly in $\mathcal S'(\mathbb R^3)$ as both radii vanish, without fixing their ratio. In particular, (14) converges for arbitrary Schwartz spinor sources. “Strong” here means uniformity on bounded sets of Schwartz tests, which follows directly from the integrable polynomial bound in (19). Grassmann generating functionals may be read coefficientwise over a finite Grassmann algebra; their quadratic coefficients obey exactly this bound.

No positivity of an ordinary Euclidean Gaussian measure has been invoked. Fermionic positivity is the Hilbert-space statement established in §8.

## 6. Legendre relation, source signs, and normalization

Equations (5) and (16) show

$$
C_{M,\partial}=-\mathcal R,
\qquad
C_{-M,\partial}=\mathcal R^{-1},
\qquad
\boxed{C_{-M,\partial}=-C_{M,\partial}^{-1}}.
\tag{20}
$$

For instance $c(M)c(-M)=1$, while the two factors of $-iQ$ produce the minus sign. This is a complementary-space identity, not a scalar replacement rule for bulk propagators.

The on-shell Legendre transformation is the algebraic stationary operation

$$
I_{\rm alt}[\bar b,b]
=\operatorname{stat}_{\bar a,a}
\left\{I_{\rm std}[\bar a,a]-\bar a b-\bar b a\right\}.
\tag{21}
$$

The source-functional version sends a quadratic kernel $C$ to $-C^{-1}$. Products and variations retain the displayed Grassmann ordering. There is no convex supremum interpretation.

For clarity, the insertion operators (11) have a **positive** extrapolation convention. Matching their one-point functions to the classical data requires

$$
\begin{array}{c|c|c}
&\text{insertion sources}&\text{mean extrapolated field}\\\hline
\text{standard}&(\eta,\bar\eta)=(-a_-,-\bar a_+)&b_+\\
\text{alternative}&(\eta,\bar\eta)=(b_+,\bar b_-)&a_-
\end{array}
\tag{22}
$$

Indeed $C_M\eta=\mathcal R a=b$ in the first row, and $C_{-M}\eta=\mathcal R^{-1}b=a$ in the second. If instead the Dirichlet datum $a$ is called the positive source, its conjugate standard boundary operator is minus the positive extrapolated field. Two simultaneous signs cancel in a two-point function, so a two-point check alone cannot diagnose this distinction. With the source maps (22), the limiting insertion Gaussian equals $e^{-I}$; this equality is derived only at the boundary and with the stated polarization.

All powers of $\ell$ above belong to the reference's $\Omega$ convention. If $\psi\sim z^{\Delta_-}a_0+z^{\Delta_+}b_0$, then $a_0=\ell^{-\Delta_-}a$, $b_0=\ell^{-\Delta_+}b$, and $I_{\rm std}=\ell^3\int\bar a_0b_0$. Raw $z^{-\Delta_t}\psi$ correlators carry $\ell^{-3}$, whereas (17) carries $\ell^{2t}$. Confusing raw coefficients with the canonically source-dual operator would insert a spurious factor of $\ell^6$ into (20).

## 7. A moving-wall response is not the finite-radial insertion

Keep the standard asymptotic domain first. Its equal-radius projected kernel for the conformally rescaled field is

$$
\mathcal G_{+-}(\varepsilon,\varepsilon;k)
=-iP_+QP_-\,\varepsilon I_{M-1/2}(k\varepsilon)K_{M-1/2}(k\varepsilon).
\tag{23}
$$

Now change the problem: remove $0<z<\varepsilon$ and impose the standard variational polarization at a genuine wall $z=\varepsilon$. The regular classical response there is

$$
\chi_+(\varepsilon)=
i\frac{P_+QP_-}{k}
\frac{K_{M-1/2}(k\varepsilon)}{K_{M+1/2}(k\varepsilon)}\chi_-(\varepsilon).
$$

The wall-domain projected covariance is its negative:

$$
\mathcal G^{\rm wall}_{+-}(\varepsilon,\varepsilon;k)
=-i\frac{P_+QP_-}{k}
\frac{K_{M-1/2}(k\varepsilon)}{K_{M+1/2}(k\varepsilon)}.
\tag{24}
$$

One can derive this directly from (7). The minus-projector scalar factor now has the lower-endpoint solution

$$
\sqrt z\left[I_{M-1/2}(kz)+
\frac{I_{M+1/2}(k\varepsilon)}{K_{M+1/2}(k\varepsilon)}K_{M-1/2}(kz)\right],
$$

which satisfies $(\partial_z-M/z)u(\varepsilon)=0$. The Wronskian reduces its endpoint Green function to $K_{M-1/2}/(kK_{M+1/2})$, proving (24). The missing UV region has changed the inverse; it is not merely a restriction of the old one.

As a particularly transparent limit, $M\to0$ gives

$$
\mathcal G_{+-}(\varepsilon,\varepsilon;k)
=-i\frac{P_+QP_-}{2k}(1+e^{-2k\varepsilon}),
\qquad
\mathcal G^{\rm wall}_{+-}(\varepsilon,\varepsilon;k)
=-i\frac{P_+QP_-}{k}.
$$

They agree only as $\varepsilon\to0$. The general kernels likewise have the same rescaled boundary limit in the stated mass window but differ at finite radius. A radial effective action obtained by integrating out a region must retain that region's induced boundary kernel; it cannot be identified with either expression by nomenclature alone.

## 8. Wightman kernel, positivity, and a CAR norm theorem

Use Lorentzian signature $\eta=(-,+,+,+)$. In this section write the time coordinate as $T=t_{\mathrm L}$, to distinguish it from the signed dimensionless mass $t=\sigma M$. Set

$$
\Gamma^\tau=i\gamma^0_L,\qquad
\Gamma^{z,i}=\gamma^{z,i}_L,\qquad
\bar\psi_L=\psi_L^\dagger\Gamma^\tau,
\qquad
S_L=-\int\sqrt{-g}\,\bar\psi_L(\slashed D_L-m)\psi_L.
$$

The time-derivative term is $+i\chi^\dagger\partial_T\chi$. Under $T=-i\tau$, $iS_L=-S_E$ with the Euclidean barred field continued algebraically. In particular $\bar{\mathcal O}_L=\mathcal O_L^\dagger\Gamma^\tau$ has exactly the complementary projector in (11).

For boundary momentum use

$$
\int\frac{d\omega\,d^2\mathbf p}{(2\pi)^3}
 e^{-i\omega T+i\mathbf p\cdot\mathbf x},\qquad
p_\mu=(-\omega,\mathbf p),\qquad
s=\omega^2-|\mathbf p|^2=q^2,\qquad
\theta_+=\theta(\omega)\theta(s).
$$

Let $\slashed p=\gamma_L^\mu p_\mu$ with only boundary indices. The Weber resolvent representation of $I_\nu K_\nu$, valid here for $\nu=t-1/2\in(-1,0)$, gives the projected Wightman function

$$
\boxed{
\widetilde W_t(z,w;p)=
\pi\ell^{2t}(zw)^{1/2-t}\theta_+
J_{t-1/2}(qz)J_{t-1/2}(qw)
 P_\sigma(-i\slashed p)P_{-\sigma}.
}
\tag{25}
$$

The normalization can be checked before continuation from

$$
\sqrt{zw}I_\nu(kz_<)K_\nu(kz_>)
=\int_0^\infty dq\,\frac{q\sqrt{zw}J_\nu(qz)J_\nu(qw)}{q^2+k^2}.
$$

To test positivity, multiply (25) by $\Gamma^\tau$ on the right and define

$$
\alpha^i=-i\Gamma^i\Gamma^\tau,
\qquad H(p)=\omega\mathbf1+\boldsymbol\alpha\cdot\mathbf p.
$$

On either rank-two projector, $P_\sigma H P_\sigma$ has eigenvalues $\omega\pm|\mathbf p|$. It is positive on the future timelike cone. The radial factor in (25) is an outer product, so arbitrary finite collections of radii have a positive dagger covariance, not merely the equal-radius kernel.

The boundary density is

$$
\boxed{
\widetilde W_{t,\partial}(p)\Gamma^\tau
=2\pi\theta_+\rho_t(s)P_\sigma H(p)P_\sigma,
\qquad
\rho_t(s)=\frac{\ell^{2t}2^{-2t}}{\Gamma(t+\frac12)^2}s^{t-1/2}.
}
\tag{26}
$$

The Euclidean check is $\int_0^\infty ds\,\rho_t(s)/(s+k^2)=\ell^{2t}c(t)k^{2t-1}$. Thus continuation, positivity, and the normalization of (16) agree. Both branches are locally integrable at the light cone because $t-1/2>-1$. No transverse-vector-like additional $1/s$ numerator is present.

**Theorem (spacetime-smeared operator limit).** Let $f$ be a commuting Schwartz boundary spinor, $P_\sigma f=f$, and let

$$
\Phi_z^{(t)}(f)=\int dT\,d^2x\,f^\dagger(T,\mathbf x)\mathcal O_z^{(t)}(T,\mathbf x).
$$

On the Fock space of the corresponding free bulk Dirac theory, these are bounded CAR operators and

$$
\boxed{
\|\Phi_z^{(t)}(f)-\Phi_\partial^{(t)}(f)\|
\le\frac{z^2}{4(t+\frac12)}
\|\Phi_\partial^{(t)}(\square f)\|,
\qquad \square=-\partial_T^2+\partial_1^2+\partial_2^2.
}
\tag{27}
$$

In particular the limit is in operator norm, not only as a vacuum matrix element or on a common unbounded-operator domain.

**Proof.** Put $\beta=1/2-t$. The normalized radial multiplier, on the timelike spectrum, is

$$
F_t(x)=\Gamma(1-\beta)(x/2)^\beta J_{-\beta}(x),\qquad F_t(0)=1.
$$

The exact derivative identity

$$
\frac{d}{dx}[x^\beta J_{-\beta}(x)]=-x^\beta J_{1-\beta}(x)
$$

and the Poisson bound for order $1-\beta>0$ imply, for every $x\ge0$,

$$
|F_t(x)-1|\le\frac{x^2}{4(1-\beta)}
=\frac{x^2}{4(t+\frac12)}.
\tag{28}
$$

The annihilation and antiparticle-creation one-particle maps of $\Phi_z$ are the boundary maps multiplied by $F_t(qz)$. Their squared norm differences are therefore bounded by $z^4/[16(t+1/2)^2]$ times the boundary squared norms with an extra $q^4$. Multiplication by $q^2=s$ is exactly $\square$ on the Fourier transform of the test. The light-cone integrability in (26), together with Schwartz decay, makes all these norms finite. This also constructs the limiting one-particle maps on the original bulk mode space.

For a charged CAR field $B=a(u)+b^\dagger(v)$, $B^2=0$ and $\{B,B^\dagger\}=(\|u\|^2+\|v\|^2)\mathbf1$, hence $\|B\|^2=\|u\|^2+\|v\|^2$. Apply this to the difference of the two fields to obtain (27). Explicitly, for $\widehat f(\omega,\mathbf p)=\int e^{i\omega T-i\mathbf p\cdot\mathbf x}f(T,\mathbf x)\,dT\,d^2x$, the full boundary CAR norm is

$$
\|\Phi_\partial^{(t)}(f)\|^2
=\int\frac{d\omega\,d^2\mathbf p}{(2\pi)^3}
 2\pi\theta(s)\rho_t(s)\,
 \widehat f^\dagger\,[\operatorname{sgn}(\omega)P_\sigma H(p)P_\sigma]\widehat f.
$$

On the past cone $-H$ is positive; replacing $f$ by $\square f$ multiplies both frequencies by $q^2$. The antiparticle map is therefore included in (27), with no extra particle-counting factor. □

Equation (27) also proves convergence of products of finitely many fixed spacetime-smeared fields, and hence of all their vacuum correlators, with the usual fermionic Wick signs. It gives a free-field boundary representation through the multiplier $F_t(qz)$ on the physical one-particle spectrum. It does not introduce a second Fock space at each radius.

There are two essential restrictions. First, the alternative normalized multiplier is unbounded at high $x$: $F_t(x)$ oscillates with envelope $x^{-t}$ when $t<0$. Thus the proof must not assume $|F_t|\le1$ for both branches. Bound (28) gives convergence on Schwartz tests, or on the graph domain of $q^2$ in the boundary CAR norm; it is not a uniform convergence theorem on the unit ball of the bare one-particle smearing space. For $t>0$, the stronger $|F_t|\le1$ follows from the ordinary Poisson formula and permits an extension by density to that bare space, still without uniform operator-norm convergence of the multipliers.

Second, these are **spacetime** smearings. A delta function in time leaves a large-$q$ variance proportional to $\int^\infty dq\,q^{2t}$, divergent throughout $t>-1/2$. Equal-time spatial smearing alone is not licensed by CAR boundedness; a fixed-radius bulk field has an unsmeared radial UV singularity as well.

## 9. What the window and source class exclude

The projected Euclidean theorem uses $\beta\in(0,1)$. At $M=1/2$, the standard kernel develops a local term proportional to $i\ell P_+QP_-\log(z_>/\ell)$, and the alternative light-cone exponent reaches its endpoint. Higher standard masses require additional odd-derivative local source subtractions. These cases cannot be obtained by declaring that (19) remains a positive-power estimate; their renormalized distributions and possible endpoint degrees of freedom require a separate analysis. The massless limits of the displayed kernels are checked, but a classification of massless mixed boundary polarizations is not asserted.

Smooth bulk sources also need an admissible boundary falloff. Compact support away from $z=0$, as in each stage of (12), avoids this issue. A direct obstruction is obtained near the boundary by choosing $\chi_+=z^M\log(z/\ell)f_+(x)$ and $\chi_-=0$, with a smooth radial cutoff at larger $z$. Then $j=\mathcal D\chi$ has $j_+=z^{M-1}f_+$ and a subleading tangential $j_-$, while the original covariant source has $J_+\sim z^{\Delta_+}f_+$. Nevertheless $\Omega^{-M}\chi_+$ has a logarithmic divergence. Thus a source that superficially has a normalizable power is not automatically admissible for an unrenormalized source-to-boundary map. The order “smooth radial pairing, thin layer, boundary limit” is doing substantive work.

Finally, the boundary algebra constructed here is the generalized free spinor algebra of the actual free bulk theory. Its two-point structure and positivity do not establish an interacting holographic dual, a gravitationally dressed operator, or an interacting fermion dictionary.

## 10. Verification and further questions

[Reproducible Wolfram input](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/dirac_checks.wl>) and [complete clean output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/dirac_checks_results.txt>) accompany the analytic proofs. Evaluate the input with `Get` in a Wolfram kernel; its final expression is the full report and it does not overwrite any note.

**Verified:** seven exact scalar identities (factorization, Legendre and Fourier/spectral normalization, Bessel derivative, and massless kernel); exact Clifford and projected characteristic-polynomial identities; both left and right inverse equations on both radial orderings for both quantizations at generic nonzero momentum; both jumps and two moving-wall Wronskian tests, numerically zero to at least 57 decimal-place accuracy; eighteen global Bessel-bound samples; unequal-radius boundary and Euclidean-bound samples. The numerical tests support the formulas, while (18), (19), and (27) are established by the analytic arguments. The saved run has no Wolfram messages. An earlier attempt to demand relative precision from exact cancellations produced precision-exhaustion messages; evaluating at fixed 60-digit arguments resolved that numerical issue rather than suppressing the messages.

Independent fresh derivations checked (i) the full standard inverse, its right equation and contact jump; (ii) both variational polarizations, the Grassmann/source signs and normalization conversion; and (iii) Lorentzian spectral normalization, positivity, and the CAR norm limit, including the alternative-branch multiplier and equal-time obstructions.

**Assumptions:** canonical free complex Dirac field; fixed Poincaré AdS₄; the frame and source conventions above; $0<M<1/2$; the selected homogeneous standard or alternative domain; regular Euclidean interior and its positive-energy Lorentzian continuation; Schwartz boundary spacetime tests for the operator theorem.

**Not established:** the endpoint/mixed-domain classification, arbitrary-mass Euclidean contact hierarchy, compact or thermal spin structures, fermion interactions, or any gravitational dressing. The next distinct free-field problem is linearized gravity, where the radial slice and its observables must first be defined modulo diffeomorphisms rather than copied from the present nongauge spinor example.
