# Finite-radial scalar insertions with alternative and mixed boundary conditions

## Abstract

We construct the Gaussian finite-radial extrapolate dictionary for a real scalar on Poincaré Euclidean AdS with $0<\nu<1$. The construction retains the bulk source pairing, conformal slice measure, radial smearing and order of limits of [Scalar Correlators in Euclidean AdS](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>). Alternative quantization requires a new variational domain and its boundary completion, not only a new rescaling of the field. We derive the response kernel directly from endpoint solutions, obtain the exact finite-radial source functional, and prove its boundary limit on Schwartz sources. A constant mixed condition admits a positive Gaussian theory for nonnegative coupling. The undeformed alternative theory additionally requires $d>2\nu$ if all Schwartz sources are to be admitted. The finite-radial field contains a conditional bulk fluctuation not determined by the Euclidean boundary random field; its covariance vanishes in the alternative extrapolate limit. An explicit conformally coupled example supplies both position-space correlators and an integrated source functional.

## 1. Physical quantity and conventions

The reference is Di-Rong Su, *Scalar Correlators in Euclidean AdS*, the local [PDF](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/extrapolate.pdf>) with 40 PDF pages and creation metadata 2026-10-23. PDF page numbers exceed printed Arabic page numbers by two. We retain its equations (0.1), (0.6)–(0.12), (1.5), (3.8) and its Fourier convention. In particular,

$$
g=\frac{\ell^2}{z^2}(dz^2+\delta_{ij}dx^i dx^j),\qquad
\Omega=\frac z\ell,\qquad
\epsilon=\Omega^{-d-1}dz\,d^dx,
\qquad \epsilon_{\widetilde\Sigma}=d^dx,
\tag{1.1}
$$

$$
\varphi(z,x)=\int_k e^{ik\cdot x}\varphi(z,k),\qquad
\int_k:=\int\frac{d^dk}{(2\pi)^d},\qquad
E=\nabla^2-m^2,\qquad E\varphi=-J.
\tag{1.2}
$$

Momentum-space covariance kernels below suppress the common factor $(2\pi)^d\delta^{(d)}(k+k')$. Here $d\ge1$ is an integer, $\ell>0$, $k=|\mathbf k|$, $\nu=\sqrt{d^2/4+m^2\ell^2}\in(0,1)$ and $\Delta_\pm=d/2\pm\nu$. Regularity at the Poincaré interior means the decaying $K_\nu(kz)$ solution for $k>0$. The Euclidean state is the Gaussian state selected by that interior condition and the specified boundary quadratic form. Classical response calculations initially use the reference's smooth momentum wave packets supported away from $k=0$. We state separately when the Gaussian distributions extend to all Schwartz tests.

We use scaled asymptotic data

$$
\varphi=\Omega^{\Delta_-}a+\Omega^{\Delta_+}b
 +O(z^{\Delta_-+2})+O(z^{\Delta_++2}).
\tag{1.3}
$$

If the coefficients in an unscaled expansion are $\alpha,\beta$, then $a=\ell^{\Delta_-}\alpha$, $b=\ell^{\Delta_+}\beta$. Both $a$ and $b$ have the engineering units of $\varphi$. The constant $f$ in $b=fa$ is dimensionless in this convention; under boundary dilations it has weight $2\nu$. A relation $\beta=\widehat f\alpha$ instead uses $\widehat f=\ell^{-2\nu}f$.

The object to be computed is

$$
\mathcal O_z^{(-)}(x)=\Omega(z)^{-\Delta_-}\varphi(z,x),\qquad
W_{z,f}^{(-)}[j]=\log\left\langle
 e^{\int d^dx\,j(x)\mathcal O_z^{(-)}(x)}\right\rangle_f.
\tag{1.4}
$$

There is no independent slice field in this definition. Following the reference, first use a radial mollifier $\rho_\eta$ at fixed $z_0>0$ and the adjoint bulk source

$$
J_\eta[j](z,k)=\Omega(z)^{d+1-\Delta_-}\rho_\eta(z-z_0)j(k).
\tag{1.5}
$$

The thin-layer limit $\eta\downarrow0$ is taken after pairing kernels, and only then is $z_0\downarrow0$ taken. The source measure is $d^dx$, not the physical slice volume $\Omega^{-d}d^dx$.

The existing fast-branch calculation can be reused without modification: its direct response normalization, Gaussian shift and source differentiation imply

$$
G_+(z,u;k)=\ell^{1-d}(zu)^{d/2}I_\nu(kz_<)K_\nu(kz_>).
\tag{1.6}
$$

For $0<\nu<1$, its finite-radius covariance and subtraction are

$$
C_z^{(+)}(k)=\ell^{1+2\nu}z^{-2\nu}I_\nu(kz)K_\nu(kz),\qquad
P_z=\frac{\ell^{1+2\nu}}{2\nu}z^{-2\nu},
\tag{1.7}
$$

$$
C_+(k)=\lim_{z\downarrow0}(C_z^{(+)}-P_z)
=\frac{\ell^{1+2\nu}\Gamma(-\nu)}{2^{2\nu+1}\Gamma(1+\nu)}k^{2\nu}.
\tag{1.8}
$$

These are the reference's (3.10), (4.2), (5.5), (5.8), on PDF pp. 10–12 / printed pp. 8–10. Its Appendix F supplies the already established standard-branch Schwartz convergence. We do not repeat the integer-order/BF calculation here. In particular, the negative sign of (1.8) in this range is not changed: this is a locally subtracted Euclidean distribution, not an unsubtracted positive random-field covariance.

## 2. The boundary variational problem

Put $c=2\nu/\ell$. At a cutoff $z=\varepsilon$, the minimal Dirichlet-renormalized action appropriate to the two-branch domain is

$$
S_{D,\varepsilon}[\varphi]
=\frac12\int_{z\ge\varepsilon}\epsilon\,
 \bigl[(\nabla\varphi)^2+m^2\varphi^2\bigr]
 +\frac{\Delta_-}{2\ell}\int_{z=\varepsilon}d^dx\,\Omega^{-d}\varphi^2.
\tag{2.1}
$$

This is the reference's positive Euclidean bulk action and completion, with the additional term

$$
-\frac{\nu}{2\ell}\int_{z=\varepsilon}d^dx\,\Omega^{-d}\varphi^2.
\tag{2.2}
$$

Equation (2.2) vanishes on the source-free fast domain, so it does not change the reference's result there. It is essential when slow modes are allowed. For $0<\nu<1$ no derivative counterterm diverges; the slow-branch derivative corrections contribute $O(\varepsilon^{2-2\nu})$ to the boundary variation. No extra finite quadratic term is included in $S_D$.

The lower endpoint has outward normal $-\Omega\partial_z$. On a solution, direct integration by parts therefore gives

$$
\delta S_{D,\varepsilon}\big|_{\rm os}
=\int d^dx\,\Omega^{1-d}
 \left(-\partial_z\varphi+\frac{\Delta_-}{z}\varphi\right)\delta\varphi,
\qquad
\delta S_D\big|_{\rm os}=-c\int d^dx\,b\,\delta a.
\tag{2.3}
$$

Thus fixing $a$ is the Dirichlet variational problem. Fixing $b$ instead uses

$$
S_N=S_D+c\int d^dx\,ab,\qquad
\delta S_N\big|_{\rm os}=c\int d^dx\,a\,\delta b.
\tag{2.4}
$$

For a homogeneous mixed condition $b=fa$, use

$$
S_f=S_D+\frac{cf}{2}\int d^dx\,a^2,
\qquad \delta S_f\big|_{\rm os}=c\int d^dx\,(fa-b)\delta a.
\tag{2.5}
$$

A boundary insertion source $j$ adds $-\int ja$ to the action, giving $b=fa-j/c$. This change in variational boundary data, rather than a formal power replacement in (1.4), specifies the theory.

A useful positivity identity follows by setting $q=\Omega^{-\Delta_-}\varphi$. Integrating the cross term in the bulk action yields, with decay at infinity,

$$
S_D[\varphi]=\frac12\int_0^\infty dz\int d^dx\,
 \Omega^{1-2\nu}\left[(\partial_z q)^2+(\partial_iq)^2\right].
\tag{2.6}
$$

The lower endpoint from the cross term cancels (2.1). The normalizable $b$ correction contributes $z^{2\nu-1}$ to the radial integrand; the tangential $a$ contribution behaves as $z^{1-2\nu}$. Both are integrable precisely in the open interval under consideration. Thus $S_f$ is nonnegative for $f\ge0$, with infrared zero-mode qualifications given below.

One regulator realizing the mixed form replaces $a$ in (2.5) by $q(\varepsilon)$; its natural cutoff condition is

$$
\Omega(\varepsilon)^{1-2\nu}\partial_zq(\varepsilon)
=cfq(\varepsilon).
\tag{2.7}
$$

Its limit is $b=fa$. This provides a regulated Gaussian definition, rather than assuming individual quantum configurations have the smooth expansion (1.3).

## 3. Direct response and mixed propagators

The radial equation remains exactly the reference's sourced equation. Define

$$
u_-(z)=z^{d/2}I_{-\nu}(kz),\qquad
u_+(z)=z^{d/2}I_\nu(kz),\qquad
v(z)=z^{d/2}K_\nu(kz).
\tag{3.1}
$$

Here the names $u_-,u_+$ denote radial solutions, not the Bessel order. The connection identity and Wronskians give

$$
I_{-\nu}(t)=I_\nu(t)+\frac{2\sin\pi\nu}{\pi}K_\nu(t),\qquad
W[u_-,v]=W[u_+,v]=-z^{d-1}.
\tag{3.2}
$$

The regular $K$ solution has coefficient ratio

$$
\frac ba=-s(k),\qquad
s(k)=\frac{\Gamma(1-\nu)}{\Gamma(1+\nu)}
       \left(\frac{k\ell}{2}\right)^{2\nu}>0.
\tag{3.3}
$$

The left-end solution satisfying $b=fa$ is $u_f=u_-+\xi u_+$ with $\xi=f/s(k)$; its Wronskian with $v$ is $-(1+\xi)z^{d-1}$. Variation of constants, with the growing interior coefficient and the forbidden lower-end coefficient set to zero, gives

$$
\varphi[J](z,k)=\frac{\ell^{1-d}}{1+\xi}\left[
 v(z)\int_0^zdu\,u_f(u)\Omega(u)^{-d-1}J(u,k)
 +u_f(z)\int_z^\infty du\,v(u)\Omega(u)^{-d-1}J(u,k)
\right].
\tag{3.4}
$$

Consequently the response/covariance kernel is

$$
G_f(z,u;k)=\ell^{1-d}(zu)^{d/2}
 \frac{I_{-\nu}(kz_<)+\xi I_\nu(kz_<)}{1+\xi}K_\nu(kz_>).
\tag{3.5}
$$

The derivative jump is $[\partial_zG_f]_{u^-}^{u^+}=-\Omega(u)^{d-1}$, so $E_zG_f=-\Omega(u)^{d+1}\delta(z-u)$, with precisely the reference's bulk measure. No propagator normalization has been imported from a differently normalized GKPW prescription.

For $f\ge0$, $1+\xi>0$ at $k>0$, and no regular homogeneous solution satisfies the lower condition; uniqueness follows mode by mode as in the reference. At $f=0$,

$$
G_-(z,u;k)=\ell^{1-d}(zu)^{d/2}I_{-\nu}(kz_<)K_\nu(kz_>).
\tag{3.6}
$$

For $f<0$ the denominator vanishes at

$$
k_* =\frac2\ell\left[
 -f\frac{\Gamma(1+\nu)}{\Gamma(1-\nu)}\right]^{1/(2\nu)}.
\tag{3.7}
$$

More directly, the quadratic action of a regular profile with boundary value $a$ is $\tfrac c2\int_k[s(k)+f]|a(k)|^2$, which is negative on wave packets with $k<k_*$. Thus a pole prescription alone does not define a stable Euclidean Gaussian vacuum for negative $f$.

## 4. Exact finite-radial source functional

For the positive domain, the Gaussian shift used in the reference applies to $S_f$: all cross terms cancel by the sourced equation and the homogeneous Robin condition. Its source-independent determinant cancels in $Z[J]/Z[0]$. Hence

$$
W_f[J]=\frac12\int_k\int dzdu\,
 \Omega(z)^{-d-1}J(z,-k)G_f(z,u;k)\Omega(u)^{-d-1}J(u,k).
\tag{4.1}
$$

Define

$$
T_\nu(t)=\frac{2^{1-\nu}}{\Gamma(\nu)}t^\nu K_\nu(t),\qquad
h_k(z)=\Omega(z)^{\Delta_-}T_\nu(kz),\qquad
C_f(k)=\frac1{c[f+s(k)]}.
\tag{4.2}
$$

The identity (3.2), including all powers of $\ell$, gives the particularly useful decomposition

$$
\boxed{G_f(z,u;k)=G_+(z,u;k)+h_k(z)C_f(k)h_k(u).}
\tag{4.3}
$$

The first term is not optional. The thin-layer covariance therefore is

$$
\boxed{
C_{z,f}^{(-)}(k)=R_z(k)+T_\nu(kz)^2C_f(k),\qquad
R_z(k)=\ell^{1-2\nu}z^{2\nu}I_\nu(kz)K_\nu(kz),
}
\tag{4.4}
$$

$$
W_{z,f}^{(-)}[j]=\frac12\int_k|j(k)|^2C_{z,f}^{(-)}(k).
\tag{4.5}
$$

All connected correlators of order greater than two vanish, and the full correlators are Wick contractions. For pure alternative quantization,

$$
C_{z,0}^{(-)}(k)=\ell^{1-2\nu}z^{2\nu}I_{-\nu}(kz)K_\nu(kz).
\tag{4.6}
$$

This is obtained from a different Gaussian domain, not by applying the slow rescaling to $G_+$ alone; the latter would give only $R_z$ and a zero boundary limit.

## 5. Boundary-limit theorem and its infrared obstruction

**Proposition.** Let $0<\nu<1$ and either (i) $f>0$, $d\ge1$, or (ii) $f=0$, $d>2\nu$. For every real Schwartz source $j$, the paired thin-layer limit exists at fixed $z>0$, and

$$
\lim_{z\downarrow0}W_{z,f}^{(-)}[j]
=W_{\partial,f}^{(-)}[j]
=\frac12\int_k\frac{|j(k)|^2}{c[f+s(k)]}.
\tag{5.1}
$$

The covariance converges as a tempered distribution; no ultraviolet local subtraction is needed in this slow-rescaled limit. In the common Euclidean Gaussian realization, the smeared insertions converge in mean square. This last statement is about Euclidean random fields, not an assertion of pointwise convergence of quantum configurations or a Lorentzian Hilbert-space theorem.

*Proof.* The small-argument asymptotics give $T_\nu(0)=1$. The derivative identity

$$
\frac d{dt}\bigl(t^\nu K_\nu(t)\bigr)=-t^\nu K_{\nu-1}(t)
\tag{5.2}
$$

implies $0<T_\nu(t)\le1$. Positivity, continuity and the two endpoint asymptotics $I_\nu K_\nu\to1/(2\nu)$ at zero and $I_\nu K_\nu\sim1/(2t)$ at infinity give a finite constant $M_\nu=\sup_{t>0}I_\nu(t)K_\nu(t)$. Thus, uniformly in $k$,

$$
0\le R_z(k)\le\ell^{1-2\nu}M_\nu z^{2\nu},\qquad
0\le C_{z,f}^{(-)}(k)\le C_f(k)+\ell^{1-2\nu}M_\nu z_*^{2\nu}
\quad(0<z\le z_*).
\tag{5.3}
$$

For $f>0$, $C_f\le1/(cf)$; for $f=0$, $C_f\propto k^{-2\nu}$, which is locally integrable at zero precisely when $d>2\nu$. Schwartz decay controls infinity. Dominated convergence proves (5.1) and covariance convergence against arbitrary Schwartz tests in momentum space, not only squares.

For completeness, the covariance at unequal radii after the slow rescaling is

$$
R(z,u;k)+T_\nu(kz)T_\nu(ku)C_f(k),\qquad
R(z,u;k)=\ell^{1-2\nu}(zu)^\nu I_\nu(kz_<)K_\nu(kz_>).
\tag{5.4}
$$

The positive $G_+$ covariance implies $|R(z,u;k)|\le\sqrt{R_zR_u}$. On a compact radial interval around $z_0$, (5.3) supplies an integrable majorant for the mollifier pairing, proving the thin-layer limit. Equations (5.3)–(5.4) also show that for every $j$ the variance of $\mathcal O_z^{(-)}(j)-\mathcal O_u^{(-)}(j)$ tends to zero as $z,u\downarrow0$. Completion in Gaussian $L^2$ defines the boundary field. Gaussian moment identities give convergence of all fixed smeared moments and of the normalized exponential expectations. ∎

At $f=0$ the explicit answer is

$$
C_-(k)=\ell^{1-2\nu}\frac{2^{2\nu-1}\Gamma(\nu)}{\Gamma(1-\nu)}k^{-2\nu}.
\tag{5.5}
$$

For $d>2\nu$, the ordinary Riesz-distribution Fourier transform gives, at separated points,

$$
\langle\mathcal O^{(-)}(x)\mathcal O^{(-)}(y)\rangle
=\frac{\ell^{1-2\nu}\Gamma(\Delta_-)}{2\pi^{d/2}\Gamma(1-\nu)}
 \frac1{|x-y|^{2\Delta_-}}.
\tag{5.6}
$$

This has the generalized-free primary form with the normalization fixed by (1.4). The Fourier transform uses the same identity as the reference's Appendix I, now inside its convergent strip rather than its analytically continued range.

The condition $d>2\nu$ cannot be dropped for arbitrary Schwartz sources. If $j(0)\ne0$, the infrared part of (5.1) contains $\int_0^1dk\,k^{d-1-2\nu}$. For $d=1$, it diverges logarithmically at $\nu=1/2$ and by a power for $\nu>1/2$. This divergence is already present at finite radius and is not a boundary ultraviolet contact term. Removing a polynomial in $k^2$ cannot remove it. On the restricted space $j(0)=0$ the extra quadratic zero in $|j|^2$ makes the integral finite for the full interval $0<\nu<1$; this defines a field modulo its constant mode, not the same theory on all Schwartz tests. A positive $f$ also removes this infrared obstruction, but breaks scale invariance.

## 6. Legendre transformation, double trace and source normalization

The regular solution with fixed $a$ is $h_k(z)a(k)$, with $b=-sa$. Its renormalized action and Dirichlet generating functional are

$$
S_D^{\rm os}[a]=\frac c2\int_k s(k)|a(k)|^2,\qquad
W_D[a]=-S_D^{\rm os}[a].
\tag{6.1}
$$

Here $a$ is an asymptotic source, not the insertion source $j$ of the reference. The Dirichlet functional has derivative $\delta W_D/\delta a=cb$. Comparing (1.8) with (3.3) gives

$$
C_+(k)=-\frac{s(k)}c,\qquad
W_\partial^{(+)}[j]=W_D[j/c].
\tag{6.2}
$$

The equality uses exactly the reference's no-extra-finite-contact prescription in $0<\nu<1$.

The boundary Legendre transform is

$$
W_N[b]=\left(W_D[a]-c\int ab\right)_{\delta W_D/\delta a=cb}
=\frac c2\int_k\frac{|b(k)|^2}{s(k)}.
\tag{6.3}
$$

Its conjugate operator is $-ca$. Therefore

$$
W_\partial^{(-)}[j]=W_N[-j/c],\qquad
C_+(k)C_-(k)=-\frac1{c^2}=-\frac{\ell^2}{4\nu^2}.
\tag{6.4}
$$

Equations (6.2)–(6.4) specify both the sign and normalization of the source mapping; the two insertion functionals are not unqualified Legendre transforms with the same source variable. The product in (6.4) is an identity of the specified momentum multipliers at $k>0$, not a product of unrestricted position-space distributions or an identity invariant under arbitrary finite contact redefinitions. The source-space qualifications of §5 continue to apply to $W_N$.

More generally define the asymptotic mixed source $\beta_f=b-fa$. The functional

$$
S_{N,f}=S_D+c\int ab-\frac{cf}{2}\int a^2
\tag{6.5}
$$

has on-shell variation $c\int a\,\delta\beta_f$. Its generating functional is $\tfrac12c^2\int_k|\beta_f|^2C_f$, and the insertion source is $j=-c\beta_f$. Equivalently, integrate $a$ with the boundary action

$$
\frac12\int_k a(-k)C_-^{-1}(k)a(k)+\frac{cf}{2}\int d^dx\,a^2-\int ja.
\tag{6.6}
$$

In (6.6), $C_-^{-1}$ denotes the kinetic multiplier $cs(k)$. In the exceptional range $d=1$, $\nu\ge1/2$, it is not the inverse of an undeformed covariance already defined on all Schwartz tests: the positive-$f$ measure must instead be constructed directly from $c(s+f)$. With a common Gaussian regulator, this integral proves the double-trace relation

$$
\boxed{C_f=(C_-^{-1}+cf)^{-1}.}
\tag{6.7}
$$

A finite $f$ is a deformation of alternative quantization; it is not the operation of changing the Dirichlet variational problem into the alternative one. At fixed nonzero $k$, the large-$f$ limit also verifies the expected standard-branch relation, but only after source/operator rescaling and a contact subtraction:

$$
\lim_{f\to\infty}f^2\left[C_f(k)-\frac1{cf}\right]
=-\frac{s(k)}c=C_+(k).
\tag{6.8}
$$

The equality extends against Schwartz tests, since $f s/(f+s)\le s$ for $f>0$. The subtraction is the local constant multiplier $1/(cf)$. Without it, or without the factor $f^2$, this is not a standard-quantization extrapolate limit. At fixed bulk radii $G_f\to G_+$, as follows independently from (3.5).

## 7. What the finite-radial field contains

Integrating the Gaussian bulk fluctuations at fixed $a$ gives the conditional decomposition

$$
\varphi(z,k)=h_k(z)a(k)+\chi(z,k),\qquad
\langle aa\rangle=C_f,\quad
\langle\chi\chi\rangle=G_+,\quad
\langle a\chi\rangle=0.
\tag{7.1}
$$

This is a statement about the Euclidean Gaussian measure and its conditional distribution, obtained by splitting off the regular classical solution. It introduces no new slice oscillators. In slow-rescaled variables, the conditional variance is $R_z$, so

$$
\operatorname{Var}\bigl(\mathcal O_z^{(-)}(j)\mid a\bigr)
=\int_k|j(k)|^2R_z(k)>0
\tag{7.2}
$$

for nonzero $j$ at $z>0$. Consequently $T_\nu(kz)a(k)$ alone is not the finite-radial insertion. The missing term is calculable and vanishes as $z\downarrow0$. This prevents the incorrect Euclidean identification of a bulk insertion with only the regular extension of a boundary random field. It is not a no-go theorem for Lorentzian HKLL reconstruction: Lorentzian on-shell operator algebras and Euclidean off-shell conditional probability are different constructions.

In particular the three functionals under discussion are distinguished explicitly:

- The insertion functional is (4.5), with covariance $R_z+T_z^2C_f$.
- The regular on-shell Dirichlet action is (6.1), a quadratic functional of $a$ with kernel $cs$.
- The effective action for the boundary trace $a$, obtained by Gaussian bulk integration with its source-independent determinant divided out, has kernel $C_f^{-1}=c(s+f)$.

For a fixed finite slice, integrating both sides of that slice instead gives the marginal quadratic action with kernel $(C_{z,f}^{(-)})^{-1}$ in the slow-rescaled slice variable. This statement follows by the Gaussian marginal/Legendre relation and is not an assumption that the single-side on-shell action equals $W_{z,f}^{(-)}$. All functional-integral statements can first be made with common Gaussian regulators; only the normalized kernels and the proved distributional limits are used here.

## 8. A complete example: $d=3$, $\nu=1/2$

Take $m^2\ell^2=-2$, so $\Delta_-=1$, $\Delta_+=2$. Then

$$
c=\ell^{-1},\qquad s(k)=\ell k,\qquad
T_{1/2}(kz)=e^{-kz},\qquad C_f(k)=\frac1{k+f/\ell},
\tag{8.1}
$$

$$
C_{z,f}^{(-)}(k)=\frac{1-e^{-2kz}}{2k}
 +\frac{e^{-2kz}}{k+f/\ell}.
\tag{8.2}
$$

At $f=0$, this becomes $(1+e^{-2kz})/(2k)$. Fourier transformation using the radial sine integral gives, for $R=|x-y|>0$,

$$
\langle\mathcal O_z^{(-)}(x)\mathcal O_z^{(-)}(y)\rangle
=\frac1{4\pi^2}\left[\frac1{R^2}+\frac1{R^2+4z^2}\right]
\longrightarrow\frac1{2\pi^2R^2}.
\tag{8.3}
$$

The term $1/R^2$ is locally integrable in three dimensions; the formula also defines the covariance distribution without a contact prescription. It is the direct-plus-image structure of the conformally related massless half-space problem with Neumann boundary condition, providing an independent normalization check.

For a source with $j(k)=e^{-L^2k^2/2}$, $L>0$, the exact finite-radial generating functional is

$$
W_{z,0}^{(-)}[j]
=\frac1{8\pi^2L^2}\left[
 1-\frac{\sqrt\pi z}{2L}e^{z^2/L^2}\operatorname{erfc}(z/L)
\right]
\longrightarrow\frac1{8\pi^2L^2}.
\tag{8.4}
$$

Thus both a separated correlator and a nontrivial integrated source observable have been computed, with the same normalization. For comparison the reference's standard-branch subtracted covariance here is $C_+(k)=-\ell^2k$, which also follows from (6.8).

## 9. Verification, scope and remaining questions

The [self-contained Wolfram script](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_checks.wl>) checks the boundary variation, weighted action identity, alternative Wronskian, Legendre normalization, mixed denominator and half-order identities. It also checks (8.3)–(8.4) by integration and evaluates the full mixed Bessel formula against the split form for $\nu=1/5,1/2,4/5$. All eight symbolic residuals are zero with no messages. The numerical Gaussian-source integrals agree with (8.4) to absolute error below $7\times10^{-34}$ at the three tested radii. The [calculation output](</Users/koishi/Documents/Note/Articles/extrapolate dictionary/alternative_checks_results.txt>) records the precision, residuals and boundary convergence values. These finite numerical tests support normalization and implementation; the proofs of the parameter-dependent statements are the variation-of-constants construction and the bounds in §5, not the finite tests.

An independent reviewer, given the reference geometry, source pairing and standard kernel but no proposed alternative result, separately derived the boundary variation, mixed kernel, stability condition and infrared restriction. A subsequent comparison checked the Legendre source map and the interpretation of the conditional term.

The reference's conventions and equations (0.1)–(0.11), (3.7)–(3.10), (4.1)–(5.5), (5.7)–(5.8) were checked against rendered PDF pp. 3–4 and 10–12. Appendix F and the Fourier-transform argument in Appendix I were read as the evidence for reusing the standard convergence argument. This is not a rerun of every computation printed in the reference.

**Verified:** direct response and boundary variation analytically; exact Gaussian generating functionals; Schwartz boundary convergence and its infrared counterexample; explicit half-order position-space and source-integrated example; symbolic and numerical normalization checks; independent analytic review.

**Assumptions:** fixed Poincaré Euclidean AdS, free real scalar, constant real $f\ge0$, $0<\nu<1$, decaying interior endpoint, minimal finite quadratic prescription, and the source spaces specified in §5. Positivity here is Gaussian Euclidean positivity; a full Osterwalder–Schrader reconstruction is not supplied.

**Not established here:** BF and $\nu=1$ endpoint alternatives; global AdS states and zero modes; nonlinear or position-dependent mixed conditions; Lorentzian operator topology; interactions and loop renormalization. The next physical calculation is the finite-radial connected $\varphi^4$ contact diagram in the same source formalism, with separate estimates near bulk coincidence and the conformal boundary. In particular, the free Gaussian domination proof does not by itself justify exchanging an interacting vertex integral with the extrapolate limit.
