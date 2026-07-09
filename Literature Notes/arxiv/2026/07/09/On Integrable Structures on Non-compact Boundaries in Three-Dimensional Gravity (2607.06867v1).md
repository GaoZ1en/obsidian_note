---
paper id: 2607.06867v1
title: On Integrable Structures on Non-compact Boundaries in Three-Dimensional Gravity
authors:
  - Hamed Adami
  - Kristiansen Lara
  - Anouchah Latifi
  - Rene Meyer
publication date: 2026-07-07T23:47:48
abstract: |-
  The paper studies three-dimensional Einstein gravity with negative cosmological constant on non-compact spatial boundaries in the Chern-Simons formulation. It derives an exact fluid/gravity dictionary for the quasi-local Brown-York stress tensor, obtains a closed finite-cutoff radial flow equation realizing a holographic $T\bar T$-type deformation, develops the inverse-scattering and Lax description of the boundary dynamics, and shows that the radial flow is not Hamiltonian with respect to the canonical boundary Poisson structure.
comments: "26 pages"
url: https://arxiv.org/abs/2607.06867v1
summary: "A high-priority 3D-gravity boundary paper because it connects Chern-Simons surface charges, finite-cutoff Brown-York data, symplectic flux, affine current algebras, and integrable hierarchies on non-compact boundaries."
tags: []
---

Back to [[2026_07_09_overview]].

# Chern-Simons gravity and the reduced boundary phase space

The source begins with AdS$_3$ Einstein gravity in Chern-Simons form:

$$\begin{align}
I_{\rm EH}=I_{\rm CS}[A^+]-I_{\rm CS}[A^-],\qquad
A^\pm=\omega\pm\frac1\ell e.
\end{align}$$

The Chern-Simons level is $k=\ell/(4G)$. In radial gauge,

$$\begin{align}
A^\pm=b_\pm^{-1}(r)\left(d+a^\pm(t,x)\right)b_\pm(r),
\end{align}$$

so the radial dependence is pure gauge and the boundary fields in $a^\pm$ carry the phase-space data.

The paper then restricts to a diagonal sector with chiral boundary currents ${\cal J}_\pm$ and chemical potentials $\mu_\pm$. In the source normalization the reduced connection contains $-(2\pi/k){\cal J}_\pm dx$, so the flatness equations reduce to continuity equations of the form

$$\begin{align}
\partial_t{\cal J}_\pm=\pm\frac{k}{\pi}\partial_x\mu_\pm
\end{align}$$

This is already a charge-density statement: ${\cal J}_\pm$ are chiral boundary charge densities, and $\mu_\pm$ are sources/chemical potentials.

The source structure is:

- Sections 2-3: Chern-Simons gravity, radial gauge, metric reconstruction, and boundary ADM variables.
- Section 4: symplectic potential, surface charges, charge balance, and current algebra.
- Section 5: Killing symmetries and zero-mode charges.
- Sections 6-7: Brown-York fluid/gravity dictionary and exact finite-cutoff $T\bar T$-type radial flow.
- Sections 8-10: vanishing symplectic flux, Hamiltonian formulation, bi-Hamiltonian hierarchy, and Lifshitz scaling.
- Sections 11-12: Lax pair, inverse scattering, spectral data, soliton sector, and finite-cutoff deformation.
- Discussion and outlook: spectral data as gravitational observables, non-compact boundaries, no-go theorem for radial Hamiltonian flow, and future extensions. The TeX source contains appendix-like draft material in commented regions; I do not treat that material as part of the official compiled source.

# Surface charges and affine current algebra

The reduced symplectic potential and two-form are

$$\begin{align}
\boldsymbol{\Theta}
&=-\int_{\cal B}
\left(\mu_+\delta{\cal J}_+ +\mu_-\delta{\cal J}_-\right)\,dt\,dx\\
&\quad
+\frac12\delta\int_{\cal B}
\left(\mu_+{\cal J}_+ +\mu_-{\cal J}_-+2L^r_{\rm bdy}\right)\,dt\,dx,\\
\boldsymbol{\Omega}
&=-\int_{\cal B}
\left(\delta\mu_+\curlywedge\delta{\cal J}_+
+\delta\mu_-\curlywedge\delta{\cal J}_-\right)\,dt\,dx .
\end{align}$$

The exact variation in $\boldsymbol{\Theta}$ drops out of $\boldsymbol{\Omega}$, leaving two chiral canonical sectors.

For an improper gauge parameter $\epsilon$, the Chern-Simons surface-charge variation is

$$\begin{align}
\delta Q_{\rm CS}(\epsilon)=\frac{k}{2\pi}\int_\Sigma\langle\epsilon\,\delta a\rangle.
\end{align}$$

The charge balance law is

$$\begin{align}
\delta Q_{\rm CS}(\epsilon)\big|_{t\to+\infty}
=
\delta Q_{\rm CS}(\epsilon)\big|_{t\to-\infty}
+\boldsymbol{\Omega}_{\rm CS}[\delta A,\delta_\epsilon A].
\end{align}$$

In the reduced phase space this becomes

$$\begin{align}
\delta Q(\epsilon)=\int_\Sigma dx\,
\left(\epsilon_+\delta{\cal J}_+ +\epsilon_-\delta{\cal J}_-\right),
\end{align}$$

and, for field-independent parameters,

$$\begin{align}
Q(\epsilon)=\int_\Sigma dx\,
\left(\epsilon_+{\cal J}_+ +\epsilon_-{\cal J}_-\right).
\end{align}$$

The equal-time current algebra is

$$\begin{align}
\{{\cal J}_\pm(t,x),{\cal J}_\pm(t,y)\}
&=\pm\frac{k}{\pi}\partial_x\delta(x-y),\\
\{{\cal J}_+(t,x),{\cal J}_-(t,y)\}&=0.
\end{align}$$

Equivalently, for functionals $F,G$,

$$\begin{align}
\{F,G\}=\frac{k}{\pi}\int_\Sigma dx
\left[
\frac{\delta F}{\delta{\cal J}_+}\partial_x\frac{\delta G}{\delta{\cal J}_+}
-
\frac{\delta F}{\delta{\cal J}_-}\partial_x\frac{\delta G}{\delta{\cal J}_-}
\right].
\end{align}$$

# Brown-York fluid variables and finite-cutoff radial flow

The exact fluid/gravity dictionary gives

$$\begin{align}
\rho
=\frac{\pi}{2k}
\left[
\frac{r^4+\ell^4}{r^4-\ell^4}
\left({\cal J}_+^2+{\cal J}_-^2\right)
+\frac{4\ell^2 r^2}{r^4-\ell^4}{\cal J}_+{\cal J}_-
\right],
\end{align}$$

and

$$\begin{align}
J=-\frac{\pi}{2k}\left({\cal J}_+^2-{\cal J}_-^2\right).
\end{align}$$

The equation of state is stiff,

$$\begin{align}
p=\rho,
\end{align}$$

so the effective Brown-York stress tensor is traceless in the chosen frame.

Eliminating ${\cal J}_\pm$ gives the closed radial flow

$$\begin{align}
\partial_r\rho
=-\frac{4\ell^2 r}{r^4-\ell^4}\sqrt{\rho^2-J^2},
\qquad \partial_r J=0.
\end{align}$$

The determinant interpretation is

$$\begin{align}
\det T_{\rm frame}=\rho^2-J^2.
\end{align}$$

With $\varepsilon=\ell^2/r^2$ this becomes

$$\begin{align}
\partial_\varepsilon T_{uu}
=\frac{2}{1-\varepsilon^4}\sqrt{\det T_{\rm frame}}.
\end{align}$$

The paper is careful that this is an exact local radial-flow statement for quasi-local observables, not by itself a full proof of equality with finite-volume $T\bar T$ spectral flow.

# Symplectic flux, Hamiltonian boundary conditions, and integrability

The consistency condition for a closed Hamiltonian boundary system is vanishing symplectic flux,

$$\begin{align}
\boldsymbol{\Omega}=0.
\end{align}$$

This implies that the chemical potentials are locally Euler-Lagrange derivatives of a boundary Hamiltonian,

$$\begin{align}
\mu_\pm=\frac{\delta H}{\delta{\cal J}_\pm}.
\end{align}$$

Then the reduced boundary Lagrangian density may be written as

$$\begin{align}
L^r_{\rm bdy}= {\cal H}-N\rho+N^xJ,
\end{align}$$

and the equations of motion are Hamiltonian flows:

$$\begin{align}
\partial_t{\cal J}_\pm=\{{\cal J}_\pm,H\}.
\end{align}$$

The integrable hierarchy appears when $\mu_\pm$ are chosen as Gel'fand-Dikii-type functionals of ${\cal J}_\pm$. The resulting boundary dynamics has a bi-Hamiltonian structure and a Lax-pair/inverse-scattering formulation. The non-compact boundary is important because the inverse-scattering data become meaningful gravitational observables: reflection coefficients, bound-state data, and soliton parameters encode boundary graviton configurations.

The paper's no-go result is conceptually important: although the boundary time evolution is Hamiltonian, the radial flow at finite cutoff is not generated by a local Hamiltonian functional with respect to the same canonical Poisson structure. Thus finite-cutoff solvability and canonical Hamiltonian flow are separated.

# Bi-Hamiltonian hierarchy and conserved boundary Hamiltonians

The integrable part of the paper is built in each chiral sector from two compatible Poisson operators. In a normalization adapted to one sector, they are

$$\begin{align}
P=\partial_x,\qquad
D=\partial_x{\cal J}+2{\cal J}\partial_x-\frac{c}{24\pi}\partial_x^3.
\end{align}$$

The Gel'fand-Dikii densities $R_I[{\cal J}]$ are generated by the Lenard recursion

$$\begin{align}
D R_I=P R_{I+1}.
\end{align}$$

The first representatives have the KdV form

$$\begin{align}
R_0&=1,\\
R_1&={\cal J},\\
R_2&=\frac32{\cal J}^2-\frac{c}{24\pi}{\cal J}'',\\
R_3&=\frac52{\cal J}^3-\frac{5c}{16\pi}{\cal J}{\cal J}''
-\frac{5c}{32\pi}({\cal J}')^2
+\frac{c^2}{384\pi^2}{\cal J}^{(4)} .
\end{align}$$

The hierarchy Hamiltonians are

$$\begin{align}
H_I=\int dx\,{\cal H}_I,\qquad
\frac{\delta H_I}{\delta{\cal J}}=R_I.
\end{align}$$

Choosing

$$\begin{align}
\mu_\pm=R^\pm_I[{\cal J}_\pm]
\end{align}$$

turns the Chern-Simons flatness equation into the $I$th flow of the hierarchy. The commuting-property statement is

$$\begin{align}
\{H_I,H_J\}_P=0,\qquad \{H_I,H_J\}_D=0,
\end{align}$$

with the two brackets generated by $P$ and $D$. The important technical separation is that $P$ is the affine current bracket inherited directly from the Chern-Simons symplectic form, while $D$ is the second Hamiltonian structure of the boundary integrable system. The latter is not an additional bulk symplectic form; it is an integrability structure on the allowed boundary Hamiltonians.

# Lax problem and inverse-scattering data as gravitational observables

The Lax formulation uses the Schrödinger operator

$$\begin{align}
S_\pm=-\partial_x^2+\frac{2}{\nu_\pm}{\cal J}_\pm,
\qquad
S_\pm\psi_\pm=\lambda_\pm^2\psi_\pm .
\end{align}$$

In Riccati form, with $\Gamma_\pm=\partial_x\log\psi_\pm$,

$$\begin{align}
\partial_x\Gamma_\pm+\Gamma_\pm^2
-\frac{2}{\nu_\pm}{\cal J}_\pm
+\lambda_\pm^2=0.
\end{align}$$

The inverse-scattering data are therefore attached to the boundary current itself. On a non-compact boundary the reflection coefficient, bound-state poles, norming constants, and soliton parameters are not merely a solution-generating trick; they parameterize a class of boundary graviton configurations.

For a one-soliton sector the current profile can be written as

$$\begin{align}
{\cal J}_\pm(\xi_\pm)
=-\nu_\pm\alpha_\pm^2\operatorname{sech}^2(\alpha_\pm\xi_\pm),
\end{align}$$

with $\xi_\pm$ the chiral traveling coordinate fixed by the chosen hierarchy flow. The corresponding potential variable satisfies

$$\begin{align}
{\cal J}_\pm=\frac{k}{\pi}\partial_x\Phi_\pm,
\end{align}$$

and the source gives a representative

$$\begin{align}
\Phi_\pm
=\pm\frac{2\pi\nu_\pm\alpha_\pm}{k}
\frac{1}{1+e^{\pm2\alpha_\pm\xi_\pm}}
+\varphi_\pm(t).
\end{align}$$

This is the practical gravitational interpretation: soliton data are encoded in the boundary current, then lifted through the radial gauge map to metric data and Brown-York observables. The non-compactness assumption is essential because the spectral problem is the line-scattering problem, not a compact-mode Fourier diagonalization.

# Finite-cutoff observables and the radial-flow no-go

At finite cutoff, the Brown-York energy density contains both chiral squares and a mixed product:

$$\begin{align}
\rho(r)
=\frac{\pi}{2k}
\left[
\frac{r^4+\ell^4}{r^4-\ell^4}
({\cal J}_+^2+{\cal J}_-^2)
+\frac{4\ell^2r^2}{r^4-\ell^4}
{\cal J}_+{\cal J}_-
\right].
\end{align}$$

The mixed ${\cal J}_+{\cal J}_-$ term is the finite-cutoff interaction in the quasi-local observable. It should not be read as an interaction in the chiral boundary Hamiltonian: the Chern-Simons phase-space currents are still the same $r$-independent variables, and the radial dependence enters through the map to Brown-York data.

The no-go theorem can be read as a locality statement. One might ask whether there exists a functional $H_r[{\cal J}_+,{\cal J}_-]$ such that the radial derivative of the finite-cutoff stress tensor is generated by the affine current bracket. The paper's answer is negative within the local Hamiltonian class: the radial flow of quasi-local observables is exact and closed, but it is not a canonical Hamiltonian flow on the same boundary current phase space.

This distinction is important for using the paper in finite-boundary work. The flow

$$\begin{align}
\partial_r\rho
=-\frac{4\ell^2 r}{r^4-\ell^4}\sqrt{\rho^2-J^2}
\end{align}$$

is a radial reconstruction/deformation equation. It does not replace the time Hamiltonian equations

$$\begin{align}
\partial_t{\cal J}_\pm=\{{\cal J}_\pm,H\}.
\end{align}$$

The paper's conceptual payload is exactly the coexistence of these two structures.

# Local translation for current projects

- CPS dictionary: the central object is the finite-boundary symplectic form and its surface-charge variation. This is directly parallel to finite-boundary CPS charge work, with ${\cal J}_\pm$ as edge/current data and $\mu_\pm$ as boundary sources.
- Charge dictionary: $Q(\epsilon)$ is integrable for field-independent $\epsilon$, and charge differences are governed by symplectic flux. This is a compact model for balance-law bookkeeping on a causal boundary.
- Boundary dictionary: non-compact spatial boundary conditions are not a technical afterthought; they control the admissible current algebra, zero modes, and inverse-scattering data.
- Finite-cutoff dictionary: the radial flow of Brown-York variables is a quasi-local observable flow. It should not be identified blindly with canonical Hamiltonian time evolution.
- Integrability dictionary: field-space charge integrability and Liouville/KdV integrability are distinct. Vanishing symplectic flux gives a closed Hamiltonian variational problem; the Lenard recursion and Lax pair give commuting boundary flows inside that problem.
- Spectral dictionary: scattering data of the Schrödinger operator are boundary-graviton observables in the non-compact setup. They are not optional decorative integrability variables.
- Project extension: use this paper when comparing AdS$_3$ finite-boundary charges, $T\bar T$-type radial flow, and integrable boundary conditions. Its clean separation between time Hamiltonian flow and radial non-Hamiltonian flow is likely reusable.

# Verification log

## Checked

- Mathematica checked the algebraic factorization behind the finite-cutoff flow. From the source formulas for $\rho$ and $J$,

$$\begin{align}
(\rho^2-J^2)\frac{4k^2}{\pi^2}(r^4-\ell^4)^2
=4(\ell^2{\cal J}_+ +r^2{\cal J}_-)^2(\ell^2{\cal J}_-+r^2{\cal J}_+)^2.
\end{align}$$

- Mathematica also checked

$$\begin{align}
\partial_r\rho\,
\frac{k}{\pi}
\frac{(r^4-\ell^4)^2}{2\ell^2 r}
=
-2(\ell^2{\cal J}_+ +r^2{\cal J}_-)
(\ell^2{\cal J}_-+r^2{\cal J}_+).
\end{align}$$

Together these reproduce the paper's radial-flow equation after choosing the source's principal square-root branch in the physical region.

## Blocked

- I did not independently verify the full Chern-Simons symplectic reduction or the no-go theorem for radial Hamiltonian flow. That requires a longer functional-analytic check of the assumed locality class for Hamiltonians.
- I did not reconstruct the inverse-scattering solution formulas from the Gel'fand-Levitan-Marchenko equation. The Lax/scattering material is source-derived here.
- The Lenard recursion representatives above are copied from the source logic and not independently regenerated beyond structural consistency.

## Failed

- No failed independent check was found in the calculations attempted here.
