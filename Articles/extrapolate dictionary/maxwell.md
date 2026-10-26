# Gauge-invariant Maxwell extrapolation: electric contacts and magnetic boundary data

## Abstract

We construct the free Maxwell extrapolate dictionary in the topologically trivial Poincaré patch of AdS₄, directly from gauge-invariant field-strength insertions. Dirichlet and electric Neumann boundary conditions give different boundary observables. The normal electric field has a universal Euclidean radial delta contact, so its unsubtracted thin-layer insertion does not exist, even for transverse sources. After an explicitly specified local source subtraction, it has a conserved-current boundary limit. The Neumann magnetic field admits an ordinary Euclidean thin-layer limit, but its real axial covariance must not be identified with the polar-current Schwinger function: quantum electric–magnetic duality uses an imaginary source. We derive an exact finite-profile identity between these functionals. Both physical currents have the same positive-energy boundary density and a common-domain Lorentzian operator limit. No Proca mass limit or independent slice oscillators are used.

## 1. Theory, domain and observables

We use the metric, Fourier convention, conformal slice measure and source-adjoint prescription of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>), PDF pp. 3–4 / printed pp. 1–2, equations (0.1), (0.6)–(0.11). The reference version is identified in the [scalar report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_quantization.md>). In particular,
$$
g_E=\frac{\ell^2}{z^2}(dz^2+dx_i dx_i),\qquad
\Omega=z/\ell,\qquad \epsilon=\Omega^{-4}dz\,d^3x,
\qquad \int_k=\int\frac{d^3k}{(2\pi)^3},
\tag{1.1}
$$
with inverse Fourier exponential $e^{ik\cdot x}$. The orientation is $dz\wedge dx^1\wedge dx^2\wedge dx^3$, $\epsilon_{123}=1$, and the slice source measure is $+d^3x$. It is opposite to the induced boundary orientation at the lower endpoint $z=0$.

Take a real Abelian connection with canonical action and vanishing theta angle,
$$
S_E[A]=\frac14\int\epsilon\,F_{\mu\nu}F^{\mu\nu}
       =\frac14\int dz\,d^3x\,F_{\mu\nu}F_{\mu\nu},\qquad F=dA.
\tag{1.2}
$$
The second expression uses flat coordinate contractions; the cancellation of conformal factors is special to four bulk dimensions. We work in the vacuum sector without charged matter, monopoles, nontrivial bundles or boundary corners. For global questions the gauge group may be taken noncompact. Compact flux quantization is not inferred from the local Gaussian calculation.

The coordinate field strengths are
$$
E_i=F_{zi},\qquad B_i=\frac12\epsilon_{ijk}F_{jk}=(\operatorname{curl}A)_i.
\tag{1.3}
$$
Both are gauge invariant. We include an overall $\ell$ in their current normalization, so the Dirichlet electric current matches the normalization $\lim(\ell/z)A_i$ of the [Proca report](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/proca.md>). Removing this $\ell$ everywhere gives the usual canonical flux normalization. These are coordinate components: equivalently $E_i=\Omega^{-2}F_{\hat z\hat i}$.

For smooth real profiles $f_i(z,x)$ of compact radial support define electric insertions $\ell\int dz\,d^3x\,f_iE_i$. Integration by parts gives their adjoint coordinate-density source
$$
s^i_E=-\ell\partial_z f_i,\qquad s^z_E=\ell\partial_i f_i,
\qquad J_E^\mu=\Omega^4s_E^\mu,
\qquad \partial_\mu s_E^\mu=0.
\tag{1.4}
$$
For magnetic insertions $\ell\int f_iB_i$ the density source is
$$
s^i_B=\ell(\operatorname{curl}f)_i,\qquad s^z_B=0,
\qquad J_B^\mu=\Omega^4s_B^\mu.
\tag{1.5}
$$
Thus the field-strength insertions couple to conserved bulk sources and are gauge independent before any limiting procedure. For a slice, use $f_i=\rho_\eta(z-z_0)j_i(x)$, pair the bulk kernel first, and only then take $\eta\downarrow0$. In particular an electric insertion is not a delta-function potential source: it contains the derivative in (1.4).

## 2. Boundary conditions and gauge redundancy

The boundary variation at $z=0$, with the source measure just specified, is
$$
\delta S_E\big|_{\partial}=\int d^3x\,p_i\delta a_i,
\qquad a_i=A_i|_0,\qquad p_i=-E_i|_0.
\tag{2.1}
$$
The regular solution at $k>0$ decays at the Poincaré interior.

**Dirichlet (D).** Fix $a_i$ modulo its source gauge transformations. Homogeneous data can be represented by $a_i=0$. Gauge transformations preserving this representative vanish at the boundary, up to constants acting trivially in the present neutral sector. A variation of the source is not a new boundary oscillator. Gauge invariance of the source functional gives the current Ward identity.

**Electric Neumann (N).** Fix $p_i$, subject to $\partial_i p_i=0$. The Legendre-completed action $S_N=S_E-\int a_i p_i$ has variation $-\int a_i\delta p_i$. For homogeneous $p=0$, the original action with free boundary $a$ gives this condition naturally. Boundary gauge transformations are now quotiented, and $a_i$ is a boundary gauge field, not an ungauged local primary vector. Its curl is a local gauge-invariant observable. A real source directly coupled to $a_i$ must be conserved.

We specify these conditions rather than calling one of them simply “electric” or “magnetic” without a convention. Boundary gauge transformations at infinity, charged endpoints and nonzero flux sectors would require additional data. No such sector or subregion factorization is being added here.

## 3. The exact gauge-invariant inverse

Let $k=|\mathbf k|>0$ and
$$
P_{ij}=\delta_{ij}-\frac{k_i k_j}{k^2},\qquad
L_{ij}=\frac{k_i k_j}{k^2},\qquad
C_{ij}=i\epsilon_{i\ell j}k_\ell=-i\epsilon_{ij\ell}k_\ell,
\qquad C^2=k^2P.
\tag{3.1}
$$
The scalar endpoint kernels are
$$
g_D(z,w;k)=\frac{e^{-k|z-w|}-e^{-k(z+w)}}{2k},\qquad
g_N(z,w;k)=\frac{e^{-k|z-w|}+e^{-k(z+w)}}{2k}.
\tag{3.2}
$$
They invert $-\partial_z^2+k^2$ with their respective endpoint conditions. Momentum covariances below suppress $(2\pi)^3\delta^{(3)}(k+k')$.

A derivation that never imposes Gauss's law on off-shell configurations is to write
$$
A_i=A_i^T+ik_i\chi,\qquad \phi=A_z-\partial_z\chi.
$$
The gauge coordinate $\chi$ drops out, leaving
$$
S_E=\frac12\int_k\int dz\left[
 |\partial_zA^T|^2+k^2|A^T|^2+k^2|\phi|^2\right],
\qquad
\langle\phi(z)\phi(w)\rangle=\frac{\delta(z-w)}{k^2}.
\tag{3.3}
$$
The field $\phi$ supplies an auxiliary local Gaussian contact, not another photon polarization. Equivalently, flat Feynman gauge with relative boundary conditions gives $\langle A_iA_j\rangle_D=\delta_{ij}g_D$, $\langle A_zA_z\rangle_D=g_N$ and zero cross entries. Absolute boundary conditions interchange $D,N$. Either method gives the same field-strength kernels.

For Dirichlet boundary conditions,
$$
\boxed{\begin{aligned}
K^{EE}_{D,ij}&=\delta_{ij}\delta(z-w)-k^2P_{ij}g_N,\\
K^{BB}_{D,ij}&=k^2P_{ij}g_D,\\
K^{EB}_{D,ij}&=C_{ij}\partial_zg_D,\qquad
K^{BE}_{D,ij}=C_{ij}\partial_wg_D.
\end{aligned}}
\tag{3.4}
$$
For Neumann boundary conditions,
$$
\boxed{\begin{aligned}
K^{EE}_{N,ij}&=\delta_{ij}\delta(z-w)-k^2P_{ij}g_D,\\
K^{BB}_{N,ij}&=k^2P_{ij}g_N,\\
K^{EB}_{N,ij}&=C_{ij}\partial_zg_N,\qquad
K^{BE}_{N,ij}=C_{ij}\partial_wg_N.
\end{aligned}}
\tag{3.5}
$$
These are kernels for unscaled $E,B$; current kernels carry $\ell^2$. The identities
$$
\partial_z\partial_wg_D=\delta(z-w)-k^2g_N,
\qquad \partial_z\partial_wg_N=\delta(z-w)-k^2g_D
\tag{3.6}
$$
show that differentiating the transverse field supplies $P\delta$, while the auxiliary field in (3.3) supplies $L\delta$. Their sum is the **local** contact $\delta_{ij}\delta(z-w)$. Dropping the auxiliary field would incorrectly replace it by the spatially nonlocal projector $P\delta$.

### 3.1 Constraints with insertions

The magnetic Bianchi constraint is exact. The electric constraint is a Schwinger–Dyson identity:
$$
k_i K^{BB}_{ij}=k_i K^{EB}_{ij}=0,\qquad
k_i K^{EE}_{ij}=k_j\delta(z-w).
\tag{3.7}
$$
The interior Maxwell Schwinger–Dyson identity, with flat conformal-coordinate raising and delta-function volume, is
$$
\partial_X^\mu\langle F_{\mu\nu}(X)F_{\rho\sigma}(Y)\rangle
 =(\delta_{\nu\sigma}\partial^X_\rho-\delta_{\nu\rho}\partial^X_\sigma)
 \delta^{(4)}(X-Y).
\tag{3.8}
$$
Gauss's law holds homogeneously off insertions, not by deleting its contact at an insertion. This is consistent with gauge invariance of (1.4): gauge invariance of a field-strength source is distinct from declaring the off-shell electric divergence identically zero.

## 4. Thin layers and the renormalized electric functional

For identical normalized radial profiles centered at $z=a>0$, equations (3.4) give
$$
\begin{aligned}
K^{EE}_{D,\eta}&=\|\rho_\eta\|_2^2\mathbf1
 -\frac{k}{2}(1+e^{-2ka})P+o(1),\\
K^{BB}_{D,\eta}&\longrightarrow\frac{k}{2}(1-e^{-2ka})P,\\
K^{EB}_{D,\eta}=K^{BE}_{D,\eta}&\longrightarrow\frac12Ce^{-2ka}.
\end{aligned}
\tag{4.1}
$$
Here $\|\rho_\eta\|_2^2=\eta^{-1}\|\rho\|_2^2$. The first line proves that the unsubtracted Euclidean electric slice insertion does not exist, including on transverse tests. The last line is a **specified symmetric prescription**: $\partial_zg_D$ has a unit jump at $z=w$. Approaching the radial diagonal from the two sides changes its limit by one and changes the mixed kernel by $C$, a spatial contact. Different profile/order choices need not give the same mixed finite part.

For general smooth profiles define the real-source electric functional
$$
W_{D,E}[f]=\log\left\langle e^{\ell\int f\cdot E_D}\right\rangle_D,
\qquad
W^{\mathrm{ren}}_{D,E}[f]=W_{D,E}[f]-\frac{\ell^2}{2}\int dz\,d^3x\,f_i f_i.
\tag{4.2}
$$
This fixes a source-contact prescription with no additional finite local terms. It does not delete a term from the Maxwell inverse or change the bulk state. The exact result is
$$
\boxed{W^{\mathrm{ren}}_{D,E}[f]
 =-\frac{\ell^2}{2}\int_k\int dz\,dw\,
 f_i(z,-k)\,k^2P_{ij}g_N(z,w;k)\,f_j(w,k).}
\tag{4.3}
$$
After this subtraction, continuous $g_N$ permits the thin-layer limit for any finite collection of radii and arbitrary Schwartz sources. The resulting electric kernel is nonlocal and negative on transverse Euclidean source pairings. It is not a positive covariance of a stand-alone real Euclidean slice random field. It is nevertheless the appropriate Schwinger finite part for the positive-energy field discussed below.

In particular, for $b=\max(z,w)$,
$$
\left\|-\ell^2 k^2Pg_N(z,w;k)+\ell^2 kP\right\|
 \le\ell^2 b k^2.
\tag{4.4}
$$
This follows directly from $0\le1-e^{-t}\le t$ and proves a strong Schwartz-distribution boundary limit at arbitrary radius ratios:
$$
\boxed{W_{D,\partial}[j]=-\frac{\ell^2}{2}\int_k j_i(-k)kP_{ij}j_j(k).}
\tag{4.5}
$$
The boundary source Ward identity is $W_{D,\partial}[j+\partial\lambda]=W_{D,\partial}[j]$. The same identity holds for the finite-part functional (4.3). It does not justify imposing it on the unsubtracted contact in (4.2).

The Neumann magnetic moment-generating functional is instead an ordinary real-source Gaussian:
$$
W_{N,B}[f]=+\frac{\ell^2}{2}\int_k\int dz\,dw\,
 f_i(z,-k)k^2P_{ij}g_N(z,w;k)f_j(w,k).
\tag{4.6}
$$
It needs no radial contact subtraction and has the opposite boundary tensor, $+\ell^2kP$. The same estimate (4.4) proves its boundary limit. In contrast, $k^2g_D\le k^2\min(z,w)$ proves that the unrescaled Dirichlet magnetic field vanishes at the boundary, and the Neumann electric finite part vanishes. The residual mixed contact in (4.1) must not be mistaken for a nonzero separated-point correlator with the Dirichlet boundary magnetic field. Restricting that field first and taking a simultaneous mixed thin-layer limit are different prescriptions.

Away from coincidence, the Dirichlet electric current has the normalization
$$
\langle\mathcal J_i(x)\mathcal J_j(0)\rangle_E
 =\frac{2\ell^2}{\pi^2}
 \frac{\delta_{ij}-2x_i x_j/|x|^2}{|x|^4}.
\tag{4.7}
$$
The Fourier finite part is (4.5). The *real Euclidean* Neumann field $\ell B$ has the negative of (4.7), consistent with (4.6). Understanding this sign requires keeping track of the observable's reflection and Wick properties, rather than changing the Fourier normalization.

### 4.1 A complete finite-radius smeared functional

For $j_i(x)=e_i j_0e^{-|x|^2/(2L^2)}$ with $e_i e_i=1$, no conservation restriction is needed: the functional projects out the longitudinal component. At equal radius $z$, angular integration gives the exact result
$$
W^{\mathrm{ren}}_{D,E,z}[j]
 =-\frac{2\pi\ell^2j_0^2L^2}{3}\left[\frac12+Q(z/L)\right],
\tag{4.8}
$$
where
$$
Q(t)=\int_0^\infty du\,u^3e^{-u^2-2tu}
 =\frac{1+t^2}{2}-\frac{\sqrt\pi}{4}t(3+2t^2)e^{t^2}\operatorname{erfc}(t).
\tag{4.9}
$$
In particular $Q(0)=1/2$, so $W_{D,\partial}[j]=-2\pi\ell^2j_0^2L^2/3$. The Neumann real magnetic functional is the negative of (4.8), whereas its characteristic functional equals (4.8). This example distinguishes the finite-radius and boundary objects without relying on a formal point-source insertion.

## 5. Boundary gauging and exact finite-profile duality

### 5.1 Boundary value, flux and source transforms

For fixed transverse Dirichlet value $a_i(k)$, the regular saddle is $A_i^T(z,k)=e^{-kz}a_i^T(k)$. Therefore
$$
p_i=kP_{ij}a_j,\qquad S_{D,\mathrm{on}}[a]=\frac12\int_k a_i(-k)kP_{ij}a_j(k),
\qquad Z_D[a]/Z_D[0]=e^{-S_{D,\mathrm{on}}[a]}.
\tag{5.1}
$$
After the independently derived boundary limit, (4.5) equals $\log Z_D[\ell j]/Z_D[0]$. This equality is not an assumption equating finite-slice insertions with radial on-shell actions.

Integrating the boundary value modulo gauge gives Neumann boundary data. For a real conserved source $q_i$,
$$
\frac{\int Da/\mathrm{Gauge}\,Z_D[a]e^{\int q\cdot a}}
 {\int Da/\mathrm{Gauge}\,Z_D[a]}
 =\exp\left(\frac12\int_k q_i(-k)\frac{P_{ij}}kq_j(k)\right).
\tag{5.2}
$$
Thus $\langle a^Ta^T\rangle_N=P/k$. On the transverse sector this real Gaussian transform has saddle $p=q$ and agrees with $W_N[q]=\operatorname{ext}_a(W_D[a]+qa)$. In this free model the determinant is independent of $q$ and cancels in the normalized ratio. An imaginary source instead gives the negative quadratic exponent and a complex saddle; it is a different transform.

The finite-radius kernel itself displays the additional bulk fluctuations:
$$
g_N(z,w)=g_D(z,w)+\frac{e^{-k(z+w)}}k.
\tag{5.3}
$$
Thus the Euclidean transverse field is a boundary conditional mean $e^{-kz}a^T$ plus an independent Dirichlet Gaussian fluctuation. The finite-radial field is not obtained by adding independent slice oscillators, nor by identifying it with the conditional mean alone. The boundary gauge potential is useful in this quotient calculation; no claim is made that it is a local unitary spin-one primary on unrestricted Lorentzian tests.

### 5.2 The imaginary source is essential

For the entire radial profile, not just its boundary limit, (4.3) and (4.6) imply
$$
\boxed{W^{\mathrm{ren}}_{D,E}[f]
 =\log\left\langle\exp\left[-i\ell\int dz\,d^3x\,f_i B_{N,i}\right]\right\rangle_N.}
\tag{5.4}
$$
This is exact in the Gaussian theory; all higher connected terms vanish. Characteristic derivatives on the right insert $-i\ell B_N$. The covariance of the real random field $\ell B_N$ is still positive and is obtained by including $(-i)^{-2}$ when differentiating the characteristic functional. A negative characteristic Hessian is not a negative covariance of that real field.

A first-order derivation fixes the duality convention. Use the original Neumann field strength $F_N$, a fixed dual Dirichlet source, and the inverse-$S$ sign
$$
S_{\mathrm{FO}}=\frac12\int F_N\wedge *F_N-i\int F_N\wedge F_D,
\qquad F_D=dA_D.
\tag{5.5}
$$
The original strength is treated as independent in the first-order integral; variation of the dual potential imposes its Bianchi condition, with its boundary source held fixed. Completing the square gives a canonical dual Maxwell action and
$$
F_N=i*F_D,\qquad F_D=-i*F_N.
\tag{5.6}
$$
These are saddle/separated-correlation relations, not an equality of real Euclidean random fields. The Gaussian contact completing them is precisely the contact in (3.4)–(3.5). When $F_N=dA_N$, the cross action is $+i\int d^3x\,a_D\cdot B_N$, since the induced lower-boundary orientation is negative. Its Boltzmann exponent is consequently the negative-$i$ BF source in the boundary limit of (5.4), with $a_D=\ell j$. Variation of the original boundary value gives $E_N=iB_D$ and reduces to homogeneous Neumann at zero dual source. This original-Neumann, fixed-dual-source formulation fixes the variational boundary data; a different starting ensemble requires its own boundary completion.

We use canonical noncompact normalization in (5.5). For a compact gauge group a convention such as $B/(2\pi)$ for the topological current changes the BF coefficient and the dual coupling. No statement about flux quantization or a complete $SL(2,\mathbb Z)$ action follows from suppressing those factors.

## 6. Lorentzian observables, positivity and the boundary operator

Continue to $g_L=\ell^2z^{-2}(dz^2-dt^2+dx^2+dy^2)$, orientation $dz\wedge dt\wedge dx\wedge dy$, and the Poincaré positive-energy vacuum. Use
$$
W(t,\mathbf x)=\int\frac{d\omega\,d^2p}{(2\pi)^3}
 e^{-i\omega t+i\mathbf p\cdot\mathbf x}\widetilde W(\omega,\mathbf p).
\tag{6.1}
$$
Tangential indices are $\mu=0,1,2$, $\eta=(-,+,+)$, $p_\mu=(-\omega,\mathbf p)$, $s=\omega^2-|\mathbf p|^2$, $q=\sqrt s$, and $\theta_+=\theta(\omega)\theta(s)$. Put
$$
\Pi^T_{\mu\nu}=\eta_{\mu\nu}+\frac{p_\mu p_\nu}{s}.
\tag{6.2}
$$
This is positive semidefinite on source component pairings; in the timelike rest frame it is $\operatorname{diag}(0,1,1)$.

The real Lorentzian fields of interest are
$$
\mathcal J_{z,\mu}=\ell F^D_{z\mu},\qquad
\mathcal K_{z,\mu}=\frac\ell2\epsilon_{\mu\nu\rho}F_N^{\nu\rho},
\qquad \epsilon_{012}=+1.
\tag{6.3}
$$
In (6.3), $F_N^{\nu\rho}=\eta^{\nu\alpha}\eta^{\rho\beta}F^N_{\alpha\beta}$ uses flat conformal-coordinate raising, not $g_L$; equivalently $\mathcal K_{z,\mu}=\ell(*_LF_N)_{z\mu}$, since the four-dimensional Hodge star on two-forms is conformally invariant. Their definition uses the actual Maxwell field strengths. No gauge fixing or dressing is needed for these local observables on a fixed background.

The Wick conversion is important. With $t=-i\tau$, $A_\tau^E=-iA_t^L$. The ordinary polar-current Schwinger representatives are
$$
\mathcal J_E=\ell E_D,\qquad \mathcal K_E=-i\ell B_N.
\tag{6.4}
$$
For example $K_0^L=\ell F_{xy}$, $K_x^L=\ell F_{ty}$, $K_y^L=-\ell F_{tx}$; these components directly give (6.4). The real Euclidean curl $B$ is axial under a time reflection. Anti-linearity of reflection together with the factor $-i$ converts it into the polar-current reflection law. Thus the sign in (4.6) neither violates Lorentzian positivity nor permits identifying the real Euclidean magnetic field with a polar current without this conversion.

For either physical current, the exact finite-radial Wightman density is
$$
\boxed{\widetilde W_{zw,\mu\nu}
 =2\ell^2q\,\theta_+\cos(qz)\cos(qw)\Pi^T_{\mu\nu}.}
\tag{6.5}
$$
For the Dirichlet electric field this follows by differentiating the normalized sine radial modes of the transverse potential; for the Neumann magnetic field it follows by taking the curl of its cosine modes. The normalization is also fixed by the spectral continuation of (3.2), including the covector factors in (6.4). There is no Wightman counterpart of the instantaneous Euclidean contact.

Consequently,
$$
\boxed{\widetilde W_{\partial,\mu\nu}
 =2\ell^2\theta_+\frac{s\eta_{\mu\nu}+p_\mu p_\nu}{\sqrt s},
\qquad p^\mu\widetilde W_{\partial,\mu\nu}=0.}
\tag{6.6}
$$
The light-cone singularity is at worst $s^{-1/2}$, locally integrable. Since
$|\cos(qz)\cos(qw)-1|\le q^2(z^2+w^2)/2$, the boundary limit is strong in $\mathcal S'$ with a quadratic-radius bound after Schwartz pairing. The position form is
$$
W_{\partial,\mu\nu}(x)=\frac{2\ell^2}{\pi^2}
 \left[\frac{\eta_{\mu\nu}}{\sigma_+^2}
 -\frac{2x^-_\mu x^-_\nu}{\sigma_+^3}\right],\qquad
\sigma_+=|\mathbf x|^2-(t-i0)^2,
\tag{6.7}
$$
where $x^-_\mu=\eta_{\mu\nu}(t-i0,\mathbf x)^\nu$ and the common analytic prescription defines the distribution. At imaginary time and zero spatial separation, $W_{xx}(-i\tau,0)=2\ell^2/(\pi^2\tau^4)$, providing an independent normalization check.

Choose two transverse polarization vectors with sum of outer products $\Pi^T$. On the positive timelike cone the one-particle map is
$$
h_z(f;p)=\sqrt{2\ell^2q}\cos(qz)
 (\varepsilon^{(1)}\!\cdot\widehat f,\varepsilon^{(2)}\!\cdot\widehat f).
\tag{6.8}
$$
For Schwartz $f$, cone integrability and the cosine bound give
$$
\|h_z(f)-h_0(f)\|^2\le\frac{\ell^2z^4}{2}
 \int\frac{d\omega\,d^2p}{(2\pi)^3}\theta_+q^5
 \sum_{a=1}^2|\varepsilon^{(a)}\!\cdot\widehat f|^2\longrightarrow0.
\tag{6.9}
$$
The creation/annihilation estimate yields the corresponding real smeared field limit on $D((N+1)^{1/2})$, where $N$ is the photon number operator. Complex tests are defined by linear extension; Wick's theorem gives independently smeared vacuum $n$-point limits. This is not bounded-operator convergence or a statement about coincident unsmeared products.

Equation (6.8) also gives a direct boundary representation: on the positive-energy spectral space the finite electric current is obtained from its boundary current by the multiplier $\cos(z\sqrt s)$. It is bounded there. Its Euclidean counterpart would involve hyperbolic functions and must not be used as a globally defined change of arbitrary Schwartz sources. This Lorentzian mode statement and the Euclidean conditional fluctuation in (5.3) concern different objects and are not contradictory.

## 7. Limits of the construction and verification

On $\mathbb R^3$, $g_N\sim1/k-\max(z,w)$ at small $k$, but $1/k$ is locally integrable with the three-dimensional momentum measure. The Euclidean boundary gauge covariance and the gauge-invariant functionals therefore admit Schwartz tests. A strictly constant boundary mode has no nontrivial decaying regular solution and is not supplied by this argument. Flat holonomies on compact boundaries, large gauge transformations, total flux/charge sectors and edge modes at subregion boundaries require additional choices; they have not been replaced by hidden slice oscillators.

The result concerns canonical free Maxwell theory in AdS₄ with the stated two boundary conditions and vacuum. AdS₃ logarithmic asymptotics, interacting charged matter, theta deformations and dynamical gravity remain outside this report. The normal-electric Euclidean contact obstruction and the characteristic-source distinction already show why a gauge-theory dictionary cannot be obtained by simply setting the Proca mass to zero.

[Verification code](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_checks.wl>) and [recorded output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/maxwell_checks_results.txt>) check curl algebra, endpoint equations and jumps, electric/magnetic derivative relations, the tensor Fourier normalization, boundary gauging and the imaginary-time spectral normalization. Twenty labelled groups give fifty-six vanishing scalar residuals, all sixteen cosine samples pass, and no Wolfram messages occur. Two independent derivations and manuscript reviews checked the field-strength contacts, boundary ensembles, duality/Wick signs, normalization and common-domain estimate. The analytic proofs above establish the uniform limits; finite numerical samples are only supporting tests.
