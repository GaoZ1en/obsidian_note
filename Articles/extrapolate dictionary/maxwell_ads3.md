# Maxwell extrapolation in AdS₃: logarithmic domains and the surviving scalar

## Abstract

The coincident Maxwell falloffs in AdS₃ do not by themselves define a boundary current. We classify the real, separated, momentum-independent logarithmic boundary domains of the transverse radial operator. Every finite condition $b=f a$ in $A_i=a_i\log(z/\ell)+b_i+\cdots$ has a normalizable negative radial eigenvalue; the unique nonnegative member of this family is the no-log condition $a_i=0$. In that domain we construct a local field-strength insertion whose positive-energy boundary limit is the dimension-two operator of a canonical massless scalar. Its Euclidean limit requires a local logarithmic derivative contact, proved uniformly for arbitrary unequal radii. The canonical electric flux vanishes at the boundary, while a rescaled flux gives a conserved dimension-three descendant. The Lorentz-covariant transverse potential itself has a light-cone obstruction on unrestricted vector tests. Thus the physical scalar, a boundary gauge potential and an ordinary dimension-one current cannot be identified merely by reading the logarithmic expansion.

## 1. The radial problem and the source pairing

We retain the conformal measure, source adjoint and order of limits of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>), PDF pp. 3–4 / printed pp. 1–2, with $d=2$. The local reference version is identified in the [scalar report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_quantization.md>). Set
$$
g_E=\frac{\ell^2}{z^2}(dz^2+(dx^1)^2+(dx^2)^2),\quad
\Omega=z/\ell,\quad \epsilon=\Omega^{-3}dz\,d^2x,
\quad \int_k=\int\frac{d^2k}{(2\pi)^2},
\tag{1.1}
$$
with orientation $dz\wedge dx^1\wedge dx^2$ and Fourier exponential $e^{ik\cdot x}$. The action and auxiliary source are
$$
S_E[A;J]=\frac14\int\epsilon F_{\mu\nu}F^{\mu\nu}
 -\int\epsilon J^\mu A_\mu,
\qquad W[J]=\log\frac{Z[J]}{Z[0]}.
\tag{1.2}
$$
The coupling is canonical, $\ell>0$, and there is no Chern–Simons term, charged matter, added boundary degree of freedom or nontrivial flux sector. We work on the Poincaré half-space, with regularity at its interior endpoint. Questions of compact holonomies and boundary edges are not part of this domain.

Unlike in AdS₄, the flat-coordinate Maxwell density retains a radial weight:
$$
S_E[A;0]=\frac1{4\ell}\int dz\,d^2x\,z F_{\mu\nu}F_{\mu\nu}.
\tag{1.3}
$$
Indices in this last expression are raised with the flat conformal metric. At nonzero boundary momentum put $P_{ij}=\delta_{ij}-k_i k_j/k^2$ and write
$$
A_i=A_i^T+ik_i\chi,\qquad \varphi=A_z-\partial_z\chi.
$$
After quotienting the gauge coordinate,
$$
S_E=\frac1{2\ell}\int_k\int dz\,z
 \left(|\partial_zA^T|^2+k^2|A^T|^2+k^2|\varphi|^2\right).
\tag{1.4}
$$
There is one transverse polarization in two boundary dimensions. The auxiliary $\varphi$ is essential for contact terms but is not another propagating photon.

The transverse indicial equation has a repeated zero root:
$$
A_i^T(z,k)=a_i(k)\log(z/\ell)+b_i^T(k)+O(z^2\log z).
\tag{1.5}
$$
In radial gauge the leading Gauss constraint is $k_i a_i=0$. Residual boundary gauge transformations shift the longitudinal part of $b_i$, so a condition written $b=f a$ below always concerns transverse data, or its equivalent statement modulo a boundary gradient. It is not an ungauge-fixed equality of local vector operators.

## 2. Boundary variation, logarithmic subtraction and stability

### 2.1 The boundary polarization must be specified

Let $L_\varepsilon=\log(\varepsilon/\ell)$. The lower-boundary variation is
$$
\delta S_{\mathrm{bulk}}\big|_\varepsilon
 =-\frac1\ell\int_k a_i(-k)
 \left(L_\varepsilon\delta a_i(k)+\delta b_i(k)\right)+o(1).
\tag{2.1}
$$
For the following formulas complex Fourier coefficients are paired to give real quadratic forms. The displayed variations are boundary variations; the bulk Euler–Lagrange term is understood until a solution is imposed. Define the renormalized $b$-polarization functional by
$$
I_b=\lim_{\varepsilon\downarrow0}
 \left[S_{\mathrm{bulk},\varepsilon}
 +\frac{L_\varepsilon}{2\ell}\int_k a_i(-k)a_i(k)\right],
\qquad \delta I_b=-\frac1\ell\int_k a_i(-k)\delta b_i(k).
\tag{2.2}
$$
The normal derivative $a_\varepsilon=\varepsilon\partial_z A(\varepsilon)$ can be used at finite cutoff before taking the asymptotic limit. This boundary completion is not the same variational problem as fixing $a$. The latter is obtained by the Legendre term
$$
I_a=I_b+\frac1\ell\int_k a_i(-k)b_i(k),\qquad
\delta I_a=\frac1\ell\int_k b_i(-k)\delta a_i(k).
\tag{2.3}
$$
Likewise
$$
I_f=I_a-\frac f{2\ell}\int_k a_i(-k)a_i(k)
\tag{2.4}
$$
gives $b^T=f a$ when $a$ is allowed to vary. A finite quadratic term is a source-contact choice at fixed source, but it changes the physical domain if it is used to impose (2.4). These two uses cannot be interchanged.

For $k>0$, interior regularity gives
$$
A_i^T=-a_iK_0(kz),\qquad b_i=c(k)a_i,\qquad
c(k)=\log(k\ell/2)+\gamma_E.
\tag{2.5}
$$
Thus $I_{a,\mathrm{on}}=\int_k c(k)a_i(-k)a_i(k)/(2\ell)$. For a prescribed mixed source $j=b^T-fa$, the formal response is $a=j/(c-f)$. These finite expressions alone say nothing about positivity of the fluctuating domain.

### 2.2 The entire constant Robin family has a negative mode

The radial eigenvalue operator is
$$
\mathcal L=-\frac1z\partial_z(z\partial_z)
\quad\text{on }L^2(\mathbb R_+,z\,dz).
\tag{2.6}
$$
Both $1$ and $\log z$ are square integrable at zero; infinity is limit-point. The endpoint boundary bilinear is proportional to $b_u^*a_v-a_u^*b_v$. Consequently the real separated, momentum-independent self-adjoint domains are exactly
$$
a=0\quad\text{or}\quad b=f a,\qquad f\in\mathbb R.
\tag{2.7}
$$
Equivalently $\psi=\sqrt z\,A$ gives the critical inverse-square operator $-\partial_z^2-1/(4z^2)$.

**Theorem.** Within the family (2.7), $a=0$ is the unique nonnegative extension. Every finite $f$ has exactly one negative radial eigenvalue,
$$
\boxed{\mathcal L K_0(\kappa z)=-\kappa^2K_0(\kappa z),\qquad
\kappa=\frac2\ell e^{f-\gamma_E}.}
\tag{2.8}
$$
*Proof.* At a negative eigenvalue $-\kappa^2$, regularity at infinity leaves only $K_0(\kappa z)$. Its endpoint data are $a=-1$ and $b=-c(\kappa)$, so the condition is $c(\kappa)=f$. Since $c$ is strictly increasing from $-\infty$ to $+\infty$, exactly one $\kappa>0$ exists for every finite $f$. Its norm is
$$
\int_0^\infty dz\,zK_0(\kappa z)^2=\frac1{2\kappa^2}.
\tag{2.9}
$$
The no-log domain has the Friedrichs quadratic form $\int z|A'|^2dz\ge0$. Neither its constant nor logarithmic zero-energy solution is normalizable at infinity. ∎

For completeness, the exact action-normalized inverse is
$$
G_0(z,w;k)=\ell I_0(kz_<)K_0(kz_>),
\tag{2.10}
$$
$$
G_f(z,w;k)=\ell\left[I_0(kz_<)K_0(kz_>)
 +\frac{K_0(kz)K_0(kw)}{c(k)-f}\right],
\tag{2.11}
$$
where $[-\partial_z(z\partial_z)+zk^2]G=\ell\delta(z-w)$. Formula (2.11) is a resolvent away from its pole, not a positive vacuum covariance. Its pole at $k=\kappa$ has precisely the bound-state residue $2\ell\kappa^2K_0(\kappa z)K_0(\kappa w)$ in the variable $k^2-\kappa^2$.

The instability is not a removable boundary contact or a gauge mode. On the domain $b=fa$, twice the renormalized quadratic action at fixed momentum is
$$
Q_f[A;k]=2I_f[A;k]=\frac1\ell\left\{\lim_{\varepsilon\downarrow0}
 \left[\int_\varepsilon^\infty dz\,z(|A'|^2+k^2|A|^2)
       +L_\varepsilon|a|^2\right]+f|a|^2\right\}.
\tag{2.12}
$$
For $A=C K_0(\kappa z)$ this gives the action
$$
I_f[A]=\frac{|C|^2}{4\ell\kappa^2}(k^2-\kappa^2).
\tag{2.13}
$$
A momentum wave packet supported in $0<k<\kappa$ is a negative direction, with nonzero $F_{12}=ikA_T$. In Lorentzian signature the same radial level gives $\omega^2=p^2-\kappa^2$, precluding a stable Poincaré vacuum. Changing the logarithm's reference length to $\ell_0$ shifts $f$ by $\log(\ell_0/\ell)$ and leaves $\kappa$ invariant; a change of notation cannot remove the instability. Momentum-dependent boundary dynamics, a finite cutoff or additional boundary fields are not included in this theorem.

## 3. The stable gauge-invariant finite-radial theory

From now on set $a=0$ and use the canonical positive Gaussian state selected by (2.10). Let $B=F_{12}$ and $E_i=F_{zi}$. The gauge-invariant kernels are
$$
\langle B(z,k)B(w,-k)\rangle=\ell k^2 I_0(kz_<)K_0(kz_>),
\tag{3.1}
$$
$$
\langle E_i(z,k)E_j(w,-k)\rangle
 =\frac\ell z\delta_{ij}\delta(z-w)
 -\ell k^2P_{ij}I_1(kz_<)K_1(kz_>).
\tag{3.2}
$$
Indeed $\langle\varphi(z)\varphi(w)\rangle=\ell\delta(z-w)/(zk^2)$ in (1.4). Its longitudinal contact combines with the transverse differentiated kernel to give the full local contact in (3.2). The electric thin-layer prescription therefore requires subtracting the exact weighted contact before taking the limit; subtracting only its leading $1/\eta$ approximation can retain profile-dependent finite terms. The tangential curvature (3.1), in contrast, is continuous in the radial variables and admits a thin-layer limit at every positive radius.

We choose the physical Lorentzian observable and its Euclidean representative to be
$$
\mathcal H_z^L=\frac\ell2F_{tx}(z),\qquad
\mathcal H_z^E=\frac{i\ell}{2}F_{\tau x}(z),\qquad t=-i\tau.
\tag{3.3}
$$
The factor $i$ follows from $F_{\tau x}^E=-iF_{tx}^L$. The real Euclidean curvature itself has a different reflection parity and opposite two-point sign. Equation (3.3) is the Schwinger representative of a Hermitian Lorentzian observable, not an assertion that $iF_{\tau x}$ is a real Euclidean random field.

For a scalar profile $f(z,x)$, the insertion $\int f\mathcal H_E$ has density source
$$
s^j=-\frac{i\ell}{2}\epsilon^{ij}\partial_i f,\qquad s^z=0,
\qquad J^\mu=\Omega^3s^\mu,
\qquad \partial_\mu s^\mu=0.
\tag{3.4}
$$
This is the complex-source Gaussian extension of the same bulk pairing $\int\epsilon J^\mu A_\mu$. For real $f$, $s(-k)=-s(k)^*$: the analytic Gaussian pairs $s(-k)G s(k)$, not the Hermitian expression $s(k)^*G s(k)$. This accounts for the sign below. For a slice take $f=\rho_\eta(z-z_0)j(x)$, pair first and then let $\eta\downarrow0$, using the conformal measure $d^2x$. The exact finite-radius covariance is
$$
C_H(z,w;k)=-\frac{\ell^3}{4}k^2 I_0(kz_<)K_0(kz_>),
\qquad W_H[j]=\frac12\int_k j(-k)C_Hj(k).
\tag{3.5}
$$
For several slices the same formula uses the corresponding covariance matrix. All higher connected functions vanish.

## 4. A uniform logarithmic boundary limit

Let $b=\max(z,w)$ and define the local derivative contact
$$
P_H(z,w;k)=\frac{\ell^3}{4}k^2\log(b/\ell).
\tag{4.1}
$$
It is proportional to the Fourier transform of $-\partial^2\delta^{(2)}(x)$, not to a nonlocal transverse projector. The boundary prescription is
$$
\boxed{C_{H,\partial}^E(k)=\lim_{z,w\downarrow0}(C_H-P_H)
 =\frac{\ell^3}{4}k^2\left[\log(k\ell/2)+\gamma_E\right].}
\tag{4.2}
$$
The limiting value at $k=0$ is interpreted continuously. Equivalently the logarithm is $\log(k/\mu_0)$ with $\mu_0=2e^{-\gamma_E}/\ell$. A different finite source-contact prescription shifts (4.2) by a constant times $k^2$, not by a change of bulk boundary domain.

**Uniform theorem.** For every $0<\beta<2$ there is a finite constant $C_\beta$ such that for all positive $z,w$ and $k\ge0$,
$$
|C_H-P_H-C_{H,\partial}^E|
 \le\frac{\ell^3}{4}C_\beta b^\beta k^{2+\beta}.
\tag{4.3}
$$
Hence the limit exists strongly in $\mathcal S'(\mathbb R^2)$ at arbitrary radius ratios, and the locally subtracted quadratic functional converges on Schwartz sources.

*Proof.* Put $x=kz_<\le y=kb$. The relevant dimensionless remainder is
$$
R(x,y)=I_0(x)K_0(y)+\log(y/2)+\gamma_E.
$$
For $0<y\le1$, the convergent Bessel expansions give
$K_0(y)=-[\log(y/2)+\gamma_E]I_0(y)+O(y^2)$ and
$I_0(x)I_0(y)-1=O(y^2)$ uniformly in $x/y$. Thus
$|R|\le C y^2(1+|\log y|)\le C_\beta y^\beta$ for $\beta<2$.
For $y\ge1$, positivity and monotonicity give
$I_0(x)K_0(y)\le I_0(y)K_0(y)=O(1/y)$; the remaining logarithm is bounded by $C_\beta y^\beta$ for $\beta>0$. Multiplication by $\ell^3k^2/4$ proves (4.3). The right-hand side uniformly controls bounded Schwartz sets. ∎

The separated Euclidean correlator is
$$
\langle\mathcal H_\partial(x)\mathcal H_\partial(0)\rangle_E
 =\frac{\ell^3}{2\pi|x|^4}.
\tag{4.4}
$$
The original real Euclidean $B$ instead has coefficient $-2\ell/\pi$, as required by (3.3). The distribution at coincidence is fixed by (4.2). Its scale dependence is a local derivative contact, compatible with the dimension-two separated-point correlator.

An explicit integrated example makes the prescription visible. For
$j(x)=j_0e^{-|x|^2/(2L^2)}$, $L>0$, Fourier integration gives
$$
W_{H,\partial}[j]
 =\frac{\pi\ell^3j_0^2}{8}
 \left[\log\frac\ell{2L}+\frac{1+\gamma_E}{2}\right].
\tag{4.5}
$$
Its dependence on the finite derivative contact is expected. The renormalized Schwinger functional need not be an ordinary positive Gaussian moment-generating function.

## 5. Scalar duality, including its contact term

In Lorentzian signature take orientation $dz\wedge dt\wedge dx$ and the canonical massless scalar $\phi$ with action
$-\tfrac12\int\sqrt{-g}(\nabla\phi)^2$. The physical duality is
$$
F=*_{L}d\phi,
\qquad F_{tx}=\frac\ell z\partial_z\phi,
\qquad \Pi_\mu:=\frac z\ell F_{z\mu}
 =\epsilon_{\mu\nu}\partial^\nu\phi,
\tag{5.1}
$$
where $\epsilon_{tx}=+1$ and tangential raising on the right uses $\eta=\operatorname{diag}(-,+)$. The no-log Maxwell condition sets the tangential derivatives of the scalar's leading boundary value to zero. In the neutral sector its irrelevant constant is fixed to zero, leaving the canonical fast scalar domain, $\Delta=2$.

One must not obtain the scalar action by substituting $F=*_{L}d\phi$ directly into the Maxwell action: that substitution without its first-order/Legendre step has the wrong sign. In Euclidean signature the first-order integral with quadratic $F$ term and $i\int d\phi\wedge F$ gives
$$
F_E=-i*_{E}d\phi_E
\tag{5.2}
$$
at the Gaussian saddle, together with an ultralocal $FF$ contact. The scalar boundary value is fixed, so the associated integration by parts has no varying boundary term in this zero-source ensemble.

The canonical scalar Green function is
$$
G_\phi^E(z,w;k)=\frac{zw}{\ell}I_1(kz_<)K_1(kz_>).
\tag{5.3}
$$
Its derivative identity is exact as a distribution:
$$
\frac{\ell^4}{4zw}\partial_z\partial_wG_\phi^E
 =\frac{\ell^3}{4z}\delta(z-w)
 -\frac{\ell^3k^2}{4}I_0(kz_<)K_0(kz_>).
\tag{5.4}
$$
Thus the covariance (3.5) equals the scalar-derivative covariance **minus** the displayed contact. The equality is not an identity of real Euclidean random fields. Lorentzian Wightman distributions have no such instantaneous term and satisfy the exact field identity
$$
\mathcal H_z=\frac{\ell^2}{2z}\partial_z\phi,
\qquad
\mathcal H_\partial=\lim_{z\downarrow0}(\ell/z)^2\phi.
\tag{5.5}
$$
This fixes the scalar normalization without borrowing a vector-primary formula at a singular endpoint.

## 6. Positive-energy distributions and the fate of the current

Use the Lorentzian Fourier convention
$$
W(t,x)=\int\frac{d\omega\,dp}{(2\pi)^2}e^{-i\omega t+ipx}\widetilde W(\omega,p),
\quad s=\omega^2-p^2,\quad q=\sqrt s,\quad
\theta_+=\theta(\omega)\theta(s).
\tag{6.1}
$$
The normalized spectral kernel of the physical observable is
$$
\boxed{\widetilde W_{H}(z,w;\omega,p)
 =\frac{\pi\ell^3}{4}\theta_+s J_0(qz)J_0(qw).}
\tag{6.2}
$$
It follows either from the radial resolvent or by applying (5.5) to the scalar kernel
$\widetilde W_\phi=(\pi zw/\ell)\theta_+J_1(qz)J_1(qw)$.
The boundary limit is therefore
$$
\boxed{\widetilde W_{H,\partial}=\frac{\pi\ell^3}{4}\theta_+s,
\qquad
W_{H,\partial}(t,x)=\frac{\ell^3}{2\pi[x^2-(t-i0)^2]^2}.}
\tag{6.3}
$$
These are positive spectral distributions. The radius-indexed matrices in (6.2) are outer products of real mode amplitudes.

The bounds $|J_0(y)|\le1$, $|J_0(y)-1|\le y^2/4$ prove strong $\mathcal S'$ convergence at arbitrary unequal radii. More precisely, the one-particle maps
$$
h_z(f;p)=\frac{\sqrt\pi\ell^{3/2}}2\sqrt s\,J_0(z\sqrt s)\widehat f(p)
\tag{6.4}
$$
on $L^2$ of the positive timelike cone satisfy
$$
\|h_z(f)-h_0(f)\|^2
 \le\frac{\pi\ell^3 z^4}{64}
 \int\frac{d\omega\,dp}{(2\pi)^2}\theta_+s^3|\widehat f|^2.
\tag{6.5}
$$
Consequently the actual free Maxwell field-strength insertions converge on the common domain $D((N+1)^{1/2})$, where $N$ counts the single photon polarization. The creation/annihilation bound is $2\|h_z-h_0\|\|(N+1)^{1/2}\Psi\|$ for real tests, with complex linear extension. Wick's theorem supplies independently smeared vacuum higher-point limits. No bounded-operator norm or unsmeared coincident-product limit is asserted.

### 6.1 Vanishing flux and a conserved descendant

The electric flux naturally conjugate to the boundary potential is $\Pi_\mu$ in (5.1), with the opposite sign for the outward canonical momentum. Its spectral kernel is
$$
\widetilde W_{\Pi_\mu\Pi_\nu}(z,w;p)
 =\frac{\pi zw}{\ell}\theta_+v_\mu v_\nu J_1(qz)J_1(qw),
\qquad v_\mu=(p,-\omega).
\tag{6.6}
$$
Since $|J_1(y)|\le y/2$, the flux tends to zero as a smeared operator. Its nonzero rescaling is instead
$$
\Omega^{-2}\Pi_\mu\longrightarrow
 \epsilon_{\mu\nu}\partial^\nu\mathcal H_\partial.
\tag{6.7}
$$
This is an identically conserved **dimension-three descendant** of a dimension-two scalar, not an independent dimension-one current. No nonzero dimension-one electric-flux current is obtained in this propagating sector.

### 6.2 Why the transverse potential is not that current

The formal Lorentz-covariant transverse potential has spectral expression
$$
\widetilde W_{A_\mu^TA_\nu^T}
 =\pi\ell\theta_+J_0(qz)J_0(qw)
 \left(\eta_{\mu\nu}+\frac{p_\mu p_\nu}{s}\right),
\qquad p_\mu=(-\omega,p).
\tag{6.8}
$$
Near a nonzero point of the light cone, generic smooth test vectors have a nonzero $p_\mu\widehat f^\mu$ and the norm integral contains $\int_0 ds/s$. Since $J_0(qz)\to1$, this obstruction is present even at finite radius. No positive spectral distribution on unrestricted Schwartz vector tests is defined by (6.8). A distributional finite part would not repair positivity.

Conserved smearings, gauge equivalence classes or field strengths avoid this singular longitudinal projector. This does not rule out every gauge potential: a noncovariant gauge may define useful nonlocal potentials. It rules out identifying the Euclidean transverse $b_i$ kernel with an unrestricted local unitary current. A Chern–Simons sector, extra boundary fields or global edge/zero modes can change the boundary current content; none is contained in the present pure-Maxwell vacuum.

## 7. Scope and verification

The spectral classification is for real constant logarithmic Robin conditions in the transverse radial sector, not for arbitrary momentum-dependent boundary actions. The positive theory and all stated operator limits use the no-log domain, the regular Poincaré endpoint and the neutral topologically trivial sector. In particular the instability of finite $f$ is a physical eigenvalue statement, whereas the logarithmic scale in (4.2) is a local source-contact choice in the stable theory.

[Verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_ads3_checks.wl>) and [recorded output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_ads3_checks_results.txt>) check endpoint equations, bound-state norm and energy, pole residue, scalar derivative identities, the Gaussian source integral and spectral normalization, as well as logarithmic-remainder and Bessel-bound samples. All fourteen labelled symbolic residuals vanish, all eighteen Bessel samples pass, and no Wolfram messages occur. Two independent derivations and manuscript reviews checked the domain classification, negative-mode action, uniform limit, duality contact, source signs and operator normalization. The uniform limit and the negative-mode counterexample are analytic results, not extrapolations from the samples.
