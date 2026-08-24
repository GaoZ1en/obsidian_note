---
paper id: 2608.18583v1
title: First Law of Black Hole Interior Dynamics
authors:
  - Ze-Xuan Xiong
  - H. Lu
publication date: 2026-08-19T06:24
abstract: |-
  The paper derives a local first-law-type relation for cosmological black-hole interiors connecting a horizon to a scalar-kinetic-dominated Kasner singularity. It evaluates the Iyer--Wald surface-charge identity between the two endpoint spheres, defines a dimensionless Kasner potential and transported response coefficients, and tests the relation on exact and numerical Einstein--Maxwell--scalar solutions.
comments: "15 pages, 1 figure (with 4 subfigures)"
url: https://arxiv.org/abs/2608.18583v1
summary: "A precise horizon-to-Kasner Iyer--Wald variation identity, useful provided it is kept distinct from a new asymptotic charge or a complete interior thermodynamics."
tags: []
---

# Direct verdict

Correct under the following precise conditions: the result is a **classical on-shell surface-charge variation identity** for four-dimensional Einstein--Maxwell--scalar theory in a static, spherically symmetric areal gauge, with fixed theory couplings, field-independent Killing vector \(\xi=\partial_t\), a regular horizon, no intervening singularity before the regulated endpoint, and a scalar-kinetic-dominated Kasner asymptotic satisfying the two stated Kasner constraints.

Under those conditions the paper obtains

\[
\delta M_{\rm K}
=\mathcal T\,\delta S+\mathit\Phi_e\,\delta Q_e
+\phi_{\rm K}\,\delta\Sigma_{\rm K}.
\]

The statement should not be rewritten as a new ADM-like interior energy law. \(M_{\rm K}\) is dimensionless and is defined from the regulated Kasner data so that the endpoint Iyer--Wald identity becomes exact. The paper does not construct a new asymptotic symmetry algebra, a boundary-completed covariant phase space, a quantum first law, or an autonomous thermodynamic ensemble at the singularity.

See [[2026_08_20_overview]] for today's queue and comparison set.

# Source map

## Section 1 — motivation and target identity

The exterior black-hole first law pairs variations of asymptotic charges with horizon responses. The paper instead restricts attention to the cosmological region between a horizon and a Kasner-like spacelike singularity. Its target is an exact one-form on a family of interior solutions, with endpoint data at the horizon and at the regulated Kasner surface.

## Section 2 — horizon and Kasner data

The Einstein--Maxwell--scalar theory, spherical ansatz, horizon quantities, local electric and scalar momenta, Kasner exponents, singular coefficients, normalized scalar charge, and Kasner potential are defined here.

## Section 3 — Iyer--Wald derivation

The source evaluates the Iyer--Wald two-form \(k_\xi=\delta Q_\xi-\iota_\xi\Theta\) on a sphere of radius \(r\). Radial closure equates the horizon and regulated-Kasner integrals. The Kasner constraint cancels the apparent logarithmic divergence; the finite part gives the first law after a field-dependent normalization by \(\Xi\).

## Section 4 — exact and numerical tests

The exact checks use Schwarzschild, charged Einstein--Maxwell--dilaton black holes, and a one-parameter neutral scalar-hairy family. The numerical test uses two two-parameter horizon-to-Kasner families and compares gradients of a fitted \(M_{\rm K}(S,\Sigma_{\rm K})\) with directly extracted response coefficients.

## Section 5 — Smarr subtlety

Because \(M_{\rm K}\) shifts logarithmically under length rescaling, Euler homogeneity gives a modified Smarr relation. A generalized Komar quantity reproduces the same relation and adds a bulk scalar-potential integral when \(V(\phi)\neq0\).

## Section 6 — scope and possible extension

The conclusion emphasizes that the construction uses no normalization at infinity and may apply to more general horizon-bounded cosmological interiors. Naked-singularity extensions are proposed but not established.

# Theory, conventions, and endpoint data

## Action and fields

The source uses natural units and

\[
I=\frac1{16\pi}\int d^4x\sqrt{-g}\left[
R-\frac12(\nabla\phi)^2-\frac14 Z(\phi)F^2-V(\phi)
\right],\qquad F=dA.
\]

The Maxwell normalization is therefore not the most common \((R-F^2)/(16\pi)\) convention. In particular, the paper defines

\[
Q_e=\frac1{16\pi}\int_{S_r^2}Z(\phi)*F.
\]

Any comparison with a vault formula using \(1/(4\pi)\int *F\) requires a factor-of-four conversion and a check of the sphere orientation.

The areal-radius ansatz is

\[
ds^2=-h(r)dt^2+\frac{dr^2}{f(r)}+r^2d\Omega_2^2,
\qquad \phi=\phi(r),\qquad A=A_t(r)dt.
\]

Outside the horizon \(r\) is spatial and \(t\) is timelike; inside, their causal roles interchange. The derivation nevertheless keeps the same static coordinate representation and fixed Killing vector \(\partial_t\).

## Horizon quantities

For a nondegenerate horizon at \(r=r_h\),

\[
T=\frac{\sqrt{h'(r_h)f'(r_h)}}{4\pi},
\qquad S=\pi r_h^2,
\qquad \Phi_{\rm H}=A_t(r_h).
\]

The electric charge is radially conserved. The scalar momentum

\[
Q_\phi(r)=-\frac1{16\pi}\int_{S_r^2}\iota_{\partial_t}(*d\phi)
\]

is local and generally varies with \(r\); it is not an asymptotic scalar charge.

## Kasner asymptotic and constraints

The assumed singular regime is

\[
ds^2=-d\tau^2+a_1^2\tau^{2P_t}dt^2
+a_2^2\tau^{2P_T}d\Omega_2^2,
\qquad \phi=2P_\phi\log\tau,
\]

with

\[
P_t+2P_T=1,
\qquad P_\phi^2+3P_T^2-2P_T=0.
\]

In areal gauge this becomes

\[
f\sim-F_0r^{-l},\qquad
h\sim-H_0r^{l-2},\qquad
\phi\sim c_1\log r+\phi_{\rm K},
\]

where

\[
l=1+\frac{c_1^2}{4},
\qquad
\Xi=-\lim_{r\to0^+}r f\sqrt{\frac hf}=\sqrt{F_0H_0}.
\]

The endpoint scalar data are

\[
Q_\phi^{\rm K}=\frac14\Xi c_1,
\qquad
\Sigma_{\rm K}=\frac{Q_\phi^{\rm K}}{\Xi}=\frac{c_1}{4},
\qquad
\Phi_{\rm K}=A_t(0).
\]

The signs of \(Q_e\) and \(Q_\phi\) depend on the Hodge and sphere-orientation conventions. The paper's later formulas must be read with its stated positive \(Q_e\) for the displayed EMD solution.

## Kasner potential

The central endpoint function is

\[
M_{\rm K}=\frac12\log F_0+\phi_{\rm K}\Sigma_{\rm K}.
\]

It is not an energy. Its first term records the singular metric amplitude; its second supplies the Legendre-type completion needed to turn the finite Iyer--Wald endpoint expression into an exact differential.

# Iyer--Wald derivation map

## Step 1 — closed surface variation

For a solution variation \(\delta\Psi\) and fixed Killing vector \(\xi\),

\[
k_\xi(\delta\Psi;\Psi)=\delta Q_\xi-\iota_\xi\Theta(\Psi,\delta\Psi).
\]

On shell and for a linearized solution, \(dk_\xi=0\). Hence the sphere integral

\[
\delta\mathcal H_\xi(r)=\int_{S_r^2}k_\xi
\]

is independent of \(r\) as long as the interpolating region has no additional singular boundary.

The source's reduced expression is

\[
\begin{aligned}
\delta\mathcal H_\xi(r)=\frac1{16\pi}\int_{S_r^2}\bigg\{
&r\left[-2\sqrt{\frac hf}\,\delta f
-fr\sqrt{\frac hf}\,\phi'\delta\phi\right]\\
&-A_t\,\delta\left(r^2\sqrt{\frac fh}\,Z(\phi)A_t'\right)
\bigg\}.
\end{aligned}
\]

This is a **Hamiltonian variation density integrated on a sphere**. The paper does not separately prove integrability of \(\mathcal H_\xi\) on a boundary phase space with prescribed boundary conditions.

## Step 2 — horizon endpoint

Regularity at the horizon gives

\[
\delta\mathcal H_\xi(r_h)=T\,\delta S+\Phi_{\rm H}\,\delta Q_e.
\]

## Step 3 — regulated Kasner endpoint

At \(r=\epsilon\), the apparent divergent coefficient is

\[
\Xi(c_1\delta c_1-2\delta l)\log\epsilon.
\]

It vanishes because \(l=1+c_1^2/4\) implies

\[
2\delta l=c_1\delta c_1.
\]

The remaining finite part is

\[
\delta\mathcal H_\xi(\epsilon)
=\Xi\,\delta\log\sqrt{F_0}
+\Phi_{\rm K}\delta Q_e
+\Xi\Sigma_{\rm K}\delta\phi_{\rm K}
+O(\epsilon).
\]

## Step 4 — transported responses and exact potential

Equating endpoints and dividing by \(\Xi\) gives

\[
\delta\log\sqrt{F_0}+\Sigma_{\rm K}\delta\phi_{\rm K}
=\frac{T}{\Xi}\delta S
+\frac{\Phi_{\rm H}-\Phi_{\rm K}}{\Xi}\delta Q_e.
\]

Define

\[
\mathcal T=\frac{T}{\Xi},
\qquad
\mathit\Phi_e=\frac{\Phi_{\rm H}-\Phi_{\rm K}}{\Xi}.
\]

Then varying \(M_{\rm K}\) adds \(\phi_{\rm K}\delta\Sigma_{\rm K}\) and yields the advertised first law.

The potential difference is invariant under \(A_t\mapsto A_t+C\). Under a constant normalization change of \(t\), \(T\), \(\Phi_{\rm H}-\Phi_{\rm K}\), and \(\Xi\) scale together, so both response coefficients remain invariant.

# Exact examples

## Schwarzschild

For mass parameter \(m\),

\[
M_{\rm K}=\frac12\log(2m),
\qquad \Xi=2m,
\qquad T=\frac1{8\pi m},
\qquad S=4\pi m^2.
\]

Thus

\[
\delta M_{\rm K}=\frac{\delta m}{2m}
=\frac{T}{\Xi}\delta S.
\]

## Charged Einstein--Maxwell--dilaton family

With \(Z=e^{a\phi}\) and \(n=4/(1+a^2)\), the paper writes

\[
M_{\rm K}=\frac12\log m-\frac1{2a^2}\log q,
\quad
Q_e=\frac14\sqrt{nq(m+q)},
\quad
\Sigma_{\rm K}=-\frac1{2a},
\]

\[
\phi_{\rm K}=\frac2a\log q,
\quad
\Xi=\frac14m(4-n),
\quad
\mathit\Phi_e=-\frac1{a^2Q_e},
\quad
\mathcal T=\frac{m}{4\Xi S}.
\]

At fixed coupling \(a\), \(\delta\Sigma_{\rm K}=0\). The \(dm\) and \(dq\) coefficients independently satisfy the first law.

## Neutral exact scalar-hairy family

For fixed \((\alpha,\mu)\) and the single integration constant \(q\),

\[
\Delta=\frac{\alpha q^2}{2(1-2\mu)}-1>0,
\]

\[
F_0=\frac{(1-\mu)^2}{4}\Delta q^{2/(1-\mu)},
\quad
\Xi=\frac{1-\mu}{2}\Delta q,
\]

\[
\Sigma_{\rm K}=-\frac12\sqrt{\frac{1+\mu}{1-\mu}},
\qquad
\phi_{\rm K}=2\sqrt{\frac{1+\mu}{1-\mu}}\log q.
\]

The exact identity reduces to the single \(dq\) coefficient because \(\Sigma_{\rm K}\) depends only on the fixed couplings.

# Numerical test and its evidentiary limit

The numerical section studies the neutral Einstein--scalar theory with

\[
V_1=g_5\phi^5+g_7\phi^7,
\qquad
V_2=\frac12g_2\phi^2,
\]

using horizon data \((r_0,\phi_0)\) to generate two-parameter interior families. It extracts \((S,\Sigma_{\rm K},M_{\rm K},\mathcal T,\phi_{\rm K})\), fits \(M_{\rm K}(S,\Sigma_{\rm K})\), and compares

\[
\mathcal T^{\rm th}=\frac{\partial M_{\rm K}}{\partial S},
\qquad
\phi_{\rm K}^{\rm th}=\frac{\partial M_{\rm K}}{\partial\Sigma_{\rm K}}
\]

with directly extracted values.

This is a consistency test of the fitted finite-dimensional data. It is not a proof of global existence, uniqueness, stability, or phase structure for the interior evolution. The source archive contains four finished figure images but no integration code, raw samples, fit basis, fit order, uncertainty model, or residual table.

# Smarr relation

## Scale-free theory

When \(V=0\), the scaling is

\[
S\mapsto\lambda^2S,
\quad Q_e\mapsto\lambda Q_e,
\quad \Sigma_{\rm K}\mapsto\Sigma_{\rm K},
\quad F_0\mapsto\lambda^lF_0,
\quad \phi_{\rm K}\mapsto\phi_{\rm K}-c_1\log\lambda.
\]

Therefore

\[
M_{\rm K}(\lambda^2S,\lambda Q_e,\Sigma_{\rm K})
=M_{\rm K}(S,Q_e,\Sigma_{\rm K})
+\left(\frac12-2\Sigma_{\rm K}^2\right)\log\lambda,
\]

and

\[
2\mathcal T S+\mathit\Phi_eQ_e
=\frac12-2\Sigma_{\rm K}^2.
\]

This is logarithmic quasi-homogeneity, not ordinary extensivity of an energy.

## Generalized Komar relation

For \(\xi=\partial_t\),

\[
K(r)=\frac{r^2}{2}\sqrt{\frac fh}\,h'(r).
\]

With the paper's electric orientation convention,

\[
K'=-Q_eA_t'-\frac12r^2\sqrt{\frac hf}\,V(\phi),
\qquad
J=K+Q_eA_t,
\]

so

\[
J'=-\frac12r^2\sqrt{\frac hf}\,V(\phi).
\]

The potential-corrected relation is

\[
2\mathcal T S+\mathit\Phi_eQ_e
+\frac1{2\Xi}\int_0^{r_h}dr\,r^2\sqrt{\frac hf}V(\phi)
=\frac12-2\Sigma_{\rm K}^2.
\]

# Translation into the vault's CPS language

1. **What is genuinely constructed:** an on-shell closed Iyer--Wald two-form for a fixed exact Killing vector, evaluated on two homologous spheres within a restricted solution family.
2. **What is transported:** the horizon variation is rewritten in terms of singular-endpoint coefficients after division by the solution-dependent normalization \(\Xi\).
3. **What is integrable:** the displayed one-form is exact because \(M_{\rm K}=\tfrac12\log F_0+\phi_{\rm K}\Sigma_{\rm K}\) is explicitly supplied. This is finite-dimensional solution-space integrability, not a proof of a boundary Hamiltonian on an unrestricted field space.
4. **What is absent:** no presymplectic-flux analysis at the regulated Kasner surface, no corner ambiguity audit, no field-dependent symmetry generator, no charge algebra, and no moving-embedding degree of freedom.
5. **Relation to gluing:** the radial equality resembles a transfer identity across a bulk region, but it assumes one smooth classical solution connecting the endpoints. It neither constructs the user's interpolation/gluing map nor proves quantum or matter/pure-gravity factorization.

# Verification log

## Checked

- The official 15-page PDF and complete 746-line TeX source were retrieved. PDF pages 3, 5, 7, 10, 12, and 14 were rendered; the displayed endpoint, exact-solution, and Smarr formulas agree with the TeX source.
- Mathematica exactly reproduced the cancellation \(c_1\delta c_1-2\delta l=0\) from \(l=1+c_1^2/4\).
- Mathematica independently returned zero for both \(dm\) and \(dq\) residuals of the EMD first law at fixed \(a\), and zero for its modified Smarr residual.
- Mathematica returned zero for the neutral exact scalar-hairy \(dq\) residual under \(q>0\), \(-1<\mu<1/2\), and \(\Delta>0\).
- Mathematica reproduced the Schwarzschild--AdS reduction \(M=2TS+\Lambda r_h^3/3\) from the potential-corrected relation.
- xAct/xCoba computed the metric Christoffel component \(\Gamma^t{}_{tr}=h'/(2h)\) and verified, with the positive-root convention for \(\sqrt{f/h}\),
  \[
  K'(r)+r^2\sqrt{\frac hf}\,R^t{}_t=0.
  \]
  Combined with the EMS field equation, this reproduces the generalized Komar radial structure; the sign of the \(Q_eA_t'\) term follows the paper's Hodge/sphere orientation.

## Source-derived

- The reduced Iyer--Wald sphere variation and its horizon value were reconstructed from the supplied TeX formulas and standard closure statement, but the paper does not print the intermediate \(\Theta\) and \(Q_\xi\) components needed for a line-by-line independent convention audit.
- The claim that the two numerical surfaces and samples “fit perfectly” is source-derived from the four plotted panels.

## Blocked

- Reproducing the numerical horizon-to-Kasner integrations, fitted derivatives, and quoted agreement is blocked by the absence of executable code, raw \((r_0,\phi_0)\) samples, fit basis/order, numerical precision, and residual or uncertainty tables.
- A complete independent check of every sign and normalization in the reduced \(k_\xi\) formula is blocked by the source's implicit orientation/Hodge conventions and omitted intermediate Noether-charge and presymplectic-potential expressions. The endpoint algebra and Komar geometry were checked instead.

## Failed

- None in the independently checked algebraic targets.

## Not independently verified

- The existence of a smooth three-parameter charged interior solution space with independent \((S,Q_e,\Sigma_{\rm K})\) is not established by the examples.
- Scalar-kinetic dominance, the absence of an intervening inner horizon, and the stability of the Kasner regime are assumptions on the class of solutions, not consequences of the first-law identity.
- The proposed use of \(M_{\rm K}\) for interior phase structure and the extension to naked singularities remain research targets.

# Reusable takeaways

- Keep the three layers separate: radial Iyer--Wald closure, endpoint response identity, and the chosen exact Kasner potential.
- Use \(\Phi_{\rm H}-\Phi_{\rm K}\), not either potential separately, when comparing gauge conventions.
- Preserve the nonstandard Maxwell charge normalization and the dimensionless nature of \(M_{\rm K}\).
- For future checks, the most useful missing artifact is not another plot but the raw solution grid plus the map from near-horizon integration constants to \((F_0,H_0,c_1,\phi_{\rm K})\).
