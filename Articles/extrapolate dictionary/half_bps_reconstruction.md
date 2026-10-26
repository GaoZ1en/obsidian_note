# First nonlinear reconstruction in the protected scalar channel

## 1. Result: the boundary three-point function removes radial growth

The first scalar double-trace correction can be constructed explicitly, but it must be combined with the **exact**, non-Gaussian boundary primary. In a spacelike momentum-transfer channel this distinction is decisive: the double-trace correction alone grows exponentially with radial depth, while the protected boundary three-point function cancels that growth exactly.

Use unit two-point normalization and write the scalar part of the bulk equation as

$$
\mathcal D U^I=g_{IJK}U^JU^K,\qquad
\mathcal D=\partial_z^2+z^{-1}\partial_z+\square_\eta.
\tag{1.1}
$$

Let $c_{IAB}$ be the unit-normalized boundary three-point coefficient. For two future-timelike external momenta $p,q$, define

$$
a^2=s(p)>0,\quad b^2=s(q)>0,\quad s(p-q)=-\kappa^2<0,
\qquad s(p)=(p^0)^2-|\mathbf p|^2,
$$

$$
D=\sqrt{[\kappa^2+(a+b)^2][\kappa^2+(a-b)^2]},\qquad
C_\theta^2=a^2+b^2-2ab\cos\theta.
\tag{1.2}
$$

For fixed external species, abbreviate $g=g_{IAB}$ and $c=c_{IAB}$. The reconstructed amputated form factor is

$$
\boxed{
M_z=\frac{4c+2g}{D}I_0(\kappa z)
-\frac{2g}{\pi}\int_0^\pi
\frac{J_0(zC_\theta)}{\kappa^2+C_\theta^2}\,d\theta .}
\tag{1.3}
$$

Absence of exponential growth is equivalent to $c=-g/2$. At the retained order-$1/N$ tree level, the actual IIB/SYM data established in the [BF/protected-sector report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps.md>) satisfy precisely

$$
g_{IJK}=\frac{4\sqrt2}{N}d_{IJK},\qquad
c_{IJK}=-\frac{2\sqrt2}{N}d_{IJK},\qquad
d_{IJK}=\operatorname{Tr}_6(Y^IY^JY^K).
\tag{1.4}
$$

All equalities involving these couplings are coefficientwise at the retained tree order. The exact finite-$N$ CFT coefficient contains $1/\sqrt{N^2-1}$ rather than $1/N$; combining that unexpanded coefficient with only the classical bulk coupling would mix perturbative orders. No inference about physical finite-$N$ radial growth is made from such a mismatch.

For these data,

$$
|M_z|\le\frac{2|g|}{D},\qquad
M_0=-\frac{2g}{D},\qquad
|M_z-M_0|\le\frac{|g|z^2}{2}.
\tag{1.5}
$$

The calculation below also matches the complete **three-finite-radius double spectral density** in this channel to the bulk cubic insertion diagram. This is not a proof for all Wightman orderings or momentum-transfer channels. The scalar correction is a component of the IIB reconstruction, not its full gravitational or internal-gauge dressing.

## 2. Normalization and fixed-boundary radial solution

### 2.1 Which equation is being solved?

Retain $\Omega=z/\ell$, the canonical bulk field $\phi^I=t^I/(2\kappa_5)$ in coordinates $T=e^t$, and the source and thin-layer conventions of the [reference formalism](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>). No boundary-source functional is identified with a wall action here. The input finite-radius diagram was derived from bulk insertions in the preceding report.

In Lorentzian signature $\eta=(-,+,+,+)$,

$$
(\square_g+4/\ell^2)\phi^I
=\frac{\lambda_{IJK}}2\phi^J\phi^K+\cdots,
\qquad
\lambda_{IJK}=\frac{8\kappa_5}{\ell^2}d_{IJK}.
$$

Put

$$
F=\Omega^{-2}\phi,\qquad
U=\mathcal N F,\qquad \mathcal N=\sqrt{2\pi^2/\ell}.
$$

The explicit differential operator gives

$$
(\square_g+4/\ell^2)(\Omega^2 F)=\Omega^4\mathcal D F,
\qquad
\mathcal D F^I=\frac{\lambda_{IJK}}2F^JF^K,
\qquad
g_{IJK}=\frac{\lambda_{IJK}}{2\mathcal N}.
\tag{2.1}
$$

There is no additional $\ell^2$ on the right in this $\Omega=z/\ell$ convention. The vacuum has no BF logarithmic branch. Let $\mathcal O^I=\lim U_z^I$ denote the exact boundary primary, oriented as $-\widehat Q^I$ to the large-$N$ accuracy under discussion. Its leading Gaussian field is denoted $\mathcal O_0^I$.

The omitted terms in the first equation include gauge and gravitational couplings. We work in the same asymptotically FG coordinates and internal radial gauge as before, and retain the quadratic **pure-scalar** source. Bilinears involving a free vector or graviton have zero contraction with the three scalar external insertions at this order. They are not absent from the full operator equation. Loops and nonlinear dressings are not supplied by (2.1).

### 2.2 Volterra kernel and the boundary data it fixes

For Fourier phase $e^{-i\omega t+i\mathbf p\cdot\mathbf x}$ define the entire multiplier

$$
h_s(z)=\sum_{n=0}^\infty\frac{(-sz^2/4)^n}{(n!)^2}
=J_0(z\sqrt s).
\tag{2.2}
$$

It equals $I_0(z\sqrt{-s})$ for $s<0$. With the integration measure **$du$**, the radial Green kernel is

$$
R_s(z,u)=
\begin{cases}
\displaystyle\frac{\pi u}{2}
[J_0(\sqrt s\,u)Y_0(\sqrt s\,z)-Y_0(\sqrt s\,u)J_0(\sqrt s\,z)],&s>0,\\
u\log(z/u),&s=0,\\
u[I_0(\kappa z)K_0(\kappa u)-K_0(\kappa z)I_0(\kappa u)],&s=-\kappa^2<0,
\end{cases}
\tag{2.3}
$$

for $0<u<z$, and zero for $u>z$. Its value vanishes at $z=u$ and its first derivative has jump $+1$. Consequently $(\partial_z^2+z^{-1}\partial_z+s)R_s=\delta(z-u)$.

The first scalar-channel reconstruction is

$$
\boxed{
U_z^I=h_{\square}(z)\mathcal O^I+B_z^I+O(N^{-2}),\qquad
B_z^I=g_{IJK}\int_0^zdu\,
R_{\square}(z,u):U_0^J(u)U_0^K(u):,
\quad U_0^I(u)=h_{\square}(u)\mathcal O_0^I .}
\tag{2.4}
$$

Normal ordering is with respect to the leading generalized-free vacuum. The first term contains the exact boundary operator, including its order-$1/N$ three-point data; only the explicitly order-$g$ second term uses Gaussian fields. The remainder notation refers to this scalar perturbative expansion, not to the full IIB operator with all other bilinears omitted.

The radial correction fixes both its logarithmic coefficient and its finite boundary value to zero. In particular,

$$
U_z^I=\mathcal O^I+\frac{z^2}{4}
\left[-\square\mathcal O^I+g_{IJK}:\mathcal O_0^J\mathcal O_0^K:\right]
+O(z^4,N^{-2}).
\tag{2.5}
$$

Thus in terms of the positively oriented SYM operator, the displayed scalar terms are

$$
U_z^I=-\widehat Q^I+\frac{z^2}{4}\square\widehat Q^I
+\frac{\sqrt2\,z^2}{N}d_{IJK}:\widehat Q_0^J\widehat Q_0^K:
+O(z^4,N^{-2}).
\tag{2.6}
$$

The coefficient follows directly from $\int_0^zdu\,u\log(z/u)=z^2/4$. It is not obtained by changing the free Bessel multiplier.

For completeness, a finite logfree Fourier mode obeying $L_s f=S$ satisfies

$$
f(z)=f(0)+\int_0^zdu\,u\log(z/u)[S(u)-sf(u)].
\tag{2.7}
$$

The difference of two solutions with the same source and finite boundary value has supremum bounded by $|s|z^2/4$ times itself on a sufficiently small slab, hence vanishes there; ordinary ODE uniqueness extends the result. This gives uniform uniqueness on compact momentum sets. Logfree alone would not fix $f(0)$.

This is not a time-retarded inverse. If $R_t$ is a chosen time-retarded inverse and $\mathcal B$ extracts the finite BF coefficient, rewriting a Yang–Feldman solution in terms of its exact boundary operator produces $(R_t-h\mathcal B R_t)S$, not $R_tS$. Equality to (2.3) requires a common existence/uniqueness class; it must not be assumed without the initial-state and horizon prescriptions.

## 3. Operator domain and the isolated correction's obstruction

### 3.1 A genuine compact-spectral statement

The unit-normalized Gaussian boundary field has

$$
\widetilde W_0(p)=2\pi^3\theta(p^0)\theta(s(p)),\qquad
\mathcal H_1=L^2(V_+,d\mu),\qquad
d\mu=\frac{d^4p}{8\pi}\,\mathbf1_{V_+}(p).
\tag{3.1}
$$

Let $\mathscr D_c$ be finite Fock vectors whose wavefunctions have each particle energy bounded by some finite $R$. No smoothness away from the null edge is required. This domain is dense. For tests with $\widehat f\in C_c^\infty$, set

$$
M=\max_{\mathrm{supp}\widehat f}|k^0|,\quad
S=\max_{\mathrm{supp}\widehat f}|s(k)|,\quad
E_B=\{p\in V_+:p^0\le B\},\quad \mu(E_B)=B^4/24.
$$

The quadratic mode kernel before multiplication by $g$ is

$$
A_z(p,q)=\int_0^zdu\,R_{s(p+q)}(z,u)
 J_0(u\sqrt{s(p)})J_0(u\sqrt{s(q)}),
\tag{3.2}
$$

where $p,q$ may have either physical frequency sign. Since the individual mode factors have modulus at most one, the positive $s=-S$ Volterra majorant gives

$$
|A_z(p,q)|\le\frac{I_0(\sqrt S z)-1}{S}
\le\frac{z^2}{4}e^{\sqrt S z},
\tag{3.3}
$$

with the continuous $S=0$ value $z^2/4$. The majorant follows by iteration of the positive kernel $u\log(z/u)$; it bounds absolute values even when $R_s$ oscillates.

Pair creation has $\widehat f(p+q)$ and bounds both created energies by $M$. In the mixed term $\widehat f(p-q)$, the annihilated momentum is bounded by $R$, so the created energy is at most $R+M$. All relevant kernels are therefore Hilbert–Schmidt on a compact physical cone region. For a single scalar coupling and an $n$-particle vector supported below $R$,

$$
\|B_z(f)\Psi_n\|
\le |g|C_n\|\widehat f\|_\infty\,
\mu(E_{R+M})\frac{z^2}{4}e^{\sqrt S z}\|\Psi_n\|,
$$

$$
C_n=\sqrt{(n+1)(n+2)}+2n+\sqrt{n(n-1)}.
\tag{3.4}
$$

For finitely many species one may sum this estimate with $\sum_{JK}|g_{IJK}|$. Hence $B_z(f)$ preserves $\mathscr D_c$ and tends strongly to zero as $O(z^2)$. Uniform mode expansion gives

$$
A_z(p,q)=\frac{z^2}{4}
-\frac{z^4}{64}[s(p)+s(q)+s(p+q)]+O(z^6)
\tag{3.5}
$$

on the relevant compact spectra, proving (2.5) for the quadratic correction on this domain. This is a theorem about that Gaussian-Fock coefficient. It does not construct a common Hilbert-space domain for the entire interacting CFT operator in (2.4).

### 3.2 Why arbitrary Schwartz smearing fails for the isolated term

Take $p,q$ future timelike, but consider their difference as the total momentum. The Bessel product identity gives

$$
A_z(p,-q)=\frac1\pi\int_0^\pi
\frac{I_0(\kappa z)-J_0(zC_\theta)}{\kappa^2+C_\theta^2}\,d\theta,
$$

$$
\frac{I_0(\kappa z)-1}{D}\le A_z(p,-q)
\le\frac{I_0(\kappa z)+1}{D}.
\tag{3.6}
$$

The coefficient of the growing term is strictly positive, $1/D$. In particular, timelike free spectral support does not prevent a quadratic composite from carrying spacelike transfer.

There is an explicit operator-domain counterexample. Choose a nonnegative one-particle wavefunction compactly supported in the strict future cone. Let the created momentum have energy $E\to\infty$ and invariant mass in a fixed positive interval. Uniformly on that input support, $\kappa^2\asymp E$ and $D\asymp E$, so

$$
A_z(p,-q)\gtrsim E^{-5/4}e^{c_z\sqrt E}.
$$

The positive even Schwartz function

$$
\widehat f(k)=\exp[-(1+|k|_E^2)^{\alpha/2}],\qquad 0<\alpha<1/2,
$$

cannot suppress this growth. The mixed one-particle output is not square integrable; the bounded-mass outgoing region has measure proportional to $E\,dE$. Pair-creation terms lie in a different particle sector and cannot cancel this output. A nonzero IIB tensor component can be selected so that species sums do not cancel it.

This disproves an arbitrary-Schwartz operator claim for the **isolated zero-boundary correction on the Gaussian Fock domain**. It does not disprove the physical sum (2.4), whose exact boundary operator contributes a compensating term. That compensation is calculated next.

## 4. Independent CFT spectral form factor

Use $p\cdot x=p^0t-\mathbf p\cdot\mathbf x$ in Fourier phases. For ordered insertions $x,0,y$, define $M_0$ by

$$
\langle\mathcal O^A(x)\mathcal O^I(0)\mathcal O^B(y)\rangle_c
=\int_p\int_q e^{-ip\cdot x+iq\cdot y}\rho(p)\rho(q)M_0(p,q),
\quad \rho(p)=2\pi^3\mathbf1_{V_+}(p).
\tag{4.1}
$$

This fixes an externally amputated form factor. The external states are created by the **exact boundary primary**, not assumed to be bare free-Fock states. If instead one uses states delta-normalized with respect to $d^4p/(2\pi)^4$, the corresponding matrix element includes a factor $\sqrt{\rho(p)\rho(q)}$.

Let $w_1(x)=[\mathbf x^2-(t-i0)^2]^{-1}$. The protected ordered three-point function is $c\,w_1(x)w_1(-y)w_1(x-y)$, with the compatible ordered tube prescription. Since

$$
\widehat w_1(p)=8\pi^3\delta_+(s(p)),\qquad
\widehat{w_1^2}(p)=2\pi^3\mathbf1_{V_+}(p),
$$

its double Fourier transform is

$$
\frac{(8\pi^3)^3c}{(2\pi)^4}
\int d^4r\,\delta_+(s(r))\delta_+(s(p-r))\delta_+(s(q-r)).
\tag{4.2}
$$

In the rest frame of $p$, the first two shells set $r^0=|\mathbf r|=a/2$ and leave angular measure $d\Omega/8$. Moreover

$$
q^0=\frac{\kappa^2+a^2+b^2}{2a},\quad
|\mathbf q|=\frac D{2a},\quad
\cos\theta=\frac{a^2-b^2+\kappa^2}{D}.
$$

The last root is strictly inside the angular interval, since $D^2-(a^2-b^2+\kappa^2)^2=4b^2\kappa^2>0$, and all three shell energies are positive. Thus

$$
\int d^4r\,\delta_+\delta_+\delta_+=\frac{\pi}{2D},\qquad
\widetilde W_3(p,q)=\frac{16\pi^6c}{D},\qquad
\boxed{M_0=\frac{4c}{D}.}
\tag{4.3}
$$

The coefficient was obtained from the boundary correlator without using the radial equation or imposing interior regularity.

## 5. Cancellation, uniqueness and the finite-radius answer

In this channel the explicit quadratic term has two Wick contractions. Its source is $2gJ_0(az)J_0(bz)$, so (2.4) gives

$$
M_z=I_0(\kappa z)M_0
+2g\int_0^zdu\,R_{-\kappa^2}(z,u)J_0(au)J_0(bu).
\tag{5.1}
$$

The product addition formula and an elementary radial particular solution are

$$
J_0(au)J_0(bu)=\frac1\pi\int_0^\pi J_0(C_\theta u)\,d\theta,
$$

$$
L_{-\kappa^2}\frac{I_0(\kappa z)-J_0(Cz)}{\kappa^2+C^2}=J_0(Cz).
$$

Together with $\pi^{-1}\int_0^\pi d\theta/(\kappa^2+C_\theta^2)=1/D$, they prove (1.3). The angular term is bounded for all $z$, so there is no other exponentially growing contribution that could conceal a nonzero $4c+2g$. The actual protected value $c=-g/2$ supplies exactly the required cancellation.

Equivalently,

$$
\int_0^\infty du\,uK_0(\kappa u)J_0(au)J_0(bu)=\frac1D,
\tag{5.2}
$$

and the regular answer is

$$
\begin{aligned}
M_z=-2g\Big[&I_0(\kappa z)\int_z^\infty du\,uK_0(\kappa u)J_0(au)J_0(bu)\\
&+K_0(\kappa z)\int_0^zdu\,uI_0(\kappa u)J_0(au)J_0(bu)\Big].
\end{aligned}
\tag{5.3}
$$

It solves $L_{-\kappa^2}M_z=2gJ_0(az)J_0(bz)$. It is the unique solution without a boundary logarithm or exponential interior growth: a homogeneous difference is a linear combination of $I_0$ and $K_0$, and the two conditions kill its two coefficients.

The angular form immediately yields (1.5), because $|J_0|\le1$ and $|1-J_0(t)|\le t^2/4$. More precisely,

$$
M_z-M_0=\frac{gz^2}{2}\left(1-\frac{\kappa^2}{D}\right)+O(z^4).
\tag{5.4}
$$

The bounded quantity is the **rescaled** field's form factor; multiplying back by $z^2$ changes its interior behavior. The argument does not impose a decay condition inappropriate to normalizable Lorentzian bulk wavepackets.

## 6. Matching three finite radii to the insertion diagram

Define the Euclidean radial covariance factor

$$
D_k(z,u)=I_0(k\min(z,u))K_0(k\max(z,u)).
$$

The unit-normalized cubic insertion diagram, with the total-momentum delta removed, is

$$
T_E(z_1,z_2,z_3;k_i)
=-8\pi^4g\int_0^\infty du\,u\prod_{i=1}^3D_{k_i}(z_i,u).
\tag{6.1}
$$

This normalization follows from the canonical insertion diagram and $U=\mathcal N F$, not a guessed boundary action. Set $\mathrm{Disc}_t f=f(t+i0)-f(t-i0)$. Across the negative $k^2$ axis,

$$
\mathrm{Disc}_{k^2=-a^2}K_0(k u)=-i\pi J_0(au),\qquad
 i\,\mathrm{Disc}_{k^2=-a^2}D_k(z,u)
=\pi J_0(az)J_0(au).
\tag{6.2}
$$

Keep the middle invariant $k_2^2=\kappa^2>0$ and cut the outer invariants to $-a^2,-b^2$. The middle $K_0(\kappa u)$ supplies exponential large-$u$ domination, permitting both discontinuities to pass under the integral. Small-$u$ behavior is integrable as well. Dividing by the two boundary spectral densities gives

$$
\boxed{
\frac{(i\,\mathrm{Disc}_1)(i\,\mathrm{Disc}_3)T_E}{(2\pi^3)^2}
=J_0(az_1)J_0(bz_3)M_{z_2}.}
\tag{6.3}
$$

The same expression follows from reconstruction. In the ordered channel with momenta $p,q$ future timelike and $p-q$ spacelike, a quadratic correction at either outer insertion would have to contract a free field carrying the spacelike middle momentum. Its free spectral density vanishes. Thus only the middle quadratic correction survives, in addition to the three linearly smeared exact boundary insertions, and (5.1) gives (6.3).

This is an exact equality of the finite-radius **double spectral densities at the retained tree order** in the stated open channel. Under the usual ordered-vacuum positive-energy spectral prescription it is the corresponding tree-level Wightman component. It neither proves that prescription for every momentum channel nor establishes all interacting Wightman boundary limits. No substitution of $I_0(kz)C_E(k)$ for a mixed Euclidean covariance was made: the actual mixed covariance is $\ell K_0(kz)$, and those expressions are different.

For compact spectra inside this channel, all three radii may tend independently to zero. An explicit error bound is

$$
\left|J_0(az_1)J_0(bz_3)M_{z_2}-M_0\right|
\le\frac{|g|z_2^2}{2}
+\frac{|g|}{2D}(a^2z_1^2+b^2z_3^2).
\tag{6.4}
$$

It proves the boundary limit under these spectral smearings, not merely at generic point momenta. A proof in other channels would require the corresponding $i\epsilon$/interior data and separate radial boundary limits; a common-radius diagonal limit alone is insufficient to exclude compensating logarithmic branches.

## 7. The matched spacelike sector has better smearing behavior

The singularity $1/D$ does not obstruct compact-spectral integral operators. In fact, write $p=E(1,\mathbf v)$ and $q=F(1,\mathbf u)$, $|\mathbf v|,|\mathbf u|<1$. Aligning $\mathbf v$ with an axis gives

$$
D^2=4E^2F^2\left[(u_\parallel-|\mathbf v|)^2+(1-|\mathbf v|^2)|\mathbf u_\perp|^2\right].
$$

Extending the longitudinal integral to the real line shows

$$
\int_{|\mathbf u|<1}\frac{d^3u}{(u_\parallel-|\mathbf v|)^2+(1-|\mathbf v|^2)|\mathbf u_\perp|^2}
\le\frac{2\pi^2}{\sqrt{1-|\mathbf v|^2}}.
$$

Integrating also $\mathbf v,E,F$ yields

$$
\int_{E,F\le B}\frac{d^4p\,d^4q}{D^2}\le\frac{\pi^4B^4}{8},\qquad
\left\|\frac1D\right\|_{L^2(d\mu(p)d\mu(q);E_B^2)}
\le\frac{\pi B^2}{16\sqrt2}.
\tag{7.1}
$$

Restricting to spacelike transfers only improves this bound. Thus the null-edge and diagonal singularities are locally Hilbert–Schmidt, not exceptions silently removed from a compact integral-operator estimate.

For a fixed compact-energy input, the kernel

$$
\mathbf1_{s(p-q)<0}\widehat f(p-q)M_z(p,q)
\tag{7.2}
$$

also defines an integral operator for arbitrary Schwartz $\widehat f$. On a dyadic large-output-energy shell, Schwartz decay beats the at-most-fourth-power squared Hilbert–Schmidt bound from (7.1); an exponent $N>2$ suffices. Output need no longer have compact spectral support. Furthermore, if $A_z(f)$ denotes this **spacelike form-factor-sector** operator and $P_R$ restricts input energy,

$$
\|[A_z(f)-A_0(f)]P_R\|_{\rm HS}
\le\frac{|g|z^2}{2}\sqrt{\frac{\mu(E_R)}{8\pi}}\,
\|\widehat f\|_{L^2(d^4k)}.
\tag{7.3}
$$

This follows from the uniform difference bound in (1.5). It contrasts sharply with the isolated-correction counterexample in §3.2. It is not a construction of every particle-number block of the interacting field, and no interacting positivity theorem follows from this sector alone.

## 8. Verification and scope

**Verified:** the scalar rescaling and unit coupling; radial jump/sign, endpoint coefficient and compact-spectral uniqueness; a dense Gaussian-Fock domain for the isolated correction; its arbitrary-Schwartz counterexample; the independent CFT triangle phase-space coefficient; exact cancellation of the growing mode; the three-finite-radius double spectral match; and the stated compact/Schwartz estimates for the combined spacelike form-factor sector.

[Reproducible Wolfram checks](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction_checks.wl>) and [complete output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/half_bps_reconstruction_checks_results.txt>) contain 22 vanishing exact residuals. Three parameter sets compare the triple-Bessel integral, angular representation, Volterra solution and regular Green solution; residuals are below $10^{-38}$ in the saved run. The truncated radial-integral tails have explicit bounds below $2\times10^{-42}$. Two discontinuity checks agree at approximately 44 decimal places. All six sampled amplitude/boundary-rate inequalities pass. The final saved run has no Wolfram messages; finite numerical tests supplement rather than replace the analytic identities and domain proofs.

Three fresh independent derivations checked the radial construction, operator-domain obstruction, and spectral matching respectively. The coupling/OPE normalization and spacelike cancellation were independently rederived, including all Fourier factors and the two Wick contractions. Two further fresh manuscript reviews checked the domain estimates and the spectral/CFT comparison; both confirmed the claims within their stated scalar-tree and momentum-channel scope.

**Assumptions:** the same logfree AdS₅ vacuum, IIB field coordinates, gauge choice and classical large-$N$ regime as the preceding report; a formal first-order scalar interaction; protected boundary two-/three-point inputs; Gaussian normal ordering for the explicit correction; and the stated spectral domains. The double-cut calculation is explicit; its Wightman interpretation uses the standard positive-energy ordered-vacuum spectral correspondence.

**Not established:** a single unrestricted interacting operator-valued distribution assembling every transfer channel and particle sector; timelike-transfer interior/$i\epsilon$ reconstruction; full IIB gauge/gravitational dressing; or higher-order positivity and finite-$N$ corrections. The next substantive calculation is the timelike-transfer form factor with its absorptive/homogeneous contributions. It must be matched to the same boundary three-point distribution and the bulk spectral prescription, rather than inferred from the bounded spacelike answer.
