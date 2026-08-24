---
paper id: 2608.17064v1
title: "Robin boundary conditions in global AdS$_4$: exact double-trace thermodynamics and a soft-mode instability"
authors:
  - David A. Lowe
  - Juanyi Yang
publication date: 2026-08-17T19:10
abstract: |-
  A conformally coupled free scalar on global AdS4 is solved with a one-parameter Robin boundary condition. The exact Gaussian boundary resolvent gives the spectrum and a relative functional determinant. After local ultraviolet subtractions, one homogeneous mode controls a finite zero-temperature square-root cusp and a finite-temperature logarithmic instability at a critical Robin angle. The flat-space limit removes fixed-energy Robin dependence but retains a soft-frequency remnant.
comments: "36 pages, 3 figures; official PDF has 37 pages including front matter and references"
url: https://arxiv.org/abs/2608.17064v1
summary: "An analytically reusable Robin/double-trace benchmark with a well-isolated Gaussian soft mode, provided its free-field, finite-coupling and renormalization-scheme boundaries are kept explicit."
tags: []
---

# Direct verdict and claim tier

Correct under the following precise conditions: the bulk field is a free conformally coupled scalar with \(m^2L^2=-2\) on fixed global AdS\(_4\); the boundary theory is treated as the corresponding generalized-free alternate quantization deformed quadratically; \(0<\alpha<\alpha_{\rm crit}\) when the finite-coupling determinant is used; and the stated local subtraction scheme fixes the finite counterterms through cubic order.

Under these conditions the boundary resolvent, pole condition, Gaussian determinant, soft-mode exponents and nonuniform Dirichlet limit are mutually consistent. “Exact thermodynamics” means exact in the free Gaussian scalar sector and nonperturbative in the Robin coupling. It is not the thermodynamics of an interacting holographic CFT, a backreacting bulk, or dynamical gravity.

The most reusable result is the single denominator
\[
\widehat{\mathcal G}_\alpha(\omega,\ell)
=\frac{\widehat{\mathcal G}_N(\omega,\ell)}
{1+\lambda\widehat{\mathcal G}_N(\omega,\ell)},
\qquad
\lambda=\frac{\cot\alpha}{L},
\]
which controls the spectrum, susceptibility, determinant and instability.

# How to read the paper

## Essential route

1. Section 2 through the boundary action and Table 1 for signs and the \((A,B,\lambda)\) dictionary.
2. Section 3 through equations (3.10)--(3.19) for the exact resolvent and critical pole.
3. Section 4.1 for the subtraction prescription and its residual scheme freedom.
4. Section 4.2 for the one-mode endpoint and finite-temperature distinction.
5. Section 4.4 for the heat-capacity scaling function.
6. Appendix A for the gamma-function response and Appendix B for power counting.

## Optional route

Section 5's Mellin transform is a useful soft-frequency diagnostic, but the authors correctly warn that it is not a full celestial correlator. It is secondary to the Robin spectral and thermodynamic result.

# Complete source map

- **Section 1:** motivates mixed quantization on the boundary cylinder and previews the determinant and soft endpoint.
- **Section 2:** maps the conformal scalar to half of the Einstein static universe, derives the Robin/double-trace dictionary, and constructs a meromorphic bulk-to-boundary kernel.
- **Section 3:** obtains the exact Euclidean boundary resolvent and separates infrared boundary-condition dependence from universal local ultraviolet behavior.
- **Section 4:** computes the relative Gaussian free energy, renormalizes its vacuum part, identifies the endpoint, differentiates to \(\langle O^2\rangle\), and extracts entropy and heat capacity.
- **Section 5:** distinguishes three flat limits and Mellin-transforms the homogeneous channel.
- **Section 6:** states the free-field and conformal-coupling boundaries and proposes interacting/gravitational extensions.
- **Appendix A:** derives the Neumann response from the regular Legendre solution.
- **Appendix B:** proves that the first three determinant terms contain all ultraviolet divergences.
- **Appendix C:** documents numerical quadrature, angular tails and figure checks.

# Bulk problem and boundary dictionary

Global AdS\(_4\) is written as
\[
\mathrm ds^2=\frac{L^2}{\cos^2\rho}
\left(-\mathrm dt^2+\mathrm d\rho^2+\sin^2\rho\,\mathrm d\Omega_2^2\right).
\]
For \(m^2L^2=-2\),
\[
(\Delta_-,\Delta_+)=(1,2),
\qquad
\phi=\cos\rho\,\widetilde\phi,
\]
and the near-boundary coefficients obey
\[
\widetilde\phi|_\partial=A,
\qquad
\partial_\rho\widetilde\phi|_\partial=B.
\]
The sourced Robin condition is
\[
\cos\alpha\,\widetilde\phi
+\sin\alpha\,\partial_\rho\widetilde\phi=h,
\]
or
\[
\frac BL+\lambda A=J,
\qquad
\lambda=\frac{\cot\alpha}{L},
\qquad
J=\frac{h}{L\sin\alpha}.
\]

The endpoints are
\[
\alpha=\frac\pi2:\ B=0\quad(\Delta=1\text{ alternate/Neumann}),
\qquad
\alpha=0:\ A=0\quad(\Delta=2\text{ standard/Dirichlet}).
\]
Adding
\[
I_{\lambda,J}=I_{\rm ren}
+\int_\partial\sqrt\gamma
\left(\frac12\lambda A^2-JA\right)
\]
reproduces the coefficient relation and fixes the coupling sign used throughout.

# Meromorphic kernel and spectral condition

The regular radial mode \(\psi_{\omega\ell}\) obeys
\[
\left[\frac{\mathrm d}{\mathrm d\rho}
\sin^2\rho\frac{\mathrm d}{\mathrm d\rho}
-(1-\omega^2)\sin^2\rho-\ell(\ell+1)\right]\psi_{\omega\ell}=0.
\]
Define
\[
D_\alpha(\omega,\ell)
=\cos\alpha\,\psi_{\omega\ell}(\pi/2)
+\sin\alpha\,\psi'_{\omega\ell}(\pi/2).
\]
Then
\[
K_\alpha(\rho;\omega,\ell)
=\frac{\psi_{\omega\ell}(\rho)}{D_\alpha(\omega,\ell)},
\qquad
D_\alpha(\omega,\ell)=0
\]
gives the normal modes. Residues of the same kernel reproduce the usual mode sum, avoiding separate mode normalization.

The Euclidean boundary Dyson equation diagonalizes on \(\mathbb R\times S^2\):
\[
G_\alpha=G_N-\lambda G_N\star G_\alpha.
\]
It gives both
\[
\widehat{\mathcal G}_\alpha
=\frac{\widehat{\mathcal G}_N}{1+\lambda\widehat{\mathcal G}_N}
\]
and the mixed bulk-boundary kernel with the same denominator. After analytic continuation,
\[
1+\lambda\widehat{\mathcal G}_N^L(\omega,\ell)=0
\]
is equivalent to \(D_\alpha=0\).

# Closed Neumann response

The exact Euclidean response is
\[
\widehat{\mathcal G}_N^E(\Omega,\ell)
=\frac L2
\frac{\left|\Gamma\!\left(\frac{\ell+1+i\Omega}{2}\right)\right|^2}
{\left|\Gamma\!\left(\frac{\ell+2+i\Omega}{2}\right)\right|^2}.
\]
The first two channels are
\[
\widehat{\mathcal G}_N^E(\Omega,0)
=\frac L\Omega\tanh\frac{\pi\Omega}{2},
\qquad
\widehat{\mathcal G}_N^E(\Omega,1)
=\frac{L\Omega}{1+\Omega^2}\coth\frac{\pi\Omega}{2},
\]
and
\[
\frac{\widehat{\mathcal G}_N^E(\Omega,\ell+2)}
{\widehat{\mathcal G}_N^E(\Omega,\ell)}
=\frac{(\ell+1)^2+\Omega^2}{(\ell+2)^2+\Omega^2}.
\]

At large momentum,
\[
\widehat{\mathcal G}_N^E
\sim\frac{L}{\sqrt{\Omega^2+(\ell+1)^2}},
\]
while the largest static response is
\[
\widehat{\mathcal G}_N^E(0,0)=\frac{\pi L}{2}.
\]
This makes the homogeneous channel the first candidate to lose positivity.

# Gaussian determinant and renormalization

On \(S^1_\beta\times S^2\),
\[
\Delta F(\alpha,T)
=\frac T2\sum_{\ell=0}^\infty(2\ell+1)
\sum_{n\in\mathbb Z}
\log\!\left[1+\lambda\widehat{\mathcal G}_N^E(2\pi nT,\ell)\right].
\]
This is exact for the quadratic generalized-free sector. The zero-temperature integral contains quadratic, linear and logarithmic divergences from the first three powers of
\(u=\lambda\widehat{\mathcal G}_N^E\). The paper chooses
\[
\mathcal E_\alpha^{\rm ren}
=\frac12\sum_\ell(2\ell+1)\int\frac{\mathrm d\Omega}{2\pi}
\left[\log(1+u)-u+\frac{u^2}{2}-\frac{u^3}{3}\right].
\]

Finite local terms allow shifts through cubic order in \(\cot\alpha\) in the adopted renormalizable local scheme. Consequently the first invariant Taylor coefficient in that scheme is
\[
\mathcal E_\alpha^{\rm ren}
=-c_4\cot^4\alpha+O(\cot^5\alpha),
\qquad
c_4\simeq\frac{0.195}{L}.
\]
The absolute endpoint value remains scheme dependent. The exponent and nonanalytic coefficient of the cusp cannot be removed by analytic local counterterms.

For finite \(\lambda\), the \(T^4\) and \(T^3\) terms agree with Neumann and cancel in the difference, leaving
\[
F_{\rm th}(\alpha,T)
\sim\frac\pi3\cot\alpha\,LT^2.
\]
The limit \(\alpha\to0\) is nonuniform: Dirichlet belongs to the other ultraviolet tower and instead gives a leading \(T^3\) difference.

# Stability endpoint and one-mode scaling

The static homogeneous denominator vanishes when
\[
1+\frac\pi2\cot\alpha_{\rm crit}=0,
\qquad
\alpha_{\rm crit}=\pi-\arctan\frac\pi2
\simeq0.6804535\pi.
\]
Let
\[
\varepsilon=1+\frac\pi2\cot\alpha,
\qquad
\kappa=\frac{\pi^2}{12}.
\]
Near the endpoint,
\[
\widehat{\mathcal G}_\alpha^E(\Omega,0)
\simeq\frac{\pi/2}{\varepsilon+\kappa\Omega^2},
\qquad
\omega_0=2B\sqrt{\alpha_{\rm crit}-\alpha},
\qquad
B\simeq0.81913.
\]
Therefore
\[
\chi_0\propto(\alpha_{\rm crit}-\alpha)^{-1},
\qquad
\omega_0\propto(\alpha_{\rm crit}-\alpha)^{1/2}.
\]

At \(T=0\), the zero-point energy gives a finite cusp,
\[
\mathcal E_\alpha^{\rm ren}
=\mathcal E_{\rm crit}^{\rm ren}
+B\sqrt{\alpha_{\rm crit}-\alpha}+\cdots.
\]
At any fixed \(T>0\), the discrete static Matsubara term instead gives
\[
F^{\rm soft}\simeq\frac T2\log(\alpha_{\rm crit}-\alpha),
\]
which diverges to \(-\infty\). This is a Gaussian zero-mode failure, not a stable broken phase or a Hagedorn transition.

The isolated oscillator has
\[
C^{\rm soft}
=\left(\frac{\omega_0}{T}\right)^2
\frac{e^{\omega_0/T}}{(e^{\omega_0/T}-1)^2},
\]
interpolating between exponential freeze-out and the classical value \(1\). The full relative heat capacity also contains a smooth higher-mode background and does not approach \(1\) at high temperature.

# Double-trace observable and local ultraviolet behavior

Differentiation gives the renormalized composite response
\[
4\pi L^2\langle O^2\rangle_\alpha^{\rm ren}
=2\partial_\lambda\mathcal E_\alpha^{\rm ren}.
\]
It begins cubically near Neumann because the first finite vacuum term is quartic, and it diverges as
\[
\langle O^2\rangle_\alpha^{\rm ren}
\propto(\alpha_{\rm crit}-\alpha)^{-1/2}.
\]
This measures fluctuations and is not an order parameter; \(\langle O\rangle=0\) throughout the stable Gaussian branch.

In contrast, the leading boundary limit of the local bulk vacuum polarization is independent of every non-Dirichlet Robin parameter:
\[
\lim_{\rho\to\pi/2}\langle\phi^2\rangle_\alpha^{\rm ren}
=\frac{5}{48\pi^2L^2},
\qquad
\alpha\ne0.
\]
The paper thus cleanly separates soft/global Robin dependence from the universal Hadamard ultraviolet structure.

# Flat-space and Mellin limits

For fixed physical \(w=\Omega/L\) and \(k=(\ell+1)/L\),
\[
\widehat{\mathcal G}_\alpha^E(w,k)
\longrightarrow
\frac1{\sqrt{w^2+k^2}+\lambda},
\qquad
\lambda=\frac{\cot\alpha}{L}.
\]
Holding \(\alpha\) fixed sends \(\lambda\to0\), so fixed-energy data become Neumann. Holding \(\lambda\) fixed instead requires \(\cot\alpha\sim\lambda L\); keeping global \((\Omega,\ell)\) fixed probes a different soft limit.

For the homogeneous channel the Mellin diagnostic
\[
M_\alpha(\Delta)
=\int_0^\infty\mathrm d\Omega\,
\Omega^{\Delta-1}\widehat{\mathcal G}_\alpha^E(\Omega,0)
\]
has the near-critical scaling
\[
M_\alpha^{\rm soft}(\Delta)
\simeq
\frac{3\omega_0^{\Delta-2}}{\sin(\pi\Delta/2)}.
\]
This organizes the divergent soft residues. It is not a celestial amplitude: the scalar is free and has no nontrivial flat-space \(S\)-matrix.

# Relation to current AdS and boundary work

- This is an exact finite-radius benchmark for alternate quantization and a relevant double-trace deformation.
- The denominator \(1+\lambda\widehat{\mathcal G}_N\) is a useful model of a boundary response operator whose zero produces a soft instability.
- It provides a concrete comparison for Robin spectral problems, determinant thermodynamics and endpoint nonuniformity.
- It does not construct a CPS boundary condition, symplectic flux cancellation, gravitational edge mode, or nonlinear endpoint. Transfer to gravitational Robin/leaky boundary data remains a research question.

# Verification log

## Source-derived

- The half-ESU conformal map, boundary action, Dyson equation and identification of the kernel denominator.
- The functional determinant and the interpretation of its local subtractions.
- The mode-sum thermodynamics, local vacuum-polarization limit and numerical phase plots.
- The gravitational and celestial extensions.

## Checked

- The 37-page official PDF was sampled visually at the title, dictionary/stability, cusp/high-temperature, flat-limit, conclusion and reference pages; formulas and labels agree with the retrieved TeX source.
- Mathematica returned zero residuals for the \(\ell=0\) and \(\ell=1\) elementary Neumann kernels and for the \(\ell\mapsto\ell+2\) gamma-function recursion.
- Mathematica returned zero for the critical-denominator identity, the expansion coefficients \(\kappa=\pi^2/12\) and \(c_\varepsilon=\pi/2+2/\pi\), the gap/cusp coefficient relation, and the small-\(\Omega\) series through \(O(\Omega^4)\).
- Mathematica independently evaluated the flat Mellin integral for \(0<\operatorname{Re}\Delta<1\) and reproduced \(\pi\lambda^{\Delta-1}/\sin(\pi\Delta)\).
- An independent Mathematica quadrature through \(\ell=120\), completed with the paper's analytic tail, gave
  \[
  c_4L=0.1946638,
  \qquad
  (c_4L)_{\ell=0}=0.1394208,
  \]
  consistent with the quoted \(0.19469\) and \(0.1394\).

## Blocked or not independently verified

- The thermal Matsubara numerics and every plotted grid were not rerun; the paper supplies no standalone code, only the algorithm and tolerances in Appendix C.
- The boundary-limit value of \(\langle\phi^2\rangle\) is cross-checked against a cited prior calculation in the source, not independently point-split here.
- Scheme independence of the quartic coefficient is understood within the standard local renormalizable counterterm class adopted by the authors; enlarging the theory by arbitrary higher-dimension finite boundary terms would change that convention.
- No claim beyond the Gaussian endpoint is verified because the free zero mode is non-normalizable there; a stable phase requires interactions not present in the model.

# Audit notes

- **Exactness boundary:** exact in \(\alpha\) and in the free Gaussian sector, not exact in bulk loops or interactions.
- **Endpoint boundary:** the determinant about Neumann is a finite-\(\lambda\) representation; Dirichlet is a nonuniform strong-coupling endpoint.
- **Thermodynamic boundary:** \(\Delta F\), \(\Delta S\) and \(\Delta C\) are differences relative to Neumann, not absolute thermodynamic stability criteria.
- **Criticality boundary:** one mode softens on compact \(S^2\); the quoted exponents do not establish an interacting thermodynamic universality class.
- **Reason codes:** `T1-boundary`, `T2-spectral`, `T2-dS-BH-holography`.

# Reading recommendation

Keep this paper as a technical reference. The transferable chain is
\[
\text{Robin boundary action}
\Longrightarrow
\text{exact Gaussian resolvent}
\Longrightarrow
\text{pole/determinant}
\Longrightarrow
\text{single soft-mode endpoint}.
\]
For the vault's active work, the best next comparison is to replace the scalar inverse response by the appropriate gravitational or CPS boundary response and ask which assumptions preserve self-adjointness, flux control and positivity.
