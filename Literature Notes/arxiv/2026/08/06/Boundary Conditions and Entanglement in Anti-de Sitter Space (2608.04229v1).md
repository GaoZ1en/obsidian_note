---
paper id: 2608.04229v1
title: Boundary Conditions and Entanglement in Anti-de Sitter Space
authors:
  - Konstantinos Boutivas
  - Dimitrios Katsinis
  - Georgios Pastras
  - Nathan Smeyers
  - Nikolaos Tetradis
publication date: 2026-08-04T21:08
abstract: |-
  The ground-state entanglement entropy of a conformally coupled scalar in global AdS4 is computed for centered spherical regions and a family of mixed boundary conditions. A radial oscillator lattice and continuum extrapolation indicate boundary-condition-independent ultraviolet divergences but a boundary-sensitive finite term; an analytic 1+1-dimensional calculation reproduces the leading Neumann-versus-Dirichlet small-radius difference.
comments: "26 pages, 8 figures"
url: https://arxiv.org/abs/2608.04229v1
summary: "A finite-lattice route from mixed AdS boundary data to a boundary-sensitive finite entropy, with an analytic s-wave endpoint benchmark."
tags: []
---

[[2026_08_06_overview|Back to the 2026-08-06 overview]]

This paper is unusually close to the vault's alternative-quantization and nonuniform-regulator work. Its reliable core has three distinct claim tiers: a continuum self-adjoint-extension problem, exact finite-\(N\) Gaussian matrices, and extrapolated continuum entropy coefficients. Only the first two and the analytic \(1+1\)-dimensional endpoint calculation are reproducible from the source bundle; the numerical continuum fits have no supplied code or raw data.

## Source route through the paper

- Section 1 motivates the separation of UV-divergent and finite entropy terms and asks which part can depend on AdS boundary conditions.
- Section 2.1 compactifies global AdS, reduces the scalar to radial Pöschl--Teller problems, identifies the two normalizable falloffs, and parameterizes the self-adjoint extensions by \(A\).
- Section 2.2 specializes to a conformal scalar in AdS4 and encodes the Robin condition in an auxiliary lattice site and a tridiagonal stiffness matrix \(K\).
- Section 2.3 obtains the Gaussian ground-state kernel \(\Omega=K^{1/2}\) and the entropy from restricted covariance products.
- Section 3.1 sends the angular cutoff and radial lattice cutoff to their limits by numerical fitting.
- Section 3.2 reports a boundary-independent area coefficient and logarithm, then isolates the boundary-sensitive finite difference relative to Dirichlet.
- Section 4 interprets the result as an IR/\(s\)-wave effect and states the numerical limitations.
- Appendix A derives the Dirichlet--Neumann \(1+1\)-dimensional kernels, their restricted product, its small-\(R/L\) spectrum, and the coefficient \(1/6\) in the DN--DD entropy difference.

## Global AdS scalar and notation collisions

The global metric is

$$
ds^2=-f(r)dt^2+\frac{dr^2}{f(r)}+r^2d\Omega_{d-1}^2,
\qquad
f(r)=1+\frac{r^2}{a^2}.
$$

With \(r=a\tan(w/a)\),

$$
ds^2=\frac1{\cos^2(w/a)}
\left[-dt^2+dw^2+a^2\sin^2(w/a)d\Omega_{d-1}^2\right],
$$

where \(0\le w<\pi a/2\). A uniform \(w\)-lattice is therefore strongly nonuniform in areal radius \(r\).

After the spherical rescaling, each mode has action

$$
\begin{aligned}
S_{\ell\vec m}=\frac12\int dt\,dw\Bigg[
&\dot\phi_{\ell\vec m}^2-(\partial_w\phi_{\ell\vec m})^2\\
&-\frac1{a^2}\left(
\frac{\nu^2-1/4}{\sin^2(w/a)}+
\frac{\kappa^2-1/4}{\cos^2(w/a)}
\right)\phi_{\ell\vec m}^2
\Bigg]
+\text{boundary term},
\end{aligned}
$$

with

$$
\nu=\ell+\frac d2-1,
\qquad
\kappa=\sqrt{\mu^2a^2+\frac{d^2}{4}}.
$$

The paper's \(\kappa\) is the falloff half-gap usually denoted \(\nu\) in the vault. Its \(\nu\) is instead an angular centrifugal parameter. The paper also uses \(A\) both for the Robin parameter and, locally, for a subsystem.

| Paper notation | Meaning | Vault translation |
|---|---|---|
| \(a\) | AdS radius | often set to \(1\) locally |
| \(w'=\pi a/2-w\) | boundary defining coordinate | \(w'\sim a^2/r\) |
| \(\kappa\) | falloff half-gap | vault \(\nu_{\rm falloff}\) |
| \(\nu=\ell+d/2-1\) | angular parameter | not a falloff exponent |
| \(\Delta_\pm=d/2\pm\kappa\) | AdS dimensions | standard/alternative branches |
| \(\phi_-\) | slow coefficient | \(\Psi\), standard source / alternative response |
| \(\phi_+\) | fast coefficient | \(J\), standard response / alternative source |
| \(A\) | mixed-boundary parameter | \(A=0\) Neumann; \(A\to\infty\) Dirichlet |
| \(Q\) | auxiliary-site ratio | finite-\(N\) regulator datum |
| \(K\) | stiffness matrix | exact finite-\(N\) quadratic form |
| \(\Omega=K^{1/2}\) | ground-state kernel | covariance data |

## Radial spectrum and mixed boundary data

The radial Sturm--Liouville problem is

$$
-\varphi''+
\frac1{a^2}\left[
\frac{\nu^2-1/4}{\sin^2(w/a)}+
\frac{\kappa^2-1/4}{\cos^2(w/a)}
\right]\varphi
=E^2\varphi.
$$

The origin-regular solution is hypergeometric,

$$
\varphi_s(w)=C
\sin^{\nu+1/2}(w/a)
\cos^{\kappa+1/2}(w/a)
{}_2F_1\!\left(1-s,s+\kappa+\nu;\nu+1;\sin^2(w/a)\right),
$$

with

$$
E_sa=2s+\kappa+\nu-1.
$$

Near the boundary, the original field has

$$
\phi\sim\phi_-\,w'^{\Delta_-}+\phi_+\,w'^{\Delta_+},
\qquad
\Delta_\pm=\frac d2\pm\kappa.
$$

Both branches are normalizable for \(0\le\kappa<1\). The paper specializes to a massless conformally coupled scalar, for which

$$
\kappa=\frac12,
\qquad
\Delta_-=1,
\qquad
\Delta_+=2
$$

in AdS4. The mixed boundary condition is parameterized by

$$
A=-\frac a2\left.\frac{\partial_w\varphi}{\varphi}\right|_{w=\pi a/2}
=-\frac{\pi\Gamma(s+\nu+1/2)}
{\sin(\pi s)\Gamma(1/2-s)\Gamma(s)\Gamma(s+\nu)}.
$$

The endpoints are

$$
\begin{array}{lll}
A=0:&s=n+\tfrac12,&Ea=\ell+1+2n,\quad\text{Neumann/alternative},\\
A\to\infty:&s=n+1,&Ea=\ell+2+2n,\quad\text{Dirichlet/standard}.
\end{array}
$$

In the vault expansion

$$
\Phi=r^{-\Delta_-}\Psi+r^{-\Delta_+}J+\cdots,
$$

one identifies \(\Psi\leftrightarrow\phi_-\) and \(J\leftrightarrow\phi_+\), up to powers of \(a\). Finite \(A\) imposes \(J\propto A\Psi\). The paper does not derive the renormalized boundary action or fix the exact multi-trace normalization.

The endpoint expansion printed after the hypergeometric solution silently fixes its arbitrary normalization to

$$
C=-\frac{\Gamma(s+\nu)\sin(\pi\kappa)}
{\Gamma(\nu+1)\Gamma(s)}.
$$

This common factor cancels in \(A\), so the Robin condition is unaffected.

## The finite radial lattice

For \(d=3\) and \(\kappa=1/2\), the bulk Hamiltonian becomes

$$
H_{\ell m}=\frac12\int_0^{\pi a/2}dw
\left[
\pi_{\ell m}^2-\phi_{\ell m}\partial_w^2\phi_{\ell m}
+\frac{\ell(\ell+1)}{a^2\sin^2(w/a)}\phi_{\ell m}^2
\right],
$$

with endpoint terms left implicit. Use

$$
w_i=\epsilon i,
\qquad
\epsilon=\frac{\pi a}{2(N+1)},
$$

where \(i=1,\ldots,N\) are dynamical and \(i=0,N+1\) are auxiliary. Origin regularity is \(\phi_0=0\). Evaluating the mixed condition at the midpoint of the last link gives

$$
A=-\frac a\epsilon
\frac{\phi_{N+1}-\phi_N}{\phi_{N+1}+\phi_N},
$$

so

$$
\phi_{N+1}=Q\phi_N,
\qquad
Q=\frac{1-\pi A/[2(N+1)]}{1+\pi A/[2(N+1)]}.
$$

The exact finite-\(N\) stiffness matrix is

$$
K_{ij}=\frac1{a^2}\left[
\frac{4(N+1)^2}{\pi^2}
\left(2\delta_{ij}-\delta_{i+1,j}-\delta_{i,j+1}-Q\delta_{iN}\delta_{jN}\right)
+\frac{\ell(\ell+1)}{\sin^2[\pi i/(2(N+1))]}\delta_{ij}
\right].
$$

The order of limits matters:

$$
\lim_{A\to\infty}Q\big|_N=-1,
\qquad
\lim_{N\to\infty}Q\big|_A=1.
$$

Nevertheless,

$$
Q=1-\frac{\pi A}{N}+O(N^{-2})
$$

retains the finite Robin derivative because it is divided by \(\epsilon\sim N^{-1}\). The paper's exact finite-lattice Dirichlet prescription is \(Q=0\), equivalently \(A_N=2(N+1)/\pi\). Thus the continuum Robin family should be taken at fixed \(A\) followed by the endpoint limit, or along this explicit cofinal path; fixed-\(N\), \(A\to\infty\) is a different matrix.

## Gaussian entropy at fixed \(N\) and \(\ell\)

For positive \(K\), let \(\Omega=K^{1/2}\). The ground state is

$$
\Psi(\boldsymbol\phi)=
\left(\det\frac\Omega\pi\right)^{1/4}
\exp\left(-\frac12\boldsymbol\phi^T\Omega\boldsymbol\phi\right).
$$

If the retained subsystem is the bottom-right block \(C\), define

$$
\mathcal M=(\Omega^{-1})_C\Omega_C.
$$

For its eigenvalues \(\lambda_i\),

$$
S_\ell=
\sum_i\left[
\frac{\sqrt{\lambda_i}+1}{2}
\log\frac{\sqrt{\lambda_i}+1}{2}
-\frac{\sqrt{\lambda_i}-1}{2}
\log\frac{\sqrt{\lambda_i}-1}{2}
\right],
$$

and the AdS4 angular sum is

$$
S=\sum_{\ell=0}^\infty(2\ell+1)S_\ell.
$$

At this stage the claims are finite-matrix identities. The continuum theory requires both the angular-tail extrapolation and the radial continuum limit.

## Continuum fits and the finite boundary-sensitive difference

The source reports

$$
S^{(2)}=d_1\sin^2(w_R/a),
\qquad
d_1\simeq0.29543145,
$$

for the area term in the uniform-\(w\) regulator, and

$$
S_{\log}^{(0)}=-\frac1{90}
$$

independently of \(A\). The \(\sin^2(w_R/a)\) rather than \(\tan^2(w_R/a)\) dependence reflects the nonuniform areal-radius lattice.

To isolate the boundary-sensitive finite part, define

$$
\Delta S^{(0)}(A;R)
=S_A^{(0)}(R)-S_{A\to\infty}^{(0)}(R).
$$

The source finds numerically that the difference is dominated by \(\ell=0\), and for small \(R\),

$$
\Delta S^{(0)}(A;R)=c_A\frac{R^2}{a^2}+\cdots,
$$

with \(c_0=1/6\) and \(c_A\to0\) toward Dirichlet. Scheme independence of this difference is conditional: the same regulator must be used for all boundary conditions and the divergent coefficients must indeed be boundary-independent.

The source bundle contains neither the custom C++/Eigen code nor raw fit data. The quoted extrapolated values, error control, \(A\)-monotonicity, and \(\ell=0\) dominance are therefore source-derived numerical claims, not independently reproduced results.

## Analytic Dirichlet--Neumann endpoint benchmark

The appendix isolates the \(\ell=0\) conformal sector as a massless scalar on \(0<w<L\), Dirichlet at \(0\) and Neumann at \(L\). For a region \(0<w<R\ll L\), use

$$
u=\log\frac{R+w}{R-w},
\qquad
w=R\tanh\frac u2.
$$

The zeroth-order restricted kernel has eigenvalue

$$
\widetilde\lambda^{(0)}(\omega)=-\operatorname{csch}^2(\pi\omega).
$$

With \(u_{\max}=\log(2R/\epsilon)\), the first correction is

$$
\widetilde\lambda^{(1)}(\omega)
=-\frac{\pi\omega\cosh(\pi\omega)}
{6u_{\max}\sinh^3(\pi\omega)}
=-\frac{\omega}{12u_{\max}}
\frac{d}{d\omega}\widetilde\lambda^{(0)}(\omega).
$$

The entropy correction becomes

$$
S_{\rm EE}^{(1)}
=\frac1{12\pi^2}\int_0^\infty
\frac{\omega^2\,d\omega}{\sinh^2\omega}
=\frac1{72}.
$$

Since \(L/a=\pi/2\) and the appendix expansion parameter is \(4R^2/a^2\),

$$
S_{\rm DN}=\frac16\log\frac{2R}{\epsilon}
+\frac1{18}\frac{R^2}{a^2}+\cdots,
$$

while

$$
S_{\rm DD}=\frac16\log\frac{2R}{\epsilon}
-\frac19\frac{R^2}{a^2}+\cdots.
$$

Therefore

$$
\boxed{S_{\rm DN}-S_{\rm DD}
=\frac16\frac{R^2}{a^2}+O(R^4/a^4).}
$$

Two regulator qualifications are essential. First,

$$
\frac12\int_0^{u_{\max}}\sin^2(\omega u)\,du
=\frac{u_{\max}}4-\frac{\sin(2\omega u_{\max})}{8\omega},
$$

so the paper's \(u_{\max}/4\) is exact only after imposing \(\omega_k=k\pi/u_{\max}\), or asymptotically after discarding the bounded term. Second, \(\int_0^\infty\tanh u\,\sin(\omega u)\,du\) requires Abel regularization; it is not an ordinary convergent improper integral.

## Claim tier and project use

What is established at distinct levels:

1. **Continuum mode problem:** self-adjoint boundary conditions and endpoint spectra.
2. **Finite regulator:** explicit \(Q(A,N)\), \(K\), \(\Omega\), and Gaussian entropy.
3. **Analytic corner:** the small-\(R\), \(\ell=0\), Neumann--Dirichlet coefficient.
4. **Numerical continuum claim:** boundary-independent divergences and a boundary-sensitive finite term dominated by \(\ell=0\).

This does not establish equality of continuum Fock representations, regulator-independent absolute finite entropy, an interacting theory, gravitational generalized entropy, or a renormalized boundary CPS form.

For the vault's alternative-quantization work, the immediate reusable object is the finite-\(N\) Robin map \(Q(A,N)\) together with its noncommuting endpoint/continuum limits. For nonuniform gluing, the compact-coordinate lattice is a concrete case where regulator density changes the geometric area coefficient. A next controlled calculation is to derive the missing continuum boundary action and flux normalization, then compare the finite-\(N\) \(Q\) prescription to that variational problem.

## Verification log

### Checked

- Mathematica reproduced the compact global metric, full radial/conformal reduction including the total derivative, conformal-mass relation, hypergeometric mode equation, energy, endpoint Robin ratio, and spectral endpoints.
- Mathematica and Sage independently reproduced \(Q(A,N)\), its noncommuting limits, and representative finite-\(N\) stiffness/covariance tests. All sampled \(K\) matrices were positive; complementary Gaussian entropies agreed within \(6\times10^{-15}\).
- At \(N=300,\ell=5\), the fourth spectral values for \(A=5,50\) reproduced the paper's quoted \(3.74,3.97\) values; the corresponding continuum roots were also located.
- Mathematica verified that \(\mathcal D_R=45(R^2\partial_R^2-R\partial_R)\) maps \(-\frac1{90}\log R\) to \(1\) and annihilates \(R^2\).
- The appendix kernel composition and small-\(R/L\) expansion were checked on their stated branches. Abel-regularized kernel action reproduced \(\widetilde\lambda^{(0)}\) numerically to \(1.3\times10^{-19}\).
- Mathematica reproduced the hyperbolic transforms with the stated regulator, the derivative form of \(\widetilde\lambda^{(1)}\), the integral \(1/72\), the DN and DD coefficients, and their difference \(1/6\).

### Failed

- The source line \(\Delta_{d-1}Y_{\ell\vec m}=\ell(\ell+1)Y_{\ell\vec m}\) is incorrect as written. It should be
  \[
  \Delta_{d-1}Y_{\ell\vec m}=-\ell(\ell+d-2)Y_{\ell\vec m}.
  \]
  The downstream reduced potential uses the corrected value.
- The endpoint coefficients omit the common normalization displayed above; the Robin ratio remains correct.
- The appendix's finite-\(u_{\max}\) normalization and \(\tanh\)-transform equalities require, respectively, the discrete grid/asymptotic limit and Abel regularization.

### Blocked

- No numerical code, raw data, fit windows, truncation orders, or stability diagnostics are supplied. Consequently \(d_1\), the full continuum \(-1/90\) extraction, finite-\(A\) curves, endpoint convergence, and \(\ell=0\) dominance were not independently reproduced.
- The exact normalization relating \(A\) to a renormalized double-trace coupling is absent because the continuum boundary action and source-response variational one-form are not derived.
