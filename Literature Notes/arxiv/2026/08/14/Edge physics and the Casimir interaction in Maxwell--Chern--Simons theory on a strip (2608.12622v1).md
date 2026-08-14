---
paper id: 2608.12622v1
title: Edge physics and the Casimir interaction in Maxwell--Chern--Simons theory on a strip
authors:
  - Nicola Maggiore
publication date: 2026-08-12T22:09
abstract: |-
  Maxwell--Chern--Simons theory on a strip is equipped with the most general translation-invariant quadratic tangential boundary functional containing at most one tangential derivative. Compatibility with the single physical bulk helicity removes the derivative response and leaves a two-parameter boundary family. Its residual gauge sector carries opposite boundary current-algebra levels, while its massive bulk helicity gives a one-channel scattering determinant and a finite, Yukawa-screened Casimir interaction.
comments: "41 pages, 2 figures"
url: https://arxiv.org/abs/2608.12622v1
summary: "A monograph-scale boundary-field-theory benchmark that separates variational boundary data, edge current algebra, physical polarization reduction, and the finite inter-edge determinant."
tags: []
---

Back to [[2026_08_14_overview]].

The main reusable result is a four-layer separation:

1. a local Symanzik boundary action determines variational boundary equations;
2. a differentiable Gauss generator determines the edge charge and its central term;
3. compatibility with the one-helicity MCS bulk phase space restricts the boundary couplings;
4. only the massive physical helicity carries the round-trip factor that produces the finite-width Casimir interaction.

This separation is directly useful for the vault's gluing and boundary-CPS work. The pullback \(A_i\), the conserved boundary current, and the physical reflected mode are related objects but are not interchangeable. In particular, the two edge Kac--Moody sectors do not produce two propagating determinants.

# How to read this long paper

- **Essential:** Sections 2--7 and Appendix B. These contain the conventions, boundary action, charge generator, compatible family, physical factorization, reflection amplitudes, pole-free domain, and determinant.
- **Technical reference:** Appendix A for boundary signs and the edge Dirac bracket; Appendix B for the compatibility determinant, exceptional polarization chart, and asymptotic integrals.
- **Optional on first pass:** Section 8.1's numerical examples and the literature discussion in Sections 1 and 9. Their main conceptual use is to illustrate the analytic parameter domain already derived earlier.
- **Do not combine prematurely:** the positivity condition for the edge Hamiltonian, Euclidean contractivity, and absence of physical surface poles are three distinct restrictions.

# Complete source map

1. **Introduction:** distinguishes boundary source, conserved current, residual edge gauge sector, and physical bulk polarization; motivates a reduced one-channel determinant.
2. **Geometry, conventions and bulk actions:** fixes signature, orientation factors, topological mass, gauge fixing, sources, and Euclidean decay momentum.
3. **Local boundary action and derived boundary conditions:** classifies the tangential quadratic functional and separates the normal-field-strength variational branch.
   - **3.1 Boundary branches:** identifies edge-active, tuned Dirichlet, and generically overconstrained branches.
4. **Broken Ward identity and boundary current algebra:** derives the improved MCS current, differentiable Gauss generator, and opposite boundary levels.
5. **Edge scalar fields and chiral dynamics:** represents the conserved currents by chiral scalars.
   - **5.1 Compatibility family and current velocity:** parametrizes the determinant surface by impedance and edge velocity.
   - **5.2 Flip symmetry:** specifies the orientation-preserving flip and counter-propagating velocities.
6. **MCS theory on a strip: spectral setup:** reduces the bulk theory to one helicity and derives the physical reflection problem.
   - **6.1 Physical reduction:** introduces the dual field \(f^\mu\) and the local split \(A=A^{\rm phys}+d\lambda\).
   - **6.2 Compatibility:** eliminates the one-derivative boundary coefficients and factorizes the boundary operator into physical and gauge pieces.
   - **6.3 Reflection amplitudes:** obtains the general compatible amplitude and scalar oblique boundary condition.
   - **6.4 Flip-symmetric reflectivity and poles:** separates Euclidean contractivity from the real-frequency surface spectrum.
7. **Finite Casimir energy:** defines the interaction by the infinite-separation subtraction and obtains the log determinant.
   - **7.1 Mode count:** explains why the edge partition functions cancel from the (h)-dependent interaction.
   - **7.2 Scattering representation:** gives energy and force, including the analyticity conditions.
   - **7.2.1 Scalar comparison:** clarifies why the generic boundary is not ordinary momentum-independent Robin data.
   - **7.2.2 Numerical variables:** records the dimensionless integrals and the energy--force scaling check.
   - **7.3 Zeta-function viewpoint:** derives the same determinant by a contour argument and states the surface-pole residue qualification.
8. **Asymptotic regimes:** treats examples, pure CS, Maxwell, short-distance, and large-distance limits.
9. **Discussion and outlook:** summarizes the independence of variational, algebraic, spectral, and positivity data.
10. **Appendix A:** rederives the boundary variation, current normalization, Gauss-generator boundary term, and chiral-scalar Dirac bracket.
11. **Appendix B:** derives the compatibility determinant, one-channel secular equation, pole branch, exceptional polarization chart, Maxwell normalization, and asymptotic integrals.

# Geometry and conventions

The bulk is

$$
\mathcal M=\mathbb R^{1,1}\times[0,h],
\qquad
\partial\mathcal M=\Sigma_0\cup\Sigma_h,
$$

with \(x^\mu=(x^0,x^1,x^2)\), metric \(\eta_{\mu\nu}=\operatorname{diag}(-,+,+)\), and \(\epsilon^{012}=+1\). Boundary indices are \(i,j=0,1\), with \(\epsilon^{2ij}=\epsilon^{ij}\) and \(\epsilon^{01}=+1\). The outward normals are encoded by

$$
\sigma_0=-1,
\qquad
\sigma_h=+1,
\qquad
n_\mu\big|_{\Sigma_\alpha}=\sigma_\alpha\delta_\mu^{\ 2}.
$$

The sign \(\sigma_\alpha\) must remain geometric. Absorbing it into boundary couplings would erase the relative sign of the two current algebras.

The action is

$$
S_{\rm bulk}
=\int_{\mathcal M}d^3x\left[
-\frac1{4g^2}F_{\mu\nu}F^{\mu\nu}
+\frac\kappa2\epsilon^{\mu\nu\rho}A_\mu\partial_\nu A_\rho
\right],
\qquad
F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu,
$$

and the topological mass is

$$
m=\kappa g^2>0.
$$

The bulk equation,

$$
\frac1{g^2}\partial_\mu F^{\mu\nu}
+\kappa\epsilon^{\nu\mu\rho}\partial_\mu A_\rho=0,
$$

has one physical massive helicity. Covariant gauge fixing is permitted, but the paper's determinant is calculated on the reduced gauge-invariant phase space rather than by a gauge-fixed vector/ghost determinant.

# Local boundary functional and variational branches

Write

$$
\mathbf A=\binom{A_0}{A_1},
\qquad
\mathbf F=\binom{F^{20}}{F^{21}},
\qquad
E=\begin{pmatrix}0&1\\-1&0\end{pmatrix}.
$$

At quadratic order and with at most one tangential derivative, the complete constant-coefficient tangential density is

$$
\mathcal L_\alpha^{\rm tan}
=\frac12\mathbf A^{\rm T}B_{(\alpha)}\mathbf A
+\frac{d_0^{(\alpha)}}2\mathbf A^{\rm T}E\partial_0\mathbf A
+\frac{d_1^{(\alpha)}}2\mathbf A^{\rm T}E\partial_1\mathbf A,
$$

where

$$
B_{(\alpha)}=
\begin{pmatrix}
b_{00}^{(\alpha)}&b_{01}^{(\alpha)}\\
b_{01}^{(\alpha)}&b_{11}^{(\alpha)}
\end{pmatrix}.
$$

No boundary Lorentz invariance is assumed. That is essential: the full symmetric matrix leaves room for a continuous edge velocity, while the restricted Lorentz-invariant ansatz would reduce the compatible family to isolated values.

The normal-field-strength term

$$
\mathcal L_\alpha^\perp=a_4^{(\alpha)}A_iF_2{}^i
$$

belongs to a different variational class because its variation contains \(\delta F_{2i}\). The branches are:

- \(a_4=0\): edge-active tangential branch;
- \(a_4=\sigma_\alpha/g^2\): tuned Dirichlet branch \(A_i=0\);
- generic nonzero \(a_4\): both \(A_i=0\) and \(F^{2i}=0\), generically overconstraining the physical normal problem.

The paper uses \(a_4^{(0)}=a_4^{(h)}=0\). Its variational equations are

$$
-\frac{\sigma_\alpha}{g^2}\mathbf F
+\left[B_{(\alpha)}+\varrho_\alpha(\partial)E\right]\mathbf A=0,
\qquad
\varrho_\alpha(\partial)
=\sigma_\alpha\frac\kappa2+d_0^{(\alpha)}\partial_0+d_1^{(\alpha)}\partial_1.
$$

At this stage the equations are locally variationally admissible. Closure on the reduced helicity, spectral analyticity, and energy positivity have not yet been established.

# Ward identity, improved current, and charge algebra

The normal bulk equation is the conservation law

$$
\partial_i\left(\frac1{g^2}F^{2i}-\kappa\epsilon^{ij}A_j\right)=0.
$$

Using the intrinsic orientation of each component, the physical boundary current is

$$
j^i_{(\alpha)}
=\sigma_\alpha\left(
\frac1{g^2}F^{2i}-\kappa\epsilon^{ij}A_j
\right)_{\Sigma_\alpha},
\qquad
\partial_i j^i_{(\alpha)}=0.
$$

This is not the source-generated pullback \(A_i\). The Maxwell normal flux improves the current, while the central extension is fixed by the Chern--Simons symplectic term.

On a constant-\(x^0\) slice,

$$
\pi^a=\frac1{g^2}F_{0a}+\frac\kappa2\epsilon^{ab}A_b,
\qquad
\mathcal G=\partial_a\pi^a+\frac\kappa2\epsilon^{ab}\partial_aA_b\approx0.
$$

For gauge parameters that need not vanish at the boundary, differentiability requires

$$
G[\lambda]
=-\int_{\Sigma_t}d^2x\,\lambda\mathcal G
+\sum_\alpha Q_\alpha[\lambda],
\qquad
Q_\alpha[\lambda]
=\int_{\Sigma_\alpha\cap\Sigma_t}dx^1\,\lambda\rho_\alpha,
$$

with

$$
\rho_\alpha
=\sigma_\alpha\left(\pi^2-\frac\kappa2A_1\right)
=j^0_{(\alpha)}.
$$

The boundary algebra is

$$
\{Q_\alpha[\lambda],Q_\beta[\eta]\}
=-\delta_{\alpha\beta}\sigma_\alpha\kappa
\int dx^1\,\lambda\partial_1\eta,
$$

or locally after quantization,

$$
[\rho_\alpha(x),\rho_\beta(y)]
=-i\delta_{\alpha\beta}\sigma_\alpha\kappa\partial_x\delta(x-y).
$$

Thus

$$
k_\alpha=-\sigma_\alpha\kappa,
\qquad
k_0=-k_h.
$$

No boundary equation is required to determine this central term. Boundary equations are needed only to express \(\rho_\alpha\) in terms of \(A_0,A_1\).

# Compatible family and chiral edge variables

Evaluating the two tangential equations on an incoming and reflected physical polarization produces a compatibility determinant. Requiring both equations to give the same reflection amplitude for all tangential momenta yields

$$
d_0^{(\alpha)}=d_1^{(\alpha)}=0,
\qquad
\det B_{(\alpha)}=-\frac{\kappa^2}{4}.
$$

On the chart \(b_{00}\neq0\), write

$$
B_{(\alpha)}=\kappa
\begin{pmatrix}
\gamma_\alpha&\gamma_\alpha v_\alpha-\sigma_\alpha/2\\
\gamma_\alpha v_\alpha-\sigma_\alpha/2&
\gamma_\alpha v_\alpha^2-\sigma_\alpha v_\alpha
\end{pmatrix}.
$$

Then

$$
j^1_{(\alpha)}=v_\alpha j^0_{(\alpha)}.
$$

Locally \(j^i=\epsilon^{ij}\partial_j\phi_\alpha\), so the current obeys

$$
(\partial_0+v_\alpha\partial_1)\phi_\alpha=0.
$$

A chiral-scalar representative is

$$
S_{\rm edge}^{(\alpha)}
=\frac1{2k_\alpha}\int d^2x\,
\partial_1\phi_\alpha
(\partial_0\phi_\alpha+v_\alpha\partial_1\phi_\alpha),
\qquad
k_\alpha=-\sigma_\alpha\kappa.
$$

Its Hamiltonian is

$$
H_\alpha=-\frac{v_\alpha}{2k_\alpha}
\int dx^1\,\rho_\alpha^2.
$$

For \(\kappa>0\), edge-energy positivity requires \(\sigma_\alpha v_\alpha>0\). This is not implied by the determinant constraint.

The orientation-preserving flip is

$$
(x^0,x^1,x^2)\mapsto(x^0,-x^1,h-x^2),
$$

with \(A_0\mapsto A_0\), \(A_1\mapsto-A_1\), and \(A_2\mapsto-A_2\). It gives

$$
\gamma_h=\gamma_0\equiv\gamma,
\qquad
v_h=-v_0.
$$

Writing \(v_0=v\), positivity gives \(v<0\) and \(v_h>0\): the two edges counter-propagate.

# Exact physical/gauge factorization

Define the dual field strength

$$
f^\mu=\frac12\epsilon^{\mu\nu\rho}F_{\nu\rho}.
$$

The bulk equation becomes

$$
\epsilon^{\mu\nu\rho}\partial_\nu f_\rho+mf^\mu=0,
\qquad
\partial_\mu f^\mu=0,
\qquad
(\Box-m^2)f^\mu=0.
$$

Locally on the simply connected strip,

$$
A_\mu=A_\mu^{\rm phys}+\partial_\mu\lambda,
\qquad
A_\mu^{\rm phys}=-\frac1m f_\mu.
$$

Let

$$
J_{(\alpha)}=B_{(\alpha)}-\sigma_\alpha\frac\kappa2E,
\qquad
G_{(\alpha)}=B_{(\alpha)}+\sigma_\alpha\frac\kappa2E,
$$

and

$$
u_\alpha=\binom1{v_\alpha},
\qquad
w_\alpha=\binom{\gamma_\alpha}{\gamma_\alpha v_\alpha-\sigma_\alpha}.
$$

On the compatible family,

$$
J_{(\alpha)}=\kappa u_\alpha w_\alpha^{\rm T},
\qquad
G_{(\alpha)}=\kappa w_\alpha u_\alpha^{\rm T}.
$$

Because \(u_\alpha,w_\alpha\) are independent, the full boundary equation is equivalent to

$$
w_\alpha^{\rm T}\mathbf A^{\rm phys}=0,
\qquad
(\partial_0+v_\alpha\partial_1)\lambda=0.
$$

This is the decisive structural result. There is one physical normal boundary condition and one residual-gauge edge equation. The edge mode is physical as a boundary transformation but is not a second massive bulk polarization.

# Reflection amplitude and spectral domain

After Wick rotation \(\omega=i\zeta\), define

$$
Q=\sqrt{\zeta^2+k^2+m^2}.
$$

The physical reflection amplitude at \(\Sigma_\alpha\) is

$$
r_\alpha(\zeta,k)
=\frac{QX_\alpha+mY_\alpha}{QX_\alpha-mY_\alpha},
$$

where

$$
X_\alpha
=\sigma_\alpha\gamma_\alpha\zeta
+ik(\sigma_\alpha\gamma_\alpha v_\alpha-1),
\qquad
Y_\alpha
=(\gamma_\alpha v_\alpha-\sigma_\alpha)\zeta+i\gamma_\alpha k.
$$

Equivalently, \(\psi=f^2\) obeys a massive scalar normal equation with an oblique, tangential-momentum-dependent boundary operator. It is only a one-channel scalar reduction; generic compatible data are not ordinary constant Robin conditions.

For flip-symmetric data, \(r_h=r_0^*\). With

$$
c=1+\gamma v,
$$

the round-trip reflectivity is

$$
\mathcal R(\zeta,k)=
\frac{k^2(Qc-m\gamma)^2+\zeta^2(Q\gamma-mc)^2}
{k^2(Qc+m\gamma)^2+\zeta^2(Q\gamma+mc)^2}.
$$

The denominator minus numerator is

$$
4Qm\gamma c(\zeta^2+k^2).
$$

Thus \(\gamma>0,c>0\) gives Euclidean contractivity away from zero momentum. This still does not exclude a surface pole. The paper finds a physical single-boundary branch when \(\gamma>c>0\):

$$
\omega_s(k)=\frac{ck+m\sqrt{\gamma^2-c^2}}\gamma,
\qquad
\lambda_s(k)=\frac{k\sqrt{\gamma^2-c^2}-cm}\gamma.
$$

The pole-free, positive-impedance, edge-positive flip domain is

$$
v<0,
\qquad
0<\gamma\le c=1+\gamma v.
$$

The closure \(\gamma=0\) is perfectly reflecting and pole free. Outside this domain, the continuum log determinant may require a discrete surface-mode contribution.

# Finite interaction and asymptotic limits

The interaction is defined by

$$
E_{\rm int}(h)=E_{\rm vac}(h)-E_{\rm vac}(\infty).
$$

Local bulk and single-boundary counterterms cancel in this difference. In the analytic pole-free domain,

$$
E_{\rm int}(h)
=\frac12\int\frac{d\zeta\,dk}{(2\pi)^2}
\log\left[1-r_0r_he^{-2Qh}\right].
$$

For flip-symmetric data,

$$
E_{\rm int}(h)
=\frac12\int\frac{d\zeta\,dk}{(2\pi)^2}
\log\left[1-\mathcal R e^{-2Qh}\right],
$$

and

$$
F(h)
=-\int\frac{d\zeta\,dk}{(2\pi)^2}
Q\frac{\mathcal R e^{-2Qh}}{1-\mathcal R e^{-2Qh}}<0.
$$

The attraction statement is conditional on flip symmetry and the pole-free domain.

Along the compatible MCS family, the Maxwell limit has \(B_{(\alpha)}\to0\) and \(\mathcal R\to1\). The dual scalar has Dirichlet data for nonzero tangential modes, so

$$
E_{\rm int}^{\rm Max}(h)=-\frac{\zeta(3)}{16\pi h^2},
\qquad
F^{\rm Max}(h)=-\frac{\zeta(3)}{8\pi h^3}.
$$

This coefficient counts one physical \(2+1\)-dimensional Maxwell channel. In the pure-CS limit \(m\to\infty\), the local edge algebra survives but the finite-width interaction vanishes.

At large separation, generic pole-free data have

$$
E_{\rm int}(h)
\sim-\mathcal R_*e^{-2mh}
\left(\frac{m}{8\pi h}+\frac1{16\pi h^2}\right),
\qquad
\mathcal R_*=\left(\frac{c-\gamma}{c+\gamma}\right)^2.
$$

On the threshold-transparent line \(c=\gamma\), \(\mathcal R_*=0\) and the leading term instead begins at \(e^{-2mh}/h^3\).

# Translation to the vault's boundary/gluing language

- The Symanzik density is local data on each connected boundary. The finite inter-edge interaction is induced only after solving the bulk propagation problem; no bilocal boundary coupling is inserted.
- The compatible determinant surface is an explicit example of parameter closure: locality permits \(B,d_0,d_1\), but closure on the reduced physical phase space forces \(d_0=d_1=0\) and \(\det B=-\kappa^2/4\).
- The conserved edge current is a normal-flux improvement of the pullback source variable. This is the same distinction needed in CPS between a boundary field, a moment map/charge density, and the physical propagating data.
- The local edge symplectic sector can survive when the propagation-mediated interaction vanishes. Hence a nontrivial boundary algebra does not by itself imply a second finite-width determinant.
- Variational admissibility, positivity of the edge Hamiltonian, self-adjoint/analytic spectral behavior, absence of surface poles, and attraction are separate claims.
- The result is a Gaussian-theory benchmark for the user's quadratic interface/gluing program: it reaches exact finite-cutoff boundary equations and the one-loop interaction determinant, but it does not establish an interacting continuum-QFT gluing equivalence.

# Verification log

## Source-derived

- The complete section tree, boundary branches, canonical generator, current algebra, physical polarization reduction, reflection amplitudes, surface-mode domain, determinant, and asymptotic formulas were reconstructed from the v1 TeX source and the 41-page PDF.
- Rendered PDF pages 1, 8, 24, and 36 were visually inspected. The title/abstract, variational equations (3.5)--(3.12), the start of Section 8, and Appendix-B formulas (B.17)--(B.23) agree with the extracted source and have no missing glyphs or clipped equations.

## Checked

- Mathematica exactly reproduced \(\det B=-\kappa^2/4\) for the \((\gamma,v,\sigma)\) parametrization and both rank-one factorizations \(J=\kappa uw^{\rm T}\), \(G=\kappa wu^{\rm T}\), assuming \(\sigma^2=1\).
- Starting from the paper's physical polarization and boundary expressions, Mathematica reduced the compatibility determinant on \(\omega^2=k^2+p^2+m^2\) to

  $$
  \frac{2imp}{m^2+p^2}
  \left[\det B+(\varrho-\sigma\kappa)^2\right],
  $$

  reproducing Appendix B's central factorization.
- Mathematica reproduced the reflectivity identity

  $$
  D-N=4Qm\gamma c(\zeta^2+k^2).
  $$
- The proposed surface branch satisfies both the unsquared boundary equation and the mass shell exactly for \(\gamma>c>0\).
- Mathematica evaluated

  $$
  \int_0^\infty p\,e^{-2h\sqrt{p^2+m^2}}dp
  =e^{-2hm}\left(\frac{m}{2h}+\frac1{4h^2}\right),
  $$

  and reproduced the vanishing angular average used in the generic large-distance expansion.
- Expanding the Maxwell log and performing the radial integral gives the one-channel coefficient \(-\zeta(3)/(16\pi h^2)\); differentiating gives \(-\zeta(3)/(8\pi h^3)\).

## Blocked

- The paper provides plots but no numerical driver or tabulated quadrature data. The quoted \(10^{-14}\) quadrature agreement and \(5\times10^{-10}\) energy--force derivative agreement were not independently reproduced from the author's implementation.
- The general non-flip analytic-contour problem and the finite-strip hybridization of the surface branches are explicitly left open by the source; the continuum determinant cannot be promoted beyond the stated pole-free domain.

## Not independently verified

- Completeness of the functional measure after reduced-phase-space factorization, beyond the stationary quadratic analysis given in the paper.
- The renormalization statement that every removed divergence is exhausted by local bulk and isolated-boundary counterterms in all allowed non-flip branches.
- Reflection positivity as an independent theorem for this exact oblique boundary family; attraction was checked only through the paper's nonnegative round-trip integrand in the restricted domain.

# Achieved claim tier

The note establishes and independently checks a finite-cutoff Gaussian boundary-value problem, its reduced one-channel determinant, and several algebraic/asymptotic identities. It does not establish equivalence of full field algebras, correlators, Hilbert/Fock representations, or interacting continuum theories across a gluing interface.
