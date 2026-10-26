# Linearized gravity: a local Weyl insertion and the stress-tensor limit

## Result and scope

In the radiative Dirichlet sector of linearized Einstein gravity on Poincaré AdS₄, the stress-normalized electric Weyl tensor

$$
\boxed{\mathcal T_{ij}(z,x)=-\frac z{\kappa^2}C^{(1)}_{zizj}(x,z),
\qquad \kappa^2=8\pi G}
\tag{1}
$$

is a local linearized-diffeomorphism invariant at every finite radius. Its boundary limit is the Brown–York stress tensor, with

$$
\boxed{C_T=\frac{24\ell^2}{\pi^2\kappa^2}
=\frac{3\ell^2}{\pi^3G}.}
\tag{2}
$$

Its finite-radius Euclidean thin-layer insertion functional requires a local source subtraction; smooth compact radial insertions are finite before subtraction. The complete subtraction is obtained only after including the vector and scalar constraint sectors: the apparent nonlocal projector contacts of a TT-only calculation cancel. After this subtraction, arbitrary Schwartz tensor sources have a uniform unequal-radius boundary limit. The physical Lorentzian field converges on a common graviton Fock domain, and its finite-radius form factor is $\cos(z\sqrt s)$, not the metric extrapolation form factor.

This is a construction in a specified free gravitational sector, not a nonlinear relational-observable prescription. Fixed boundary metric, the Poincaré vacuum, absence of extra boundary dynamics and edge sectors, and compact interior sources before the thin-layer limit are part of the definition. Pure-gauge tails of radial gauge are treated explicitly below; a globally bounded radial-gauge inverse is not assumed.

The conventions are those of [the scalar reference](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) for $\Omega$, source measure, normalized $W$, and the order of limits, and of [the CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L95>) for $\omega=\delta\theta$, gauge reduction, and mode normalization.

## 1. Action, gauge quotient, and canonical normalization

Use $R^\rho{}_{\sigma\mu\nu}=\partial_\mu\Gamma^\rho_{\nu\sigma}-\partial_\nu\Gamma^\rho_{\mu\sigma}+\cdots$, so AdS has $R_{\mu\nu}=-3g_{\mu\nu}/\ell^2$. In Lorentzian signature $(-,+,+,+)$,

$$
S_L=\frac1{2\kappa^2}\int_M\sqrt{-g}(R+6/\ell^2)
+\frac1{\kappa^2}\int_{\Gamma}\sqrt{-h}\,K
-\frac1{\kappa^2}\int_{\Gamma}\sqrt{-h}\left(\frac2\ell+\frac\ell2R[h]\right).
\tag{3}
$$

At the lower radial cutoff take $n=-z\partial_z/\ell$ and $K_{ij}=\tfrac12\mathcal L_nh_{ij}$. No parity-odd finite boundary term is added. Wick rotation gives $S_E$ with negative Einstein–Hilbert and GHY terms and positive counterterms.

Write, in a radial-gauge representative,

$$
g=\Omega^{-2}\{dz^2+(\eta_{ij}+\gamma_{ij})dx^idx^j\},
\qquad \Omega=z/\ell.
$$

Here $\gamma$ is the actual dimensionless metric perturbation. If instead $g=g^{(0)}+\kappa h^{\rm can}$, then $\gamma_{ij}=\kappa\Omega^2h^{\rm can}_{ij}$. The Weyl tensor in (1) is linear in the actual metric perturbation; in canonical-field notation it is $\kappa C^{(1)}[h^{\rm can}]$.

The physical radiative solutions may be represented by

$$
\partial^i\gamma_{ij}=0,\qquad \eta^{ij}\gamma_{ij}=0,
\qquad \gamma_{ij}=z^3\gamma_{(3)ij}+O(z^5)
$$

at the source-free boundary. Diffeomorphisms preserving the boundary data and carrying no independent boundary charge are quotiented before choosing the two physical polarizations. The zero-momentum/global-charge sectors and additional boundary gravitons are not included in this radiative mode space.

Let $A=\ell^2/\kappa^2$. The quadratic action on this physical sector is

$$
S_{L,\mathrm{TT}}^{(2)}=-\frac A8\int dz\,d^3x\,z^{-2}
[\gamma'_{ij}\gamma'^{ij}+\partial_a\gamma_{ij}\partial^a\gamma^{ij}],
\qquad
\gamma''-\frac2z\gamma'+\square\gamma=0.
\tag{4}
$$

It follows from (3), including its radial boundary completion, rather than from an independent assignment of two scalar normalizations. In radial ADM variables the quadratic terms without two derivatives cancel by integration by parts against their boundary completion. The full Euclidean off-shell action will be used in §3.

On source-free wave packets, the integrated CPS potential and form reduce to

$$
\theta=\frac A4\int_{\Sigma_t}dz\,d^2x\,z^{-2}\dot\gamma^{ij}\delta\gamma_{ij},
\qquad
\omega=\delta\theta=\frac A4\int z^{-2}\delta\dot\gamma^{ij}\wedge\delta\gamma_{ij}.
\tag{5}
$$

This is the convention $\omega=\delta\theta$, not its negative. The boundary and corner terms in (3) are retained before taking the source-free restriction. Their symplectic flux vanishes for $\delta\gamma_{(0)}=0$; the bilinear curvature-counterterm symplectic corner integrand scales as $z^5$ for source-free TT variations $\delta\gamma=O(z^3)$. Wave packets have no endpoint contribution at spatial infinity or the Poincaré horizon. These statements are first made on a dense packet domain, not on an individual delta-normalized plane wave.

For $p_i=(-E,\mathbf p)$, $q^2=E^2-|\mathbf p|^2>0$, choose unit-contraction physical polarizations $e^\lambda_{ij}e^{\lambda' *ij}=\delta_{\lambda\lambda'}$. Then

$$
\pi^L_{ij}=\eta_{ij}+\frac{p_ip_j}{q^2},\qquad
\Pi^L_{ij,kl}=\frac12(\pi^L_{ik}\pi^L_{jl}+\pi^L_{il}\pi^L_{jk}-\pi^L_{ij}\pi^L_{kl})
=\sum_{\lambda=1}^2e^\lambda_{ij}e^{\lambda *}_{kl}.
$$

Using $R_q(z)=z^{3/2}J_{3/2}(qz)$ and $\int_0^\infty dz\,z^{-2}R_qR_{q'}=\delta(q-q')/q$, the modes

$$
u^{\lambda}_{\mathbf p q,ij}
=\frac1{2\pi}\sqrt{\frac{2\kappa^2q}{\ell^2E}}
 R_q(z)e^\lambda_{ij}(p)e^{-iEt+i\mathbf p\cdot\mathbf x}
\tag{6}
$$

have the prescribed norm $iX_{u_2}^*\cdot X_{u_1}\cdot\omega=\delta_{12}$. Thus $\omega=i\int\delta a^\dagger\wedge\delta a$ and $[a,a^\dagger]=1$ with the delta functions associated to $(\mathbf p,q,\lambda)$. This fixes all subsequent factors of $\kappa$ and $2$.

## 2. Why Weyl, and its relation to Brown–York data

Because the background Weyl tensor vanishes,

$$
C^{(1)}[\mathcal L_\xi g^{(0)}]=\mathcal L_\xi C[g^{(0)}]=0.
\tag{7}
$$

Consequently the background-weighted component (1) is invariant under the full linearized diffeomorphism, not merely a residual radial transformation. This is the reason a finite-coordinate-radius observable is possible here without a nonlinear dressing. It does not extend to higher perturbative orders by keeping the same coordinate formula.

Put $h=\eta^{ij}\gamma_{ij}$ and $v_i=\partial^j\gamma_{ji}$. Conformal covariance of the all-lower Weyl tensor gives

$$
\begin{aligned}
C^{(1)}_{zizj}[g]=\frac{\ell^2}{z^2}\bigg\{
&-\frac14\gamma''_{ij}+\frac14\square\gamma_{ij}
-\frac14(\partial_iv_j+\partial_jv_i-\partial_i\partial_jh)\\
&+\eta_{ij}\left[\frac{h''}{12}+\frac{\partial\cdot v}{6}-\frac{\square h}{6}\right]\bigg\}.
\end{aligned}
\tag{8}
$$

In particular, on the radial TT representative,

$$
\mathcal T_{ij}=\frac A{4z}(\gamma''_{ij}-\square\gamma_{ij})
\overset{\rm on\ shell}=\frac A{2z}(\gamma'_{ij}/z-\square\gamma_{ij}).
\tag{9}
$$

The equality uses the field equation and must not be inserted into an off-shell Green function without its contact terms.

The stress convention is $\tau_{ij}=-2\delta S_L^{\rm ren}/(\sqrt{-h}\,\delta h^{ij})$. With (3),

$$
\tau_{ij}=\frac1{\kappa^2}[-K_{ij}+Kh_{ij}-2h_{ij}/\ell+\ell G_{ij}[h]].
$$

Its linear TT part is $\tau_{ij}=\ell(\gamma'_{ij}/z-\square\gamma_{ij})/(2\kappa^2)$. Hence

$$
\boxed{
T_{ij}=\lim_{z\to0}\frac\ell z\tau_{ij}
=\lim_{z\to0}\mathcal T_{ij}(z)
=\frac{3\ell^2}{2\kappa^2}\gamma_{(3)ij}.
}
\tag{10}
$$

The finite quantity $(\ell/z)\tau_{ij}$ equals (1) on the physical linearized solutions, but differs off shell by the Einstein equation. The metric extrapolation with the reference's conformal weight is

$$
\mathcal M_{z,ij}=\frac{3}{2\kappa^2\ell}\Omega^{-3}\gamma_{ij}.
$$

It has the same limit (10), but is not the same finite-radius observable. On a normalizable mode, putting $x=qz$,

$$
\mathcal T_z=\cos(x)T,
\qquad
\mathcal M_z=\frac{3(\sin x-x\cos x)}{x^3}T.
\tag{11}
$$

The first equality follows by applying the full differential operator in (9) to $R_q$; the second is just the metric's radial mode function.

## 3. The full Euclidean inverse: constraints are necessary

For this section $\eta$ is replaced by $\delta$ and $\square_E\to-k^2$. All Fourier transforms use $e^{ikx}$ and $\int_k=d^3k/(2\pi)^3$. Define

$$
P_{ij}=\delta_{ij}-\frac{k_ik_j}{k^2},\quad
\Pi_{ij,kl}=\frac12(P_{ik}P_{jl}+P_{il}P_{jk}-P_{ij}P_{kl}),
$$

$$
\mathbb I_{ij,kl}=\delta_{i(k}\delta_{l)j}-\frac13\delta_{ij}\delta_{kl},
\qquad
P^s_{ij,kl}=\frac32\left(\frac{k_ik_j}{k^2}-\frac{\delta_{ij}}3\right)
\left(\frac{k_kk_l}{k^2}-\frac{\delta_{kl}}3\right).
$$

The remaining tracefree vector projector is $P^v=\mathbb I-\Pi-P^s$.

### 3.1 The six radial components

The gauge-fixed quadratic action, for compact interior variations and with the Dirichlet boundary completion understood, is

$$
S_E^{(2)}=\frac A8\int z^{-2}\big[
\gamma'_{ij}\gamma'_{ij}-(h')^2
+(\partial_a\gamma_{ij})^2-(\partial_ah)^2
-2(\partial_i\gamma_{ij})^2+2\partial_i\gamma_{ij}\partial_jh\big].
\tag{12}
$$

To expose its inverse, align $k$ with $x^3$ and write

$$
\gamma=\begin{pmatrix}U+T&D&V_1\\D&U-T&V_2\\V_1&V_2&V\end{pmatrix}.
$$

Then

$$
S_E^{(2)}=\frac A4\int dz\,z^{-2}
[T'^2+D'^2+k^2(T^2+D^2)+V_1'^2+V_2'^2-U'^2-2U'V'-k^2U^2].
\tag{13}
$$

The symbols $T,D$ in (13) are metric components, not the stress tensor. Define

$$
H=-\partial_z z^{-2}\partial_z,\qquad L_k=H+k^2z^{-2},
$$

$$
G_k(z,w)=(zw)^{3/2}I_{3/2}(kz_<)K_{3/2}(kz_>),\qquad
G_0(z,w)=\frac{z_<^3}{3},
$$

$$
J(z,w)=\int_0^\infty du\,G_0(z,u)u^{-2}G_0(u,w)
=\frac{z_<^3z_>^2}{6}-\frac{z_<^5}{30}.
$$

Thus $L_kG_k=HG_0=\delta(z-w)$ and

$$
\begin{aligned}
\langle TT\rangle=\langle DD\rangle&=\frac2A G_k,\\
\langle V_aV_b\rangle&=\frac2A\delta_{ab}G_0,\\
\begin{pmatrix}\langle UU\rangle&\langle UV\rangle\\\langle VU\rangle&\langle VV\rangle\end{pmatrix}
&=\frac2A\begin{pmatrix}0&-G_0\\-G_0&G_0+k^2J\end{pmatrix}.
\end{aligned}
\tag{14}
$$

These are not six copies of a scalar Green function. The scalar quadratic form is indefinite. For example, with $\chi=U+L_k^{-1}HV$, it becomes

$$
S_s=\frac A4[-(\chi,L_k\chi)+(V,HL_k^{-1}HV)].
$$

The regulated rotation $\chi=i\chi_E$ defines its analytic Gaussian inverse and reproduces (14). This is not a positive real-metric probability measure. The invariant curvature covariance will have its own positivity check.

### 3.2 Radial gauge at the interior endpoint

The $VV$ entry of (14) grows as $z^2$ for $z>w$. Therefore (14) is **not** an inverse with all radial-gauge metric components bounded at the Poincaré horizon. Imposing that extra condition would make this scalar inverse illegitimate.

For the compact Weyl sources used below, the vector/scalar responses vanish below their source slab and above it have the form

$$
V_a=\text{constant},\qquad U=\text{constant},\qquad
V=V_0-\tfrac12k^2Uz^2.
\tag{15}
$$

They are pure gauge. The residual radial diffeomorphism has

$$
\xi^z=z\sigma(x),\qquad
\xi^i=a^i(x)-\tfrac12z^2\partial^i\sigma(x).
$$

Choosing $\sigma=-U/2$ and appropriate $a^i$ generates (15). A smoothly cut-off inverse diffeomorphism outside a slab containing all insertions removes this tail, introducing lapse/shift components only in a finite transition region. It leaves Weyl unchanged and gives an interior-regular representative. At $k\ne0$, homogeneous UV Dirichlet data allow no extra boundary-preserving residual of this form. At zero momentum the formulas are used as distributions; global isometries are quotiented separately.

There is also a constraint check, not just a gauge assertion. The metric source obtained by varying a compact Weyl insertion is covariantly conserved, by (7). Let $S^\mu{}_\nu$ be the residual of the full sourced Einstein equation. The radial-gauge inverse imposes $S^i{}_j=0$. Its Bianchi identity then gives

$$
\partial_zS^z{}_i-\frac4zS^z{}_i=0,
\qquad
\partial_zS^z{}_z-\frac3zS^z{}_z+ik_iS^i{}_z=0.
$$

The residual vanishes in the exterior region, where the responses are a physical TT solution plus (15), so it vanishes everywhere. This justifies using (14) on compact invariant sources. One must not instead evaluate an unregulated purported global radial-gauge action on the growing tail and discard its endpoint terms. The regular representative is the definition being used. A finite-slab regulator is admissible only with a limiting endpoint prescription that reproduces this invariant kernel.

### 3.3 The complete Weyl contacts

In the aligned-momentum basis, (8) gives the conformally flattened Weyl components

$$
C^{\rm flat}_{TT}=-\tfrac14(\partial_z^2+k^2)(T,D),\quad
C^{\rm flat}_{za z3}=-\tfrac14V_a'',
$$

$$
C^{\rm flat}_{z1z1}=C^{\rm flat}_{z2z2}
=\frac{V''-U''+k^2U}{12},\qquad
C^{\rm flat}_{z3z3}=-2C^{\rm flat}_{z1z1}.
$$

For $z,w>0$, write $K=-\partial_z[z^2\partial_z\delta(z-w)]$. The distributional identities needed in (14) are

$$
\begin{aligned}
(\partial_z^2+k^2)(\partial_w^2+k^2)G_k
&=4k^3zw\cosh(kz_<)e^{-kz_>}+K-3k^2z^2\delta,\\
\partial_z^2\partial_w^2G_0&=K,\qquad \frac K{zw}=-\partial_z^2\delta,\\
\frac A2\langle(V''-U''+k^2U)_z(V''-U''+k^2U)_w\rangle
&=3(K+k^2z^2\delta).
\end{aligned}
\tag{16}
$$

For example the first-derivative jump of $G_k$ is $-w^2$; the jump of the regular part of $(\partial_w^2+k^2)G_k$ is $2w$ and that of its $z$ derivative is $-2k^2w^2$. These determine the $\delta'',\delta'$ and $\delta$ coefficients in (16). The apparent $\delta'$ term disappears after division by $zw$.

Combining **all** sectors gives the full invariant Gaussian covariance

$$
\boxed{
\mathcal C_{ij,kl}(z,w;k)=A\left[
 k^3\cosh(kz_<)e^{-kz_>}\Pi_{ij,kl}
 -\frac14\mathbb I_{ij,kl}\partial_z^2\delta(z-w)
 +\frac14\mathcal K_{ij,kl}(k)\delta(z-w)\right],
}
\tag{17}
$$

where

$$
\begin{aligned}
\mathcal K_{ij,kl}={}&-3k^2\delta_{i(k}\delta_{l)j}
+\frac53k^2\delta_{ij}\delta_{kl}\\
&+\frac32(\delta_{ik}k_jk_l+\delta_{il}k_jk_k
+\delta_{jk}k_ik_l+\delta_{jl}k_ik_k)\\
&-2(\delta_{ij}k_kk_l+\delta_{kl}k_ik_j).
\end{aligned}
\tag{18}
$$

Indeed $\mathcal K=k^2(P^s-3\Pi)$, but the displayed expansion shows that it is polynomial. The $1/k^2$ and $1/k^4$ denominators in the intermediate projectors cancel. A TT-only calculation would instead retain $-A\Pi(\delta''+3k^2\delta)/4$, incorrectly presenting a boundary-nonlocal source contact as the full answer.

As a check on (17), the radial cosine spectral variable $r\ge0$ diagonalizes it into TT, vector and scalar eigenvalues

$$
\frac A4\left\{\frac{(r^2-k^2)^2}{r^2+k^2},\ r^2,\ r^2+k^2\right\}.
\tag{19}
$$

They are nonnegative on real compact tracefree test tensors. The indefinite metric Gaussian has therefore not been confused with a negative physical curvature covariance.

## 4. A local subtraction before the thin-layer limit

The source pairing retains the reference's conformal slice measure. For a compact smooth radial profile $f^{ij}(u,x)$, define

$$
\mathcal I_f=\int du\,d^3x\,f^{ij}(u,x)\mathcal T_{ij}(u,x),
\qquad
W[f]=\log\frac{Z[f]}{Z[0]}=\frac12\int f\mathcal C f.
\tag{20}
$$

It is also an ordinary covariant bulk metric insertion: if $\mathscr C$ denotes the linearized coordinate Weyl differential operator on $\delta g$, then

$$
\mathcal I_f=\int\epsilon\,J_f^{\mu\nu}\delta g_{\mu\nu},\qquad
J_f=-\frac{\Omega^4}{\kappa^2}\mathscr C^\dagger[uf],
\qquad \epsilon=\Omega^{-4}du\,d^3x.
$$

The adjoint here is with respect to the displayed flat-coordinate density; this formula defines all components of the metric source without deleting lapse/shift variations. Gauge invariance implies $\nabla_\mu J_f^{\mu\nu}=0$; conformal flatness also makes this source tracefree. Thus arbitrary compact tensor $f$ is allowed, not merely a boundary-TT source.

Let $F_{ij}=f_{ij}-\delta_{ij}f^k{}_k/3$. The exact local contribution of the last two terms in (17) is

$$
\boxed{
Q[f]=\frac A8\int du\,d^3x\,
[(\partial_uF_{ij})^2-3(\partial_aF_{ij})^2+6(\partial_iF_{ij})^2].
}
\tag{21}
$$

All products are bilinear source pairings, with $f(-k)$ paired with $f(k)$; complex sources do not change this to a Hermitian pairing. Boundary terms in deriving (21) vanish for compact radial profiles. Define

$$
W^{\rm ren}[f]=W[f]-Q[f].
\tag{22}
$$

This is a specified local source scheme, not a modification of the physical bulk boundary condition. Extra finite local terms would be a different source-contact convention.

For a layer $f(u,x)=\rho_{z,\delta}(u)j(x)$ with $\int du\,\rho=1$, the first term in (21) is proportional to $\|\rho'\|_2^2$, scaling as $\delta^{-3}$ for a rescaled fixed profile. The remaining terms scale as $\delta^{-1}$. For every nonzero real tracefree layer source this leading term diverges; hence no universal unrenormalized Euclidean thin-layer covariance exists. Complex bilinear sources can have vanishing self-pairing and are not individually asserted to diverge. Pairing the distributions first, subtracting (21), and only then shrinking the layers gives the unique continuous kernel

$$
\boxed{
C^{\rm ren}_{ij,kl}(z,w;k)
=A k^3\Pi_{ij,kl}\cosh(kz_<)e^{-kz_>}.
}
\tag{23}
$$

Equivalently, let $g_N(z,w;k)=\cosh(kz_<)e^{-kz_>}/k$ be the Neumann massless half-space Green function. Then $C^{\rm ren}=A\mathcal P_Eg_N$, where

$$
Q^E_{ij}=\delta_{ij}\square_E-\partial_i\partial_j,
\qquad
\mathcal P^E_{ij,kl}=\tfrac12(Q^E_{ik}Q^E_{jl}+Q^E_{il}Q^E_{jk}-Q^E_{ij}Q^E_{kl})
$$

has Fourier symbol $k^4\Pi$. It is a local fourth-order tensor differential operator. The renormalized kernel is therefore transverse and tracefree without restricting the original source. The raw divergence is a contact dictated by (17), as expected for an equation-of-motion identity inside a source functional.

## 5. Boundary distributions and the CFT tensor normalization

For $0\le a\le b$,

$$
0\le\cosh(ka)e^{-kb}\le1,\qquad
|\cosh(ka)e^{-kb}-1|\le kb.
$$

Since the Euclidean TT projector has operator norm one,

$$
\boxed{
\|C^{\rm ren}(z,w;k)-A k^3\Pi(k)\|
\le A z_> k^4.
}
\tag{24}
$$

This proves strong $\mathcal S'$ convergence for arbitrary relative radial rates, uniform on bounded Schwartz test sets. In particular,

$$
\boxed{
W_z^{\rm ren}[j]\longrightarrow
W_\partial[j]=\frac A2\int_k j^{ij}(-k)k^3\Pi_{ij,kl}(k)j^{kl}(k).
}
\tag{25}
$$

The polynomial-times-projector singularity at $k=0$ is harmless as a distribution; no inverse at a single zero momentum is assumed.

At separated Euclidean points, this kernel is

$$
\langle T_{ij}(x)T_{kl}(0)\rangle
=\frac{C_T}{|x|^6}\mathcal I_{ij,kl}(x),
$$

$$
I_{ij}(x)=\delta_{ij}-2x_ix_j/|x|^2,\qquad
\mathcal I_{ij,kl}=\tfrac12(I_{ik}I_{jl}+I_{il}I_{jk})-\tfrac13\delta_{ij}\delta_{kl}.
\tag{26}
$$

A direct normalization check uses momentum along $x^3$. Integrating the $1212$ component of $\mathcal I/|x|^6$ over $x^1,x^2$ gives $\pi/(8|x^3|^4)$. The one-dimensional finite-part transform is $\mathcal F[|x^3|^{-4}]=\pi|k|^3/6$, whereas $\Pi_{12,12}=1/2$. Therefore the tensor transform is $(\pi^2/24)k^3\Pi$, yielding (2). The distributional extension is the one fixed by (25); the separated function by itself does not specify contact terms. A parity-odd gravitational Chern–Simons contact is excluded by the convention in (3).

This is the conserved, traceless stress-tensor two-point structure and its Einstein normalization. It is not a claim that a free graviton reproduces the interacting boundary stress-tensor algebra or its higher connected correlators. In particular, the free graviton Hamiltonian is quadratic in the physical modes; the linear Brown–York operator here is not by itself its complete boundary charge. That charge requires the quadratic gravitational backreaction, which is outside this linear observable calculation.

## 6. Positive-energy fields, locality, and the operator limit

Use $\int d\omega\,d^2\mathbf p/(2\pi)^3\,e^{-i\omega t+i\mathbf p\cdot\mathbf x}$, $s=\omega^2-|\mathbf p|^2=q^2$, and $\theta_+=\theta(\omega)\theta(s)$. The modes (6) give

$$
\widetilde W_\gamma(z,w;p)
=\frac{4\pi\kappa^2}{\ell^2}\theta_+(zw)^{3/2}
J_{3/2}(qz)J_{3/2}(qw)\Pi^L(p).
\tag{27}
$$

Using the **on-shell** Weyl form factor now entails no inhomogeneous Green-function contact. The actual local curvature field has

$$
\boxed{
\widetilde W_{\mathcal T}(z,w;p)
=2A\,\theta_+s^{3/2}\cos(qz)\cos(qw)\Pi^L(p),
\qquad
\widetilde W_T(p)=2A\,\theta_+s^{3/2}\Pi^L(p).
}
\tag{28}
$$

Positivity is the polarization-sum statement, including the outer product of the radial cosines. It applies to arbitrary Schwartz symmetric tensor tests, not only conserved ones. Near a nonzero light-cone point, $\Pi^L$ has terms of order $1/s^2$, but $s^{3/2}\Pi^L$ has worst singularity $s^{-1/2}$, which is locally integrable. At the cone tip its homogeneity and the three-dimensional momentum measure are also integrable; Schwartz decay controls infinity. The raw TT metric in (27) is likewise a tempered physical field because $\sin x-x\cos x=O(x^3)$ cancels the same potential light-cone obstruction. This differs from the AdS₃ covariant Maxwell potential obstruction.

Locality is particularly transparent. Define

$$
Q^L_{ij}=\eta_{ij}\square-\partial_i\partial_j,\qquad
\mathcal P^L_{ij,kl}=\tfrac12(Q^L_{ik}Q^L_{jl}+Q^L_{il}Q^L_{jk}-Q^L_{ij}Q^L_{kl}).
$$

Its symbol is $s^2\Pi^L$. If $W_N$ is the canonical massless scalar Wightman function on the flat half-space with Neumann reflection, then

$$
W_{\mathcal T}(z,w;x)=A\mathcal P^L W_N(z,w;x),
$$

$$
W_N=\frac1{4\pi^2}\left[
\frac1{\mathbf x^2-(t-i0)^2+(z-w)^2}
+\frac1{\mathbf x^2-(t-i0)^2+(z+w)^2}\right].
\tag{29}
$$

Differentiation preserves causal support of the commutator. The reflected light cone does not connect bulk spacelike-separated points. Thus (29) proves locality of the curvature observable; no corresponding locality assertion is needed for a gauge-fixed TT potential. At the boundary, $\mathcal P(1/x^2)=48\mathcal I(x)/(x^2)^3$ recovers (2) and (26) after the Wightman continuation.

The Wick conversion is tensorial: $\mathcal T^E_{\tau\tau}=-\mathcal T^L_{tt}$, $\mathcal T^E_{\tau a}=-i\mathcal T^L_{ta}$, and $\mathcal T^E_{ab}=\mathcal T^L_{ab}$. Treating every component as a scalar would not reproduce the positive Lorentzian tensor kernel. Formula (23) is the locally subtracted Euclidean source extension; physical chronological products and differential operators may differ at coincidence by their canonical contacts.

**Common-domain theorem.** Let $j^{ij}$ be a real Schwartz tensor test on boundary spacetime, and let $N$ be the graviton number operator in the Fock representation defined by (6). If $h_{\square j}$ is the boundary one-particle wavefunction associated to $T(\square j)$, then

$$
\boxed{
\|[\mathcal T_z(j)-T(j)]\Psi\|
\le z^2\|h_{\square j}\|\,\|(N+1)^{1/2}\Psi\|,
\qquad \Psi\in D((N+1)^{1/2}).
}
\tag{30}
$$

Indeed the one-particle multiplier is $\cos(qz)$ and $|\cos(qz)-1|\le z^2q^2/2$. The preceding light-cone analysis makes the norm with the extra $q^4$ finite. The annihilation/creation estimates supply the remaining factor of two in (30). Complex tests follow by decomposition into real and imaginary parts. The corresponding metric multiplier is

$$
B(x)=\frac{3(\sin x-x\cos x)}{x^3}
=3\int_0^1du\,u^2\operatorname{sinc}(ux),\qquad |B(x)|\le1,
$$

so the metric extrapolation also converges on this common domain, but defines a different finite-radius field. Wick's theorem and the common invariant finite-particle core give the limits of products of finitely many fixed spacetime-smeared free fields. There is no bounded-operator norm assertion analogous to the Dirac CAR theorem, and no unsmeared or equal-time-only assertion.

## 7. The boundary source map is derived, not imposed at finite radius

For a TT boundary metric source $\gamma_{(0)}$, the interior-regular Euclidean solution is

$$
\gamma(z,k)=(1+kz)e^{-kz}\gamma_{(0)}(k).
$$

Its $z^3$ coefficient is $k^3\gamma_{(0)}/3$. Evaluating (3) and its Euclidean continuation yields, in the displayed local scheme,

$$
S_{E,\partial}^{\rm ren}[\gamma_{(0)}]
=-\frac A8\int_k\gamma_{(0)}^{ij}(-k)k^3\Pi_{ij,kl}\gamma_{(0)}^{kl}(k).
\tag{31}
$$

The metric source couples as $\tfrac12\int\gamma_{(0)}^{ij}T_{ij}$, whereas (20) uses $\int j^{ij}T_{ij}$. On TT sources the matching is $\gamma_{(0)}=2j$. For arbitrary $j$, (25) depends only on $\Pi j$, so the precise TT-saddle statement is $\gamma_{(0)}^{\rm TT}=2\Pi j$ and

$$
W_\partial[j]=-S_{E,\partial}^{\rm ren}[2\Pi j].
\tag{32}
$$

The first derivative of $W_\partial[j]$ is $\langle T\rangle=A k^3\Pi j=A k^3\gamma_{(0)}^{\rm TT}/2$, consistent with (10). This fixes the factor of two which would be missed by identifying a metric perturbation with an insertion source directly.

At a genuine wall $z=\varepsilon$, prescribe the induced TT perturbation $\gamma_\varepsilon$, keep only the interior region, and use the same intrinsic counterterm. The regular response and one-sided action are

$$
\mathcal T^{\rm BY}_\varepsilon
=\frac{A k^3}{2(1+k\varepsilon)}\gamma_\varepsilon,
\qquad
S_{E,\mathrm{IR}}^{\rm ren}[\gamma_\varepsilon]
=-\frac A8\int_k\gamma_\varepsilon(-k)
\frac{k^3\Pi}{1+k\varepsilon}\gamma_\varepsilon(k).
\tag{33}
$$

In contrast, the original bulk insertion has

$$
C^{\rm ren}(\varepsilon,\varepsilon;k)
=\frac A2k^3(1+e^{-2k\varepsilon})\Pi.
\tag{34}
$$

Even after the TT source map $\gamma_\varepsilon=2\Pi j$, (33) is not the functional (34). They agree only in the boundary limit. An effective action obtained by integrating out the removed UV region must retain that region's induced kernel; it is not the single-sided action merely renamed.

## 8. Verification, limitations, and the next physical question

[The reproducible xAct/Wolfram input](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/gravity_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/gravity_checks_results.txt>) accompany the derivations. In a fresh xAct core kernel, `Get` returns the full report without modifying a note.

**Verified:** the abstract linearized Weyl gauge/conformal/trace identities in arbitrary flat-space plane waves; the general radial Weyl components; ADM quadratic coefficients and the six-component action; Green-function jumps and separated curvature kernels; all 81 components of the contact-projector cancellation and all 81 components of the position-space tensor identity; source-counterterm contraction; radial contact division; the TT positivity polynomial; the $J/I/K$ form factors; moving-wall response and Fourier normalization. All saved symbolic residuals vanish, with no kernel messages. Eight cosine-bound and fifteen unequal-radius-bound samples pass. The convergence statements are proved analytically, not inferred from those samples. In the abstract check the curvature is varied before specializing the background to flat space; remaining flat derivative identities are checked as polynomial identities in arbitrary plane-wave momentum.

Independent fresh calculations separately derived (i) the geometric Weyl observable and its distributional TT contacts, (ii) CPS normalization, positive-energy modes and $C_T$, and (iii) the full non-TT inverse, local contact cancellation, conformal contour and regular-gauge interpretation. The potentially problematic global radial-gauge tail is part of the argument, not hidden in an assumed endpoint condition.

**Assumptions:** four-dimensional Einstein gravity linearized around the fixed Poincaré AdS background; homogeneous Dirichlet UV data for the free vacuum; the radiative physical quotient and standard positive-energy state; no extra edge variables, alternate gravitational boundary dynamics or parity-odd boundary term; compact smooth radial sources before subtraction and thin-layer restriction; Schwartz boundary-spacetime tests for the operator result.

**Not established:** nonlinear gravitational dressings, alternate/Neumann gravity and dynamical boundary metrics, global charge sectors, AdS₃ boundary gravitons, or graviton loop corrections. Equations (1) and (7) exploit the vanishing background Weyl tensor and therefore do not supply a nonlinear local observable. A genuine holographic dual and an interacting boundary algebra remain separate research problems. The present calculation supplies a normalized local spin-two example and shows explicitly how constraints turn seemingly nonlocal TT contacts into an admissible local source subtraction.
