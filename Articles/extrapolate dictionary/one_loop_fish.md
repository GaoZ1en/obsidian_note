# The one-loop four-point function: invariant renormalization and the extrapolate limit

## Abstract

We construct the renormalized order-$\lambda^2$ fish diagram for the standard conformally coupled scalar on Euclidean $\mathrm{AdS}_4$, using finite-radius insertions and the source conventions of the reference formalism. A geodesic short-distance prescription defines an explicitly AdS-invariant extension of the squared propagator. Its conformal transport to the flat half-space contains a local $-\log(u/\ell)/(8\pi^2)$ term that is absent in a constant-coordinate-scale flat subtraction. Including this term yields a closed boundary four-point kernel in logarithms and dilogarithms, with the correct homogeneous momentum scaling and bulk beta function. We give a convergent finite-radius representation and prove convergence as a Schwartz distribution. The proof controls the moving source layer through fractional Sobolev regularity; a pointwise replacement of external legs is insufficient. No additional quartic boundary-source counterterm is forced by this graph. The result is the complete connected four-point function through order $\lambda^2$ when the order-$\lambda$ physical mass shift is tuned to zero, not the complete generating functional at that order.

## 1. Theory and physical mass condition

Use the conventions of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>):

$$
g=\frac{\ell^2}{u^2}(du^2+d\mathbf y^2),\qquad
\Omega=u/\ell,\qquad \epsilon=\Omega^{-4}du\,d^3y,
\quad E\varphi=-J,\quad W=\log[Z[J]/Z[0]].
\tag{1.1}
$$

The source couples as $-\int\epsilon J\varphi$. The action has interaction $+\lambda\varphi^4/4!$, and the vacuum is the fast/standard Poincaré Euclidean vacuum with reference mass $m_0^2\ell^2=-2$. Boundary slice sources pair with $d^3x$, not the physical slice measure. Bulk renormalization precedes the paired thin-layer limit and the boundary limit.

We impose the mass condition

$$
\tau=\delta m_{\rm input}^2+\delta m_{\rm fin}^2+\frac\lambda2 C=0
\quad\text{through order }\lambda.
\tag{1.2}
$$

Here $C$ is the chosen renormalized coincident propagator. As shown in [the tadpole calculation](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/one_loop_tadpole.md>), this is a finite mass matching, not an assertion that the tadpole vanishes without a counterterm. It keeps the physical standard dimension at $2+O(\lambda^2)$. With this condition, tadpole insertions on the external legs of the order-$\lambda$ contact graph cancel against their mass counterterms. The fish graph and coupling counterterm then exhaust the connected four-point correction at order $\lambda^2$. An order-$\lambda^2$ two-point mass or residue correction would first affect this connected four-point function at order $\lambda^3$.

For $\varphi=(u/\ell)\chi$, the free field $\chi$ has the flat Dirichlet half-space propagator

$$
g_D(u,v;k)=\frac{e^{-k|u-v|}-e^{-k(u+v)}}{2k},
\qquad G_0(u,v;k)=\frac{uv}{\ell^2}g_D(u,v;k).
\tag{1.3}
$$

The finite-radius insertion and its radial profile are

$$
\mathcal O_z=\Omega(z)^{-2}\varphi(z,x)=\frac\ell z\chi(z,x),
\qquad p_z(u;k)=\frac{g_D(z,u;k)}z.
\tag{1.4}
$$

Thus a source $j$ induces $\Phi_z(u,k)=u\,p_z(u;k)j(k)$ for $\varphi$, or $\ell p_zj$ for $\chi$. The bulk-to-boundary kernel in the reference normalization is $K_{\rm ext}(u;k)=u e^{-ku}$, not a unit-source kernel introduced independently.

## 2. The invariant extension of the squared propagator

Let $r=\rho(X,Y)/\ell$, where $\rho$ is proper geodesic distance. The exact propagator is

$$
G_0(X,Y)=\frac1{4\pi^2\ell^2\sinh^2r}.
\tag{2.1}
$$

Its square has scaling degree four at the bulk diagonal and a logarithmic divergence. With $c=1/(8\pi^2)$, define

$$
\boxed{
T_\mu(X,Y)=\lim_{\varepsilon\downarrow0}
\left[\mathbf1_{\rho>\varepsilon}G_0(X,Y)^2
+c\log(\mu\varepsilon)\delta_g(X,Y)\right],
}
\tag{2.2}
$$

where $\mu$ has inverse-length units and $\delta_g$ is normalized with $\epsilon(Y)$. The finite part in (2.2), including its constant term, is our coupling prescription.

There is a useful explicit proof of its existence. For a smooth compactly supported test function $f$, denote by $\bar f_X(r)$ its normalized average over the geodesic sphere centered at $X$. The radial volume element and (2.1) give

$$
\int\epsilon(Y)G_0(X,Y)^2f(Y)
=c\int_0^\infty\frac{\bar f_X(r)}{\sinh r}\,dr.
\tag{2.3}
$$

Consequently

$$
T_\mu[f](X)=c\int_0^\infty
\frac{\bar f_X(r)-f(X)}{\sinh r}\,dr
+c\log(2\mu\ell)f(X).
\tag{2.4}
$$

The first integrand is integrable at zero; it is integrable at infinity even with the subtraction of the constant. Formula (2.4) proves invariance and fixes the contact coefficient. In particular,

$$
\mu\partial_\mu T_\mu=c\delta_g.
\tag{2.5}
$$

An equivalent analytic regulator is

$$
G_0^2(\mu\ell\sinh r)^{2\zeta}
=\frac{\delta_g}{16\pi^2\zeta}+T_\mu+O(\zeta).
\tag{2.6}
$$

The total radial integral is initially convergent for $0<\operatorname{Re}\zeta<1/2$ and equals $2^{-2\zeta}B(1/2-\zeta,2\zeta)=1/(2\zeta)+\log2+O(\zeta)$ before continuation to $\zeta=0$. The regulator variable here is $\zeta$; identifying its pole coefficient with a convention using $4-D=2\zeta$ requires that explicit conversion.

Among extensions preserving the original scaling degree, an AdS-invariant finite ambiguity is $T_\mu\mapsto T_\mu+C_0\delta_g$, with $C_0$ constant on this background. Higher-derivative bulk counterterms are not part of this minimal extension.

## 3. Diagram combinatorics and coupling renormalization

The fish part of the connected source functional is

$$
W_{\rm fish}[J]=\frac{\lambda^2}{16}
\int\epsilon(X)\epsilon(Y)\,
\Phi_J(X)^2T_\mu(X,Y)\Phi_J(Y)^2,
\qquad \Phi_J=G_0J.
\tag{3.1}
$$

The factor follows directly from $[2!(4!)^2]^{-1}\binom42^2\,2!=1/16$. Four derivatives with respect to sources give $+\lambda^2/2$ for each of the three unordered $2|2$ channels. The tree graph has the opposite sign, $-\lambda$.

In the cutoff prescription (2.2),

$$
\lambda_B=\lambda_R(\mu)+\frac{3\lambda_R^2}{16\pi^2}
\log\frac1{\mu\varepsilon}+O(\lambda_R^3),
\qquad
\boxed{\beta_\lambda=\frac{3\lambda_R^2}{16\pi^2}+O(\lambda_R^3).}
\tag{3.2}
$$

Changing the extension to $T_\mu+C_0\delta_g$ describes the same four-point function if

$$
\lambda_R'=\lambda_R+\frac32 C_0\lambda_R^2+O(\lambda_R^3).
\tag{3.3}
$$

This is independent of the finite mass matching required in (1.2). We write $\lambda$ for $\lambda_R(\mu)$ below.

## 4. Why constant-scale flat subtraction is not the AdS prescription

In flat half-space position coordinates, let

$$
A=|y-y'|^2+(u-v)^2,\qquad B=|y-y'|^2+(u+v)^2.
$$

Then

$$
g_D^2=\frac1{16\pi^4}\left(\frac1{A^2}+\frac1{B^2}-\frac2{AB}\right).
\tag{4.1}
$$

Only $A^{-2}$ needs a bulk diagonal extension. The image and mixed terms are also locally integrable at simultaneous boundary coincidence: their scaling degree is four in five normal variables $(u,v,y-y')$.

Define $T^{\rm flat}_\mu$ by a flat isotropic coordinate-ball cutoff with local term $c\log(\mu\delta)\delta^{(4)}$. The same numerical constant $\mu$ is used in both schemes. A coordinate radius $\delta$ corresponds locally to a proper radius $\varepsilon=\ell\delta/u$. It follows that

$$
\boxed{
T_\mu(X,Y)=\Omega(u)^2\Omega(v)^2 T^{\rm flat}_\mu(X,Y)
-c\log(u/\ell)\delta_g(X,Y).
}
\tag{4.2}
$$

Smooth corrections to the local distance relation vanish in this logarithmic finite part. Formula (4.2) is exact for the two explicitly specified spherical-cutoff schemes; an independent finite scheme choice could add a constant delta term. Neither term on its right separately needs to be AdS invariant. Their sum is invariant by construction.

The nonconstant logarithm cannot be mimicked by a constant coupling shift. Omitting it produces a spurious overall-momentum logarithm in the boundary correlator. This is the local correction associated with conformal transport of the ultraviolet subtraction, not an additional boundary-source counterterm.

### 4.1 Mixed position–momentum kernel

Let $q\ge0$ be the exchanged tangential momentum, $d=|u-v|$ and $s=u+v$. Fourier transformation in the three relative tangential coordinates gives, for $u\ne v$,

$$
\boxed{
B_{\rm off}(u,v;q)=\frac1{16\pi^2}
\left[\frac{e^{-qd}}d+\frac{e^{-qs}}s
-\frac{e^{-qd}-e^{-qs}}{q\,uv}\right].
}
\tag{4.3}
$$

Here the subscript denotes the off-diagonal kernel. The last term at $q=0$ is $-2/\max(u,v)$. The Fourier measure is $\int_p=d^3p/(2\pi)^3$, so (4.3) also equals $\int_p g_D(u,v;p)g_D(u,v;|p+q|)$ away from the diagonal.

For a precise radial distribution, define

$$
H_{\mu,q}(u,v)=\lim_{\delta\downarrow0}
\left[\mathbf1_{|u-v|>\delta}\frac{e^{-q|u-v|}}{|u-v|}
+2\log(\mu\delta)\delta(u-v)\right].
\tag{4.4}
$$

A flat sphere is not a radial strip: the conversion adds $(1+2\log2)\delta(u-v)$ inside the brackets multiplied by $1/(16\pi^2)$. Indeed the normalized $S^3$ average is $\langle-\log|\cos\theta|\rangle=\log2+1/2$. Combining this finite constant with (4.2), the invariant radial kernel is

$$
\boxed{
B_\mu^{\rm AdS}=\frac1{16\pi^2}
\left[H_{\mu,q}+\frac{e^{-qs}}s
-\frac{e^{-qd}-e^{-qs}}{q\,uv}
+\left(1+2\log2+2\log\frac\ell u\right)\delta(u-v)\right].
}
\tag{4.5}
$$

This formula specifies both the singular extension and all its finite constants.

## 5. The finite-radius four-point kernel

For one unordered channel $A|B$, with two external momenta in each subset, put

$$
f_{A,z}(u)=\prod_{i\in A}p_z(u;k_i),\qquad
f_{B,z}(v)=\prod_{i\in B}p_z(v;k_i),\qquad
q=\left|\sum_{i\in A}\mathbf k_i\right|.
\tag{5.1}
$$

The finite-radius channel is

$$
\boxed{
\mathcal I_{z,\mu}(A|B)=
\langle B_\mu^{\rm AdS},f_{A,z}\otimes f_{B,z}\rangle,
\qquad
\mathcal C^{(4)}_{z,\rm fish}
=\frac{\lambda^2\ell^4}{2}\sum_{A|B}\mathcal I_{z,\mu}(A|B).
}
\tag{5.2}
$$

The momentum-conservation delta function has been stripped. This is an explicitly renormalized finite-radius object; the factor $\ell^4$ follows from the original source normalization.

A representation without an ultraviolet cutoff is useful for actual evaluation. Set

$$
\alpha_t=(1+t)/2,\qquad\beta_t=(1-t)/2,
\qquad Q_z=\int_0^\infty f_{A,z}(u)f_{B,z}(u)\,du,
$$

$$
\mathcal H_z(t)=\frac1{32\pi^2}\int_0^\infty ds\,
\bigl[f_{A,z}(\alpha_ts)f_{B,z}(\beta_ts)
+f_{B,z}(\alpha_ts)f_{A,z}(\beta_ts)\bigr]
\left[\frac{e^{-qst}}t+e^{-qs}
-\frac{4(e^{-qst}-e^{-qs})}{qs(1-t^2)}\right].
\tag{5.3}
$$

Then

$$
\boxed{
\mathcal I_{z,\mu}=\int_0^1
\left[\mathcal H_z(t)-\frac{cQ_z}{t}\right]dt
+cQ_z\left[\log(4\mu\ell)+\frac12\right].
}
\tag{5.4}
$$

For $q=0$ the final bracket in (5.3) is $t^{-1}+1-4/(1+t)$. To derive (5.4), change variables to $s=u+v$, $t=|u-v|/(u+v)$. Removing the radial geodesic slab corresponds to $t>\tanh(\varepsilon/(2\ell))$. The local logarithm in (2.2) then leaves $cQ_z\log(2\mu\ell)$; the sphere-to-slab correction adds $cQ_z(\log2+1/2)$. The integrand's $cQ_z/t$ term is subtracted explicitly. For positive $k_i$ the remaining integrals converge; exceptional soft momenta can be treated after smearing rather than by separately evaluating divergent pieces.

The scale dependence is already local before taking the boundary limit: $\mu\partial_\mu\mathcal I_{z,\mu}=cQ_z$. Since $Q_z$ is the same product of four profiles in every channel, the running (3.2) cancels the scale derivative of $-\lambda\ell^4Q_z+(\lambda^2\ell^4/2)\sum_{A|B}\mathcal I_{z,\mu}$ through order $\lambda^2$ at every fixed radius.

The source profile is piecewise elementary:

$$
p_z(u;k)=\frac{e^{-k\max(u,z)}\sinh(k\min(u,z))}{kz},
\qquad p_z(u;0)=\min(u/z,1).
\tag{5.5}
$$

Consequently the $s$ integration in (5.3) can be performed piecewise using exponential integrals, with breakpoints $s=z/\alpha_t,z/\beta_t$. At $q=0$ it reduces to finite sums of integrated exponentials. This gives, in particular, a one-dimensional numerical evaluation with no coincident-point regulator; an example is reported in §9.

## 6. Closed boundary kernel

Let

$$
a=\sum_{i\in A}k_i,\qquad b=\sum_{i\in B}k_i,\qquad
E=a+b,\qquad 0\le q\le\min(a,b).
\tag{6.1}
$$

Initially take $a,b>0$. The physical inequalities follow from tangential momentum conservation and the triangle inequality. In the boundary limit $f_{A,z}\to e^{-au}$ and $f_{B,z}\to e^{-bu}$. Define

$$
J(a,b,q)=\frac{\log[(a+q)/(b+q)]}{a-b},\qquad
J(a,a,q)=\frac1{a+q},
\tag{6.2}
$$

$$
\alpha=\frac{a-q}{a+q},\qquad\beta=\frac{b-q}{b+q},\qquad
D(a,b,q)=\frac{\pi^2/6-\operatorname{Li}_2(\alpha)
-\operatorname{Li}_2(\beta)+\operatorname{Li}_2(\alpha\beta)}q.
\tag{6.3}
$$

In the physical positive-$q$ region, all dilogarithm arguments are in $[0,1]$, so no analytic-continuation branch convention is hidden. The result in the geodesic scheme is

$$
\boxed{
\mathcal I_\mu(a,b,q)=\frac1{16\pi^2}
\left\{
\frac{\displaystyle\log\frac{(\mu\ell E)^2}{(a+q)(b+q)}+1+2\log2}{E}
+J(a,b,q)-D(a,b,q)
\right\}.
}
\tag{6.4}
$$

For completeness, the three radial integrations leading to this answer are as follows. The direct strip finite part is

$$
\lim_{\delta\downarrow0}\frac1E
\left[E_1((a+q)\delta)+E_1((b+q)\delta)+2\log(\mu\delta)\right]
=\frac{\log[\mu^2/((a+q)(b+q))]-2\gamma_E}{E}.
\tag{6.5}
$$

The image term is $J(a,b,q)$. The mixed term is

$$
\int_0^\infty du\,dv\,e^{-au-bv}
\frac{e^{-q|u-v|}-e^{-q(u+v)}}{q\,uv}=D(a,b,q).
\tag{6.6}
$$

One derivation differentiates this integral with respect to $a$:

$$
\partial_aD=-\frac2{a^2-q^2}\log\frac{a+b}{b+q},
\qquad D\to0\quad(a\to\infty).
\tag{6.7}
$$

Changing variable from $a$ to $(a-q)/(a+q)$ integrates (6.7) to (6.3). The invariant local correction in (4.5) adds

$$
\frac1{16\pi^2E}
\left[1+2\log2+2\log(\ell E)+2\gamma_E\right].
\tag{6.8}
$$

This cancels the Euler constant and the spurious overall momentum logarithm in the fixed-scale flat result, yielding (6.4).

The complete connected boundary four-point function, under the mass condition (1.2), is therefore

$$
\boxed{
\mathcal C_\partial^{(4)}(\mathbf k_1,\ldots,\mathbf k_4)
=-\frac{\lambda\ell^4}{\sum_i k_i}
+\frac{\lambda^2\ell^4}{2}
\sum_{\text{three unordered }A|B}\mathcal I_\mu(a,b,q)
+O(\lambda^3).
}
\tag{6.9}
$$

It multiplies $(2\pi)^3\delta^{(3)}(\sum_i\mathbf k_i)$. The remainder is coefficientwise renormalized perturbation theory, not a nonperturbative fixed-coupling uniform estimate in $z$.

### 6.1 Exceptional limits and isometry checks

At $q=0$, interpret (6.3) continuously as

$$
D(a,b,0)=\frac2b\log\frac Ea+\frac2a\log\frac Eb.
\tag{6.10}
$$

Useful exact values are

$$
\mathcal I_\mu(a,a,0)=\frac{\log(\mu\ell)+3/2-2\log2}{16\pi^2a},
\qquad
\mathcal I_\mu(a,a,a)=\frac{\log(\mu\ell)+1+\log2-\pi^2/6}{16\pi^2a},
\tag{6.11}
$$

$$
\lim_{a\to0^+}\mathcal I_\mu(a,b,0)
=\frac{2\log(2\mu\ell)-1}{16\pi^2b}\quad(b>0).
\tag{6.12}
$$

In (6.12) logarithms from the separate direct, image and mixed terms cancel. Separating those pieces at exactly zero pair momentum before combining them would be invalid.

This limit is uniform over the physical corner $0\le q\le a\to0$ at fixed $b>0$. To see this without expanding nearly canceling dilogarithms, the tangential second moment of the positive position-space bubble is

$$
\int d^3R\,|R|^2g_D(R;u,v)^2
=\frac{\min(u,v)^2}{8\pi^2\max(u,v)}.
$$

The angular Fourier estimate $0\le1-\sin(qR)/(qR)\le q^2R^2/6$ therefore gives

$$
0\le B_{\rm off}(u,v;0)-B_{\rm off}(u,v;q)
\le\frac{q^2\min(u,v)^2}{48\pi^2\max(u,v)}.
$$

The local extension is $q$ independent, so the same bound can be integrated against $e^{-au-bv}$. Its radial integral is $O(1+|\log a|)$ as $a\to0$ with $b$ bounded away from zero. Since $q\le a$, the difference of the two renormalized channel kernels tends uniformly to zero. Thus (6.4) has a bounded continuous shape function on the compact physical domain $E=1$, including its soft-pair corners. Together with the degree $-1$ homogeneity below, it is locally integrable at total softness in the nine independent external momentum components; no distribution concentrated at total zero momentum is needed to represent the constructed limit.

At fixed proper scale $\mu$ and fixed $\ell$,

$$
\mathcal I_\mu(ra,rb,rq)=r^{-1}\mathcal I_\mu(a,b,q),
\qquad
\mu\partial_\mu\mathcal I_\mu=\frac1{8\pi^2E}.
\tag{6.13}
$$

The first is the momentum homogeneity required by four boundary operators of dimension two in three dimensions. The second cancels the scale variation of the tree term under (3.2). A nonzero bulk beta function thus does not imply that an AdS isometry must acquire a spurious boundary momentum-scale anomaly: the proper ultraviolet scale is fixed under that isometry, and the conformal-transport term is essential. Invariance of the position-space construction also gives the other Euclidean AdS boundary conformal transformations, as distributional identities with the chosen contact prescription.

## 7. The Schwartz distribution boundary limit

**Theorem (fish graph in the stated model).** After the bulk extension (2.2), the finite-radius fish functional has a boundary limit for Schwartz sources, with no additional quartic source subtraction. The associated four-point distributions converge on arbitrary Schwartz tests in the four boundary positions. The limiting momentum kernel is (6.4).

We give estimates controlling the source layer rather than interchanging a bare loop integral with the pointwise external-leg limit.

### 7.1 Uniform source-profile regularity

Let $P_t=e^{-t|D|}$ be the three-dimensional Poisson semigroup. For $j\in\mathcal S(\mathbb R^3)$ define

$$
U_z(u)=\frac1{2z}\int_{|u-z|}^{u+z}P_tj\,dt,
\qquad U_0(u)=P_uj,
\qquad F_z=\mathbf1_{u>0}U_z^2.
\tag{7.1}
$$

$U_z$ has precisely the multiplier $p_z$. For $0<z\le1$ (after choosing a fixed coordinate length unit),

$$
\|U_z(u)\|_p\le\|j\|_p,
\qquad
\|U_z(u)\|_p\le C_pu^{-3(1-1/p)}\|j\|_1\quad(u\ge2).
\tag{7.2}
$$

These follow from the Poisson contraction and scaling estimates; in the second bound the averaged semigroup times lie between $u/2$ and $3u/2$. Pointwise convergence in $u>0$, (7.2) with $p=2$, and dominated convergence show $U_z\to U_0$ strongly in $L^2(\mathbb R^4_+)$. Uniform $L^\infty$ control implies

$$
F_z\to F_0\quad\text{strongly in }L^1\cap L^2.
\tag{7.3}
$$

The $1/z$ slope inside the layer does not obstruct a uniform bounded-variation estimate. For $u<z$,

$$
\partial_uU_z=\frac{P_{u+z}+P_{z-u}}{2z}j,
\qquad \|\partial_uU_z\|_2\le\|j\|_2/z.
\tag{7.4}
$$

For $u>z$, $\partial_uU_z=-|D|U_z$, with norm bounded by $\||D|j\|_2$ on bounded $u$ ranges and by $Cu^{-5/2}\|j\|_1$ for $u\ge2$. Hence

$$
\sup_u\|F_z(u)\|_{L^2_y}\le\|j\|_4^2,
\qquad
\operatorname{Var}_{u}(F_z;L^2_y)\le C_j,
\qquad
\|\nabla_yF_z\|_{L^2(\mathbb R^4)}\le C_j,
\tag{7.5}
$$

uniformly in $z$. For $F_0$, its zero extension has the finite $L^2_y$-valued jump $j^2$ at $u=0$, which is included in its variation. The translation estimate

$$
\|F_z(u+h,y)-F_z(u,y)\|_{L^2_{u,y}}^2
\le2\sup_u\|F_z(u)\|_2\,|h|\,
\operatorname{Var}_{u}(F_z;L^2_y)
\tag{7.6}
$$

then gives uniform $H^{s'}(\mathbb R^4)$ bounds for every $0<s'<1/2$. Combined with (7.3), interpolation yields

$$
\boxed{F_z\to F_0\text{ strongly in }L^1\cap H^s(\mathbb R^4),
\qquad 0<s<\tfrac12.}
\tag{7.7}
$$

The endpoint $s=1/2$ is generally false because of the limiting jump. No endpoint estimate is needed below.

### 7.2 Continuity of all renormalized pieces

The direct flat extension of $1/(16\pi^4|X-Y|^4)$ is a translation-invariant logarithmic Fourier multiplier. Its ultraviolet growth is bounded by any positive power $|P|^{2s}$, and its infrared singularity $\log|P|$ is locally integrable in four momentum dimensions. Equation (7.7) controls the ultraviolet quadratic form; strong $L^1$ convergence controls the infrared part by uniform convergence of the Fourier transforms. Thus the direct renormalized form converges.

The tangential $L^1$ norms of the image-square kernel and the absolute doubled mixed kernel are exactly

$$
\frac1{16\pi^2(u+v)},\qquad
\frac1{8\pi^2\max(u,v)},
\tag{7.8}
$$

respectively. The Carleman operator with kernel $1/(u+v)$ is bounded on $L^2(\mathbb R_+)$; the kernel $1/\max(u,v)$ is the sum of the Hardy operator and its adjoint and is also bounded. Tangential Young inequalities therefore bound both pieces on $L^2(\mathbb R^4_+)$. Strong $L^2$ convergence in (7.3) proves convergence of their forms, including the simultaneous boundary corner.

Finally the conformal-transport term is proportional to

$$
\int_0^\infty du\,\log(\ell/u)\int d^3y\,U_z(u,y)^4.
\tag{7.9}
$$

Near zero, the $L^4$ norm is uniformly bounded; at infinity its fourth power decays as $u^{-9}$ by (7.2). Both are integrable with $|\log(\ell/u)|$. Dominated convergence proves the limit of (7.9).

These estimates prove the diagonal-source assertion. Products $U_{i,z}U_{j,z}$ at a single vertex follow by polarization of the square, which also handles each individual channel with four distinct sources. Every estimate is bounded by finitely many Schwartz seminorms of those sources, uniformly in $z$. Nuclearity of Schwartz space then extends convergence from finite sums of factorized tests to arbitrary $\mathcal S(\mathbb R^{12})$ tests. This supplies the full distribution statement, rather than only convergence for a single common source.

No boundary-supported extension is forced: the bulk-diagonal logarithm was removed by (2.2), the image/mixed forms are bounded, and (7.9) is integrable. Optional finite boundary interactions would define an additional prescription or theory; they are not required by this graph's divergence.

## 8. Generating functional and scope of the quantum result

At source degree four the finite-radius functional is

$$
W_z^{[4]}[j]=-\frac\lambda{24}\int\epsilon\,\Phi_z^4
+\frac{\lambda^2}{16}\int\epsilon(X)\epsilon(Y)
\Phi_z(X)^2T_\mu(X,Y)\Phi_z(Y)^2+O(\lambda^3),
\tag{8.1}
$$

under (1.2). Its tree part is the previously constructed contact functional; its second term is (5.2) after Fourier transformation and differentiation. Section 7 establishes its boundary limit without a new quartic source counterterm. This statement is consistent with the tree-level smeared-source convergence window around $\Delta=2$ in three boundary dimensions.

Equation (8.1) is not the full $W_z$ through order $\lambda^2$. The degree-six tree contribution was computed separately in [the multivertex report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/multivertex_trees.md>). The degree-two sector at this order contains genuine two-loop self-energy effects and remains to be constructed. Without the mass condition (1.2), the four-point answer must also include the matched tadpole-induced mass variations of its external legs and extrapolate weight; simply adding (6.9) to an unmatched fixed-power calculation is not valid.

No Lorentzian continuation, operator-valued limit, general-spin loop calculation, or independent dual-CFT match is established here. This report concerns a fixed Euclidean AdS scalar QFT and its renormalized insertion distributions.

## 9. Checks and a finite-radius example

The [verification script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/fish_checks.wl>) and its [recorded output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/fish_checks_results.txt>) provide eleven exact symbolic residuals: the tangential second moment used in the uniform soft-corner bound, sphere/strip finite constant, dilogarithm derivative and symmetry, invariant/flat matching, scale derivative, homogeneity, two degenerate kernels, the one-soft-pair limit, and RG cancellation. All eleven residuals vanish, with no Wolfram messages.

A distinct one-dimensional invariant integral obtained from (5.3) at the boundary agrees with (6.4) at four asymmetric or degenerate samples to better than 30 digits using 60-digit arithmetic. Independent fresh derivations also reproduced the local extension, loop factor, beta function, Fourier bubble and boundary radial integral. A separate review checked the fractional-Sobolev proof and its strict $s<1/2$ restriction.

For a finite-radius computation take $k_i=1/2$, a channel with $q=0$, and $\mu\ell=1$, in the chosen coordinate units. Then $a=b=1$. The piecewise exponential integration in (5.3) gives:

| $z$ | $Q_z$ | $\mathcal I_{z,\mu}$ | $\mathcal I_{z,\mu}-\mathcal I_\mu(1,1,0)$ |
|---|---:|---:|---:|
| $10^{-1}$ | $0.4264422841$ | $0.0004751530610$ | $-2.448963089\times10^{-4}$ |
| $10^{-2}$ | $0.4920679257$ | $0.0006915318548$ | $-2.851751509\times10^{-5}$ |
| $10^{-3}$ | $0.4992006829$ | $0.0007171507781$ | $-2.898591808\times10^{-6}$ |

The exact boundary value is $(3/2-2\log2)/(16\pi^2)=0.0007200493698838065\ldots$, and $Q_z\to1/2$. The computation uses 70-digit working precision and a regular one-dimensional integral after analytically performing the inner piecewise exponential integral. These are finite numerical checks, not the proof of the continuum limit or a claim about its optimal convergence rate.

**Established:** an invariant bulk coupling prescription; the finite-radius fish insertion functional; a closed, normalized boundary four-point kernel; scheme matching and RG consistency; and Schwartz distribution convergence with no forced quartic source counterterm in this model.

**Remaining quantum question:** the order-$\lambda^2$ two-point self-energy is not a constant tadpole. Its overlapping short-distance renormalization, physical mass and residue, and resulting extrapolate operator must be determined before a complete order-$\lambda^2$ quantum generating functional can be asserted.
