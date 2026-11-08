# First gravitational reconstruction: the stress–scalar channel

## 1. Results and the precise operator claim

The first gravitational correction to the boundary-normal BF scalar can be fixed and tested in a nontrivial Lorentzian channel. In source-free FG coordinates its stress–scalar component is

$$
\boxed{B_{TO}(z)=\alpha\int_0^zdu\,R_{\square}(z,u)u^4
:\![f_2(u\sqrt\square)\widehat T_{0}^{ij}]
\partial_i\partial_j[J_0(u\sqrt\square)O_0]\!:\,,
\quad f_2(t)=\frac{8J_2(t)}{t^2},\quad
\alpha=\frac{2\sqrt{10}}N.}
\tag{1}
$$

Here $R$ has measure $du$, $f_2(0)=1$, and the normal ordering uses the leading independent Gaussian stress and scalar fields. Each multiplier inside the product acts on its own field; the outer $R_\square$ acts on the total momentum. Its first radial term is

$$
\boxed{B_{TO}(z)=\frac{\alpha z^6}{36}
:\widehat T_0^{ij}\partial_i\partial_jO_0:+O(z^8).}
\tag{2}
$$

Thus there is no $TO$ term at $z^2$ or $z^4$. The reconstruction is

$$
\mathcal U_z=J_0(z\sqrt\square)O_{\rm exact}+B_{TO}(z)
+\text{other bilinear sectors}+O(N^{-2}),
\tag{3}
$$

not the same expression with a Gaussian $O_0$ in the first term. The actual IIB operator can have other scalar/vector bilinears; (1) isolates the sector detected by one external stress state and one external scalar state. It is not a full nonlinear operator formula.

For future-timelike $p,q$, put

$$
a^2=s(p),\quad b^2=s(q),\quad s(p-q)=-k^2<0,\quad
D^2=[k^2+(a+b)^2][k^2+(a-b)^2],\quad X=a^2+k^2-b^2.
\tag{4}
$$

Let $e$ be a unit $p$-transverse traceless polarization and $Q=e^{ij}q_iq_j$. The independent CFT calculation gives the amputated boundary matrix element

$$
\boxed{M_0^e=64\alpha Q\frac{D^2-6b^2k^2}{D^5}
=\frac{1280}{\sqrt{10}N}Q\frac{D^2-6b^2k^2}{D^5}.}
\tag{5}
$$

It is exactly the value required to remove the exponentially growing radial solution. The complete finite-radius answer in this open channel is

$$
\boxed{M_z^e=\frac{8\alpha Q}{a^2}\mathcal L_a
\left[\frac1\pi\int_0^\pi
\frac{J_0(zC_\theta)}{k^2+C_\theta^2}\,d\theta\right],\quad
C_\theta^2=a^2+b^2-2ab\cos\theta,\quad
\mathcal L_a=\frac{\partial^2}{\partial a^2}-\frac1a\frac\partial{\partial a}.}
\tag{6}
$$

The derivative holds $b,k$ fixed and does not act on $Q$. This has at most quadratic growth in $z$ on compact sets of positive $a,b,k$, rather than an $I_0(kz)$ exponential. It need not be bounded uniformly in radial depth.

There are three distinct rigorous statements below: a dense Gaussian-Fock domain for the isolated coefficient (1); equality of the independently normalized CFT boundary form factor with the regularity condition in (6); and a compact-energy Hilbert–Schmidt boundary limit for this specified mixed block, including its null/diagonal edges after state normalization. They do not construct the entire interacting CFT operator on a common Hilbert domain.

A complementary Euclidean calculation determines the finite-radius TT mixed three-point function and its nontrivial UV-cap correction. Its small-radius expansion must not be substituted for the compact-spectral operator expansion (2).

## 2. Geometry, normalization and dressing

Use $\eta=(-,+,+,+)$, $s(p)=(p^0)^2-|\mathbf p|^2$, Fourier modes $e^{-ip^0t+i\mathbf p\cdot\mathbf x}$, and

$$
ds^2=\frac{\ell^2}{z^2}[dz^2+(\eta_{ij}+\gamma_{ij})dx^idx^j],\quad
\mathcal U=\mathcal N(z/\ell)^{-2}\Phi,\quad
\mathcal N^2=2\pi^2/\ell,
$$
$$
\kappa^2=4\pi^2\ell^3/N^2,\qquad
C_T=10N^2/\pi^4,\qquad \widehat T=T/\sqrt{C_T}.
\tag{7}
$$

$\gamma$ is the actual relative metric, not a canonical graviton. The fixed UV coordinate/Weyl frame, regular Poincaré vacuum, logfree BF branch, and exclusion of extra zero/edge sectors are retained. The source and thin-layer conventions remain those of [the reference](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) and [the established dressing](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_gravitational_dressing.md>). No wall action replaces the insertion functional.

For a free normalizable metric, the FG constraints imply $\gamma_i{}^i=0$, $\partial^i\gamma_{ij}=0$, and

$$
\gamma''-3\gamma'/z+\square\gamma=0,\qquad
T_{ij}=\frac{2\ell^3}{\kappa^2}\gamma_{(4)ij}.
\tag{8}
$$

Consequently

$$
\boxed{\gamma_{ij}(z)=\frac{\kappa^2\sqrt{C_T}}{2\ell^3}
 z^4 f_2(z\sqrt\square)\widehat T_{0ij}
=\alpha z^4f_2(z\sqrt\square)\widehat T_{0ij}.}
\tag{9}
$$

At generic linear FG $\gamma$, the scalar Laplacian variation is

$$
\delta\Box_g\phi=\frac{z^2}{\ell^2}\left[
\frac{(\operatorname{tr}\gamma)'}2\partial_z\phi
+\left(\frac12\partial^j\operatorname{tr}\gamma-\partial_i\gamma^{ij}\right)\partial_j\phi
-\gamma^{ij}\partial_i\partial_j\phi\right].
\tag{10}
$$

The free TT sector therefore gives

$$
\mathcal D\mathcal U=\gamma^{ij}\partial_i\partial_j\mathcal U,
\qquad \mathcal D=\partial_z^2+z^{-1}\partial_z+\square.
\tag{11}
$$

Equation (10) was checked directly from the metric determinant, including independent non-TT components; the trace/divergence terms were not simply discarded off shell.

The boundary-normal scalar is $U+\xi^z(\partial_z+2/z)U+\xi^i\partial_iU$ at first order in a general representative. In anchored FG, $\xi=0$ and its value is the coordinate scalar. Adding this dressing once more to (11) in FG would double count. Scalar-induced metric responses enter other perturbative structures; they are not additional freely specifiable linear trace modes. Corrections to boundary-created states are already encoded in the exact three-point data used in (3).

## 3. The radial inverse and a genuine coefficient domain

Let $h_s(z)=J_0(z\sqrt s)$ denote the entire multiplier. The logfree inverse with zero finite boundary value is, for $0<u<z$,

$$
R_s(z,u)=\begin{cases}
\frac{\pi u}{2}[J_0(\sqrt s\,u)Y_0(\sqrt s\,z)-Y_0(\sqrt s\,u)J_0(\sqrt s\,z)],&s>0,\\
u\log(z/u),&s=0,\\
u[I_0(kz)K_0(ku)-K_0(kz)I_0(ku)],&s=-k^2<0.
\end{cases}
\tag{12}
$$

It vanishes for $u>z$, has first-derivative jump $+1$, and satisfies $\mathcal D_sR_s=\delta(z-u)$. Its integration measure is $du$, not $u\,du$. It is a radial Volterra inverse, not a time-retarded inverse. Applying it to (11) gives (1). Since $\int_0^zu^5\log(z/u)du=z^6/36$, the coefficient in (2) follows without a derivative expansion of an unknown interaction vertex.

The leading scalar and stress spectral covariances are

$$
\rho_O(p)=2\pi^3\mathbf1_{V_+}(p),\qquad
\rho_{\widehat T,ij,kl}(p)=\frac{\pi^3}{160}s(p)^2\Pi^{(2)}_{ij,kl}(p)\mathbf1_{V_+}(p),
$$
$$
P_{ij}=\eta_{ij}+\frac{p_ip_j}{s(p)},\qquad
\Pi^{(2)}_{ij,kl}=\tfrac12(P_{ik}P_{jl}+P_{il}P_{jk})-\tfrac13P_{ij}P_{kl}.
\tag{13}
$$

There are five physical polarizations. Although boosted unit polarizations are singular near the null edge, the matrix $s^2\Pi^{(2)}$ has polynomial components. It has a measurable positive square root whose Euclidean component norm is bounded by $CE^2$ at energy $E$. In fact

$$
\operatorname{tr}_{\rm Eucl}\rho_{\widehat T}
=\frac{\pi^3}{160}\left(\frac83E^4+\frac43E^2s+s^2\right)
\le\frac{\pi^3}{32}E^4.
\tag{14}
$$

On finite-particle wavefunctions of compact energy support, smear (1) with $\widehat f\in C_c^\infty$. Pair creation is bounded by the test energy; in a one-to-one term, the outgoing energy is bounded by the incoming energy plus the test support. The kernels consequently have compact spectral support. On physical free modes $|J_0|\le1$ and $|f_2|\le1$, the latter following from

$$
f_2(t)=\frac8{3\pi}\int_0^\pi\sin^4\theta\cos(t\cos\theta)\,d\theta.
$$

The positive Volterra–Neumann series gives $|R_s(z,u)|\le R_{-S}(z,u)$ for $|s|\le S$. For the latter, its reduction-of-order integral and monotonicity of $I_0$ imply $R_{-S}(z,u)\le u\log(z/u)I_0(\sqrt S\,z)$. Thus the radial majorant is

$$
\int_0^z|R_s(z,u)|u^4du\le\frac{z^6}{36}I_0(\sqrt S\,z).
\tag{15}
$$

Together with (14), this proves that $B_{TO}(z,f)$ is a well-defined normal-ordered Gaussian-Fock coefficient on the dense compact-energy domain and is strongly $O(z^6)$. The refinement in (2) holds strongly there, with remainder $O(z^8)$. Null edges do not have to be removed for this coefficient. This does not prove an unrestricted Schwartz domain for the full expression (3).

## 4. Independent CFT spectral calculation

The unit-normalized separated Euclidean three-point function is

$$
\langle O_1O_2\widehat T_{ij}(x_3)\rangle
=\frac{\widehat A}{P_{12}P_{13}P_{23}}
\left(V_iV_j-\frac14\delta_{ij}V^2\right),\quad
V_i=\frac{(x_3-x_1)_i}{P_{13}}-\frac{(x_3-x_2)_i}{P_{23}},
$$
$$
\widehat A=-\frac4{3\sqrt{10}N}=-\frac\alpha{15}.
\tag{16}
$$

Continue to the ordered tube for $\langle\widehat T_e(x)O(0)O(y)\rangle$, with imaginary times $\epsilon_x>\epsilon_0>\epsilon_y$ and $t\mapsto t-i\epsilon$. Write $p\cdot x=p^0t-\mathbf p\cdot\mathbf x$ only in Fourier phases, so

$$
W_e(x,0,y)=\int_{p,q}e^{-ip\cdot x+iq\cdot y}
\rho_T(p)\rho_O(q)M_0^e(p,q),\qquad \int_p=\int\frac{d^4p}{(2\pi)^4}.
\tag{17}
$$

This defines the amputation. Delta-normalized states instead give $\sqrt{\rho_T\rho_O}M_0$, not $M_0$.

For $w(x)=[\mathbf x^2-(t-i0)^2]^{-1}$, $\widetilde w(r)=8\pi^3\delta_+(s(r))$. Differentiating the position tensor in (16) gives a three-null-shell integral with $l=p-r$, $m=q-r$ and numerator

$$
N_{\mu\nu}=-\frac{l_\mu l_\nu+r_\mu r_\nu}{8}
+\frac{l_\mu r_\nu+r_\mu l_\nu}{4}
-\frac{\eta_{\mu\nu}}8(l\cdot_\eta r),
$$
$$
\widetilde W_{\mu\nu}=32\pi^5\widehat A
\int d^4r\,\delta_+(s(r))\delta_+(s(l))\delta_+(s(m))N_{\mu\nu}.
\tag{18}
$$

On the cuts, $p^\mu N_{\mu\nu}=0$, $N^\mu{}_\mu=0$, and $e:N=-3e^{ij}r_ir_j/4$. This is a Wightman distribution obtained from positive-energy convolutions; Euclidean source contacts are not appended to it.

In the $p$-rest frame, $r^0=|\mathbf r|=a/2$, $|\mathbf q|=D/(2a)$, and $c=\widehat{\mathbf r}\cdot\widehat{\mathbf q}=X/D$. The cut moment is

$$
\int d^4r\,\delta_+\delta_+\delta_+\,r_ir_j
=\frac{\pi a^2}{16D}\left[(1-c^2)\delta_{ij}
+(3c^2-1)\widehat q_i\widehat q_j\right].
\tag{19}
$$

Hence

$$
\widetilde W_e=-12\pi^6\widehat A\,a^4
\frac{D^2-6b^2k^2}{D^5}Q.
\tag{20}
$$

Dividing by (13) gives (5), with no bulk regularity input. The stress spectral coefficient in (13) was independently calculated from an auxiliary improved free scalar and conformal two-point uniqueness: its physical stress has $C_T=1/(3\pi^4)$ and TT spectral coefficient $a^4/(480\pi)$, giving the unit-stress coefficient $\pi^3a^4/160$. This is a normalization computation, not a free-field assumption about the physical interacting CFT.

The numerator is a quadrupole and can change sign. In particular $a=b$ gives $D^2-6b^2k^2=k^2(k^2-2a^2)$. At $a=b=m$, $k\to0^+$, the amputated quantity has

$$
M_0^e\sim-\frac{80}{\sqrt{10}N m^3k}\,e^{ij}\widehat q_i\widehat q_j.
\tag{21}
$$

There is no smooth pointwise diagonal-soft value. This singularity must be treated with the spectral measure, not erased by a generic-momentum calculation.

## 5. Radial growth cancellation and an explicit counterexample

The Gaussian contraction of (1) with one stress and one scalar has one Wick contraction, not the factor two of an identical scalar bilinear. It gives

$$
M_z^e=I_0(kz)M_0^e-\frac{8\alpha Q}{a^2}
\int_0^zdu\,R_{-k^2}(z,u)u^2J_2(au)J_0(bu).
\tag{22}
$$

The key identities are

$$
\mathcal L_aJ_0(au)=u^2J_2(au),\qquad
\int_0^\infty du\,uK_0(ku)J_0(au)J_0(bu)=\frac1D,
$$
$$
\mathcal L_a(D^{-1})=\frac{4a^2(3X^2-D^2)}{D^5}
=\frac{8a^2(D^2-6b^2k^2)}{D^5}.
\tag{23}
$$

For arbitrary boundary value, the coefficient of $I_0(kz)$ in (22) is

$$
M_0^e-\frac{8\alpha Q}{a^2}\mathcal L_a(D^{-1}).
\tag{24}
$$

It vanishes precisely for the independently derived CFT answer (5). This tests the coupling, polarization, spectral normalization and state data together. It is not a choice to discard a homogeneous solution after the boundary data have been fixed.

Equivalently the matched response is

$$
\begin{aligned}
M_z^e=\frac{8\alpha Q}{a^2}\Big[&I_0(kz)
\int_z^\infty du\,u^3K_0(ku)J_2(au)J_0(bu)\\
&+K_0(kz)\int_0^zdu\,u^3I_0(ku)J_2(au)J_0(bu)\Big].
\end{aligned}
\tag{25}
$$

The Bessel addition formula proves the angular representation (6). A plane-wave angular representation of $J_0(zC_\theta)$ gives $|\partial_aJ_0|\le z$, $|\partial_a^2J_0|\le z^2$. Derivatives of the positive denominator in (6) are uniformly bounded on compact subsets of $a,b,k>0$. Thus $|M_z|\le C(1+z^2)$ there. The integrand is entire in $C_\theta^2$, so $a=b,\theta=0$ is harmless. The homogeneous difference $AI_0+BK_0$ is fixed uniquely: logfree UV removes $B$, and absence of exponential growth removes $A$.

The small-radius form factor is

$$
M_z^e=I_0(kz)M_0^e-\frac{\alpha Qz^6}{36}+O(z^8).
\tag{26}
$$

At $a=b=1,k=\sqrt2$, $M_0^e=0$ while

$$
\boxed{M_z^e=-\alpha Q\left(\frac{z^6}{36}-\frac{5z^8}{1152}+O(z^{10})\right).}
\tag{27}
$$

This directly disproves free smearing alone in this channel. At generic momenta, using only the correction or only the exact boundary term also leaves an exponential component; they must be combined.

Numerically, dividing all entries by $\alpha Q$, the two independent expressions (22) and (25) give

| $(a,b,k,z)$ | $I_0(kz)M_0/(\alpha Q)$ | $M_z/(\alpha Q)$ |
|---|---:|---:|
| $(1,1,1,1)$ | $-1.44947679572297\ldots$ | $-1.47280905433504\ldots$ |
| $(1,1,1,10)$ | $-3223.62049875306\ldots$ | $-30.6234463587116\ldots$ |
| $(1,1,\sqrt2,1)$ | $0$ | $-0.0237290084263763\ldots$ |

The tail in (25) has an analytic exponential bound using $|J_\nu|\le1$ and $K_0(x)\le\sqrt{\pi/(2x)}e^{-x}$. Finite quadrature agreement is not an interval-certified numerical error estimate. Analytic identities (23)–(25), not the decimal agreement, prove cancellation.

## 6. Compact mixed-block convergence includes the null edges

Use states with $\langle p,\lambda|q,\sigma\rangle=(2\pi)^4\delta^4(p-q)\delta_{\lambda\sigma}$ and $d\nu(p)=d^4p/(2\pi)^4$. The stress polarizations are orthonormal in the positive $p$-rest inner product, not the boosted Euclidean component norm. Define the normalized kernel

$$
K_{z,\lambda}=\sqrt{\rho_T(p)\rho_O(q)}M_z^{e_\lambda},\qquad
\sqrt{\rho_T\rho_O}=\frac{\pi^3a^2}{4\sqrt5}.
\tag{28}
$$

For a unit real TT basis in the $p$-rest frame, $\sum_\lambda|e_{\lambda,nn}|^2=2/3$. Because $Q=e_{nn}D^2/(4a^2)$ and $|c|\le1$ on the cut,

$$
K_{0,\lambda}=\frac{2\pi^3\alpha}{\sqrt5}
\frac{(3c^2-1)e_{\lambda,nn}}D,\qquad
\|K_0\|_{\rm pol}\le\frac{4\pi^3|\alpha|}{D}\sqrt{\frac2{15}}.
\tag{29}
$$

The factor $a^2$ from state normalization is essential; boundedness of an unweighted boosted polarization would be false.

The velocity-coordinate estimate in [the scalar reconstruction, §7](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction.md#L407-L431>) gives

$$
\int_{\substack{p,q\in V_+\\p^0,q^0\le B}}\frac{d^4p\,d^4q}{D^2}\le\frac{\pi^4B^4}{8}.
\tag{30}
$$

It includes the null edge and diagonal; restricting to spacelike transfers only improves it. Consequently $\|K_0\|_{\rm HS(d\nu^2)}\le|\alpha|\pi B^2/(8\sqrt{15})$.

For the correction in (22), the dangerous factor also cancels explicitly: $|J_2(au)|\le a^2u^2/8$ implies $|QJ_2(au)|\le D^2u^2|e_{nn}|/32$. On compact energies $D^2\le16B^4$, $k\le2B$. The spectral-density and Volterra bounds give the conservative estimate

$$
\|K_B\|_{\rm HS}\le\frac{|\alpha|B^8z^6}{3456}I_0(2Bz).
$$

Using $I_0(t)-1\le t^2I_0(t)/4$ in $K_z=I_0(kz)K_0+K_B$ yields

$$
\boxed{\|K_z-K_0\|_{\rm HS}
\le |\alpha|I_0(2Bz)
\left[\frac{\pi B^4z^2}{8\sqrt{15}}+\frac{B^8z^6}{3456}\right].}
\tag{31}
$$

A bounded transfer test adds $\|\widehat f\|_\infty$. Thus the specified spacelike one-to-one mixed block has a genuine compact-energy $O(z^2)$ boundary limit, including the integrable edges. No extra edge-supported atoms are appended: the kernels are those supplied by the positive-cut convolution and the explicit Volterra construction. Equality on the open channel alone would not have excluded such additions.

This Hilbert–Schmidt block statement is not a construction of every particle-number block of the interacting CFT operator, nor an arbitrary-Schwartz large-energy theorem. The isolated Gaussian coefficient (1), the matched block, and the full interacting observable remain distinct claims.

## 7. Euclidean finite-radius TT correlator and UV caps

### 7.1 Direct insertion diagram

Now use Euclidean momenta with $\mathbf p+\mathbf k_1+\mathbf k_2=0$ and magnitudes $p,q,r>0$, respectively. Here $a,b$ denote insertion radii, not the spectral masses of §§4–6. The Euclidean projector is $\pi_{ij}=\delta_{ij}-p_ip_j/p^2$ and $\Pi^{(2)}_{ij,kl}=\tfrac12(\pi_{ik}\pi_{jl}+\pi_{il}\pi_{jk})-\pi_{ij}\pi_{kl}/3$, replacing the Lorentzian projector (13). Put

$$
H_p(u)=\frac{p^2u^2}{2}K_2(pu),\qquad
F_a(q,u)=I_0(q\min(a,u))K_0(q\max(a,u)).
\tag{32}
$$

The Euclidean mixed kernel $H_p(u)\to1$ is a boundary-response kernel, not a pointwise normalizable Lorentzian mode. The TT action and stress normalization give

$$
\langle\gamma_{ij}(u,p)\widehat T_{kl}(-p)\rangle'
=\frac2{\sqrt{C_T}}H_p(u)\Pi^{(2)}_{ij,kl}(p).
\tag{33}
$$

For example, this follows by taking one boundary limit of $\langle\gamma\gamma\rangle'=(4\kappa^2/\ell^3)(uv)^2I_2(pu_<)K_2(pu_>)\Pi^{(2)}$. It agrees with the boundary-source factor $\delta\langle\gamma\rangle/\delta\gamma_{(0)}=\langle\gamma T\rangle/2$. The fixed conformal insertion measure contributes no extra density vertex, and the pure-trace BF completion is killed by this TT projection.

The direct cubic insertion diagram is

$$
\boxed{\langle\widehat T^{TT}_{ij}(p)\mathcal U_a(k_1)\mathcal U_b(k_2)\rangle'
=\frac{4\pi^4}{\sqrt{10}N}\Pi^{(2)}_{ij,kl}(p)k_{1k}k_{1l}\,\mathcal J_{ab}(p,q,r),}
$$
$$
\mathcal J_{ab}=\int_0^\infty du\,uH_p(u)F_a(q,u)F_b(r,u).
\tag{34}
$$

The two scalar contractions remove the vertex $1/2$. The derivative sign is positive in this expression because $\Pi k_1k_2=-\Pi k_1k_1$. In FG the first scalar dressing vanishes on this TT metric, so no second dressing term is added. At the boundary,

$$
\mathcal J_{00}=\frac{p^2}{2}\int_0^\infty du\,u^3K_2(pu)K_0(qu)K_0(ru).
\tag{35}
$$

This convergent triple-$K$ expression fixes the TT part only; it is not a derivation of all longitudinal/trace Ward contacts.

### 7.2 Uniform independent-radius expansion

Let $R=\max(a,b)$ and $L_k(R)=-\log(kR/2)-\gamma_E$. At fixed positive external momenta,

$$
\boxed{\mathcal J_{ab}=
\left[1+\frac{q^2a^2+r^2b^2}{4}\right]\mathcal J_{00}
-\frac{a^2L_r(R)+b^2L_q(R)+R^2}{4}
+O\!\left(R^4(1+|\log R|)^2\right).}
\tag{36}
$$

The remainder is uniform in the ratio $a/b$, including arbitrarily unequal radii. The term on the second line is not generated by expanding exterior $I_0$ factors. The two UV caps overlap.

To see it, subtract the exact exterior factorization $I_0(qa)I_0(rb)\mathcal J_{00}$. Only $0<u<R$ remains. Its leading integrand is

$$
u\,[L_q(\max(u,a))L_r(\max(u,b))-L_q(u)L_r(u)].
$$

For $a\le b$, its integral is $-[a^2L_r(b)+b^2(L_q(b)+1)]/4$. Exchanging the labels proves the symmetric result. Uniformly for $0<a\le R$, $0<u\le R$, the small-Bessel error is bounded by $CR^2(1+|\log u|)$; $H_p(u)-1=O(u^2)$. The cap remainder is therefore at most $CR^2\int_0^Ru(1+|\log u|)^2du$, proving the claimed uniformity. Constants here depend on the fixed positive momenta; an arbitrary-Schwartz momentum theorem has not been inferred.

At $p=q=r=1$, $a=0.2,b=0.3$,

$$
\mathcal J_{00}=0.44796907956315296353\ldots,\qquad
\mathcal J_{ab}=0.39572482311596421973\ldots.
\tag{37}
$$

Symbolic cap integration and numerical tests with exponentially unequal radii agree with (36). Before the nonlocal TT projection, the displayed momentum logarithms have semilocal structures. A full Ward/contact completion requires the constrained metric response and renormalized source/anchor variation and is not supplied by (34).

There is no contradiction between the $z^6$ operator correction and the $R^2\log R$ Euclidean caps: the former is a compact Lorentzian spectral-domain statement. The latter includes unbounded spectral integration and time-ordering/contact structure. Interchanging these operations or replacing a finite-radial covariance everywhere by a free Bessel multiplier would discard the cap terms.

## 8. Verification and what remains open

**Verified:** the full linear scalar Laplacian variation, stress-normalized graviton mode, radial inverse and first $TO$ coefficient; the ordered CFT tensor triangle and stress spectral covariance independently of bulk regularity; exact exponential cancellation; the compact Gaussian coefficient and matched mixed-block estimates; a finite-radius TT three-point calculation and uniform independent-radius cap expansion at fixed positive momenta.

Three independent derivations and separate read-only manuscript audits checked the reconstruction/domain, CFT spectral, and Euclidean mixed sectors. The final reconstruction run has 49/49 checks true; the CFT run has 41 vanishing scalar residuals and three successful quadratures. The matched examples and Euclidean cap checks also pass, with no messages in the saved final runs. These finite computations supplement the analytic estimates rather than prove their continuous-parameter scope.

The calculations are reproducible in:

- [Reconstruction checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_reconstruction_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_reconstruction_checks_results.txt>).
- [Independent CFT spectral checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_spectral_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_spectral_checks_results.txt>).
- [Matched radial examples](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_matched_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_matched_checks_results.txt>).
- [Euclidean mixed/cap checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_mixed_checks.wl>) and [results](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_stress_mixed_checks_results.txt>).

**Assumptions:** first gravitational order $N^{-1}$, fixed boundary-normal dressing and, for the Lorentzian operator construction, a source-free physical graviton sector, the prescribed positive-energy vacuum and operator ordering, classical IIB/SYM normalizations, and no independent edge/zero-mode sectors. The mode normalization is compatible with the retained-boundary-action and $\omega=\delta\theta$ conventions of [the CPS formalism](</Users/koishi/Documents/Note/Articles/Quantization in AdS/perturbation/formalism.md#L5-L95>); no new nonlinear CPS quotient is proved here.

**Not verified:** a common Hilbert-space realization of all interacting operators, unrestricted Schwartz large-energy bounds for the complete reconstructed stress sector, all-transfer vacuum-contour identification, full mixed Ward/trace contacts, loop-renormalized dressing, or a nonlinear/global normal-coordinate chart. A nonzero mixed block does not establish a complete interacting Wightman algebra or its positivity.

The remaining concrete task is to complete the mixed Ward/contact structure or the all-transfer vacuum-contour calculation, keeping the Euclidean source functional and Lorentzian operator statements distinct.
