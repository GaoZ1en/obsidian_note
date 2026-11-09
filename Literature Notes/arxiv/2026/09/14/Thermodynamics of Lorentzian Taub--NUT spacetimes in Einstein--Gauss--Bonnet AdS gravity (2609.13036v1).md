---
paper id: 2609.13036v1
title: Thermodynamics of Lorentzian Taub--NUT spacetimes in Einstein--Gauss--Bonnet AdS gravity
authors:
  - Borja Diez
publication date: 2026-09-11
abstract: |-
  The paper studies Lorentzian Taub--NUT solutions of Einstein--Gauss--Bonnet AdS gravity in even spacetime dimensions. It computes mass with an off-shell Abbott--Deser--Tekin path charge, entropy as a horizon Noether charge and by the Iyer--Wald formula, and introduces a NUT thermodynamic pair so that the first law has independent horizon-radius and NUT variations.
comments: "20 pages"
url: https://arxiv.org/abs/2609.13036v1
summary: "The charge/entropy construction is useful and the full-cohomogeneity first law checks in fixed dimensions, but two displayed metric-function denominators are dimensionally inconsistent as written."
tags: []
---

Daily overview: [[2026_09_14_overview]]

# Verdict

**Incorrect as written.** Equation (3.2) contains the dimensionally inconsistent factor

$$\begin{align}
(d-2)^2-3n^2
\end{align}$$

in a denominator, where the surrounding factors and the radicand require

$$\begin{align}
\boxed{(d-2)r^2-3n^2}.
\end{align}$$

Equation (3.10) separately contains $(d-2)r^2-3n^3$, which must be $(d-2)r^2-3n^2$ on dimensional and expansion-consistency grounds. These are not harmless notation choices: Eq. (3.2) is the displayed exact metric function.

**Correct under the following precise conditions:** interpret both factors with the corrected $n^2$ and $r^2$ dependence; use the negative EGB branch; keep $\ell$, $\alpha$, the base geometry, and the normalization of the NUT pair fixed; use a nondegenerate AdS vacuum; choose the $m=0$ geometry at the same $n$ as the ADT reference; and retain the Lorentzian Misner string instead of imposing the Euclidean time periodicity. Under these conditions, the horizon entropy agrees algebraically with Iyer--Wald, and the two-variable first law was independently checked for six- and eight-dimensional bulk examples.

The paper does not prove that the ADT charge is path-independent for arbitrary paths or that the retained-string phase space has a globally well-posed variational principle. Its thermodynamic pair $(\psi,N)$ also has a free normalization constant.

# Why This Is High Priority

The paper puts three charge constructions in direct contact:

$$\begin{align}
\text{off-shell ADT path charge} \longleftrightarrow
\text{Noether potential} \longleftrightarrow
\text{Iyer--Wald horizon charge}.
\end{align}$$

This is useful for the vault's CPS and charge programme because the role of the solution-space path, reference background, bifurcation surface, higher-curvature response tensor, and extra thermodynamic direction is explicit. It is a model calculation rather than a general equivalence theorem.

# How to Read the Paper

- **Essential:** Sec. 4 through Eq. (4.16): ADT charge, $P$ tensor, mass, horizon entropy, and the NUT pair.
- **Geometry and assumptions:** Sec. 3: fibration, solution branches, effective AdS radii, and nonstandard asymptotics. Correct the two typographical denominator errors before using the metric function.
- **Theory conventions:** Sec. 2: bulk dimension is $d+1$, the base has dimension $d-1$, and $\kappa=(16\pi G)^{-1}$.
- **Consistency benchmark:** Sec. 4.1: $n\to0$ removes the additional thermodynamic pair and recovers the static first law.
- **Do not treat as established:** path independence beyond the chosen $m\mapsto sm$ curve, global Misner-string boundary data, and the conjectured full-Lovelock extension.

# Complete Section Tree

1. Introduction: Lorentzian versus Euclidean NUT thermodynamics, higher curvature, and motivation for ADT.
2. Einstein--Gauss--Bonnet AdS gravity: action, Euler tensor, Lovelock property, and two AdS branches.
3. Taub--NUT--AdS with Gauss--Bonnet corrections: $U(1)$ fibration, metric function, radial primitives, asymptotics, and Einstein branch.
4. Thermodynamics:
   - temperature from surface gravity;
   - energy from the off-shell ADT path charge;
   - entropy from the horizon Noether potential and Iyer--Wald;
   - full-cohomogeneity first law and NUT pair;
   - static limit.
5. Discussion: full Lovelock, matter, and angular-momentum extensions.

# Conventions and Action

The bulk spacetime dimension is $d+1$, restricted to even values in the solutions considered, so $d$ is odd. The signature is Lorentzian with one negative direction. The action is

$$\begin{align}
I_{\rm EGB}[g] =\kappa\int_{\mathcal M}d^{d+1}x\sqrt{|g|} \left(R+\frac{d(d-1)}{\ell^2}+\alpha\mathcal G\right), \qquad \kappa=\frac1{16\pi G},
\end{align}$$

with

$$\begin{align}
\mathcal G =R_{\mu\nu\rho\sigma}R^{\mu\nu\rho\sigma} -4R_{\mu\nu}R^{\mu\nu}+R^2.
\end{align}$$

The equations are

$$\begin{align}
G_{\mu\nu}-\frac{d(d-1)}{2\ell^2}g_{\mu\nu}+\alpha H_{\mu\nu}=0, \qquad \nabla_\mu H^\mu{}_{\nu}=0.
\end{align}$$

The Gauss--Bonnet contribution is topological only for $d+1=4$. In the higher even dimensions emphasized here it contributes to the bulk equations.

# Taub--NUT Ansatz and Corrected Solution Data

The metric is

$$\begin{align}
ds^2=-f(r)(dt+2n\mathcal B)^2+\frac{dr^2}{f(r)}+(r^2+n^2)d\Sigma_{d-1}^2,
\end{align}$$

where the base is Einstein--Kähler, $d\mathcal B=\Omega$, and its curvature invariants are denoted $\bar R$ and $\bar{\mathcal G}$.

Define

$$\begin{align}
\widetilde\alpha=\alpha(d-1)(d-3),
\end{align}$$

$$\begin{align}
\mu(r)=\frac{d(d-1)}{\ell^2}W^{(0)}(r) +\bar R W^{(1)}(r) +\alpha\bar{\mathcal G}W^{(2)}(r),
\end{align}$$

and

$$\begin{align}
W^{(p)}(r)=\int^r\frac{(\rho^2+n^2)^{\frac{d+1}{2}-p}}{\rho^2}\,d\rho.
\end{align}$$

The exact $f_\pm$ is a two-branch square-root solution. Its denominator must contain $(d-2)r^2-3n^2$; this is also the factor appearing in the radicand and is the only dimensionally consistent reading of Eq. (3.2). The negative branch has a smooth $\alpha\to0$ Einstein limit; the positive branch does not.

The large-$r$ curvature is locally constant with effective radii

$$\begin{align}
(\ell_{\rm eff}^{\pm})^2 =\frac{\ell^2}{2} \left(1\pm\sqrt{1-\frac{4\alpha(d-2)(d-3)}{\ell^2}}\right).
\end{align}$$

Reality requires the discriminant to be nonnegative. At its zero, the two vacua degenerate and the standard linearized ADT construction loses its nontrivial linearized field equation; the paper explicitly excludes this charge-degenerate situation from the ordinary argument.

Although the Riemann tensor approaches constant curvature, the asymptotic boundary metric retains the fibration $dt+2n\mathcal B$. The spacetime is therefore not generically global AdS in the strict sense.

# Horizon and Temperature

The outer horizon is the largest real root $r_+$ of $f(r_+)=0$, which gives

$$\begin{align}
m=\mu(r_+).
\end{align}$$

For the horizon generator $\xi=-\partial_t$, the source uses

$$\begin{align}
T=\frac{(d-1)r_+}{4\pi(r_+^2+n^2)^{\frac{d-3}{2}}} \left| \frac{\mu'(r_+)}{2\widetilde\alpha\bar R+(d-1)^2(r_+^2+n^2)} \right|.
\end{align}$$

The absolute value fixes nonnegative temperature. Algebraic first-law checks below use a branch on which the unsigned factor has the compatible orientation; crossing a zero or changing horizon orientation requires a separate sign treatment.

# Off-Shell ADT Charge

For a Killing vector $\xi$, the path-integrated charge is

$$\begin{align}
\mathcal Q[\xi] =\int_\Sigma d\Sigma_{\mu\nu} \left[ \Delta K^{\mu\nu}(\xi) -2\xi^{[\mu}\int_0^1ds\,\Theta^{\nu]} \right].
\end{align}$$

The EGB surface term and Noether potential are

$$\begin{align}
\Theta^\mu =2P^{\mu\alpha\beta\gamma}\nabla_\gamma\delta g_{\alpha\beta} -\delta g_{\alpha\beta}\nabla_\gamma P^{\mu\alpha\beta\gamma},
\end{align}$$

$$\begin{align}
K^{\mu\nu} =2P^{\mu\nu\rho\sigma}\nabla_\rho\xi_\sigma -4\xi_\sigma\nabla_\rho P^{\mu\nu\rho\sigma},
\end{align}$$

where

$$\begin{align}
P^{\mu\nu}{}_{\alpha\beta} =\frac\kappa2 \left( \delta^{\mu\nu}_{\alpha\beta} +\alpha\delta^{\mu\nu\lambda\rho}_{\alpha\beta\tau\sigma} R^{\tau\sigma}{}_{\lambda\rho} \right).
\end{align}$$

For Lovelock gravity $\nabla P=0$, so the derivative-of-$P$ terms vanish. The paper chooses the reference metric by setting $m=0$ while retaining the same $n$, and the solution path is

$$\begin{align}
m\mapsto sm, \qquad 0\leq s\leq1.
\end{align}$$

The resulting asymptotic charge is

$$\begin{align}
\boxed{M=\mathcal Q^\infty[-\partial_t] =\frac{\Sigma_{d-1}}{16\pi G}m}.
\end{align}$$

This is verified only for the displayed path and reference. The paper does not establish path independence on a larger solution space in which $n$, $\ell$, $\alpha$, or base data also vary along the interpolation.

# Horizon Entropy and Iyer--Wald Comparison

At the bifurcation surface the term proportional to $\xi$ vanishes, leaving the Noether potential. The result is

$$\begin{align}
\boxed{ S=\frac{\Sigma_{d-1}(r_+^2+n^2)^{\frac{d-1}{2}}}{4G} \left(1+\frac{2\alpha\bar R}{r_+^2+n^2}\right)
}.
\end{align}$$

The Iyer--Wald expression is

$$\begin{align}
S_{\rm IW} =-2\pi\int_{\mathcal H}\sqrt{|h|}\,d^{d-1}x\, P^{\mu\nu\alpha\beta} \hat\epsilon_{\mu\nu}\hat\epsilon_{\alpha\beta}, \qquad \hat\epsilon_{\mu\nu}\hat\epsilon^{\mu\nu}=-2.
\end{align}$$

At $f(r_+)=0$,

$$\begin{align}
P^{trtr}\big|_{r_+} =\frac\kappa2+\alpha\kappa\frac{\bar R}{r_+^2+n^2}.
\end{align}$$

The binormal contraction supplies the factor that turns $8\pi P^{trtr}$ times the base area into the boxed entropy. This agreement is local to the bifurcation surface and the chosen Lagrangian representative; it does not settle boundary or topological ambiguities for a different action representative.

# Full-Cohomogeneity First Law

Keeping $r_+$ and $n$ independent, the proposed law is

$$\begin{align}
\delta M=T\delta S+\psi\delta N.
\end{align}$$

Assuming $\psi$ depends only on $n$, integrability gives

$$\begin{align}
\psi=\frac c n,
\end{align}$$

and

$$\begin{align}
N=\frac{\Sigma_{d-1}n^3}{16\pi cG} \left[ \frac{d(d-1)}{\ell^2}W^{(1)}(r_+) +\bar R W^{(2)}(r_+) +\alpha\bar{\mathcal G}W^{(3)}(r_+) \right].
\end{align}$$

The constant $c\neq0$ only fixes the normalization split between $\psi$ and $N$; the one-form $\psi\,\delta N$ is invariant under the corresponding constant rescaling.

The mechanism is clearer than the final formula. Differentiating the radial primitives shifts their index:

$$\begin{align}
\partial_rW^{(p+1)} =\frac1{r^2+n^2}\partial_rW^{(p)}.
\end{align}$$

Consequently the $r_+$ derivative of $N$ supplies exactly the part of $\partial_{r_+}M$ not accounted for by $T\partial_{r_+}S$. The $n$ derivative closes because the same shifted $W^{(p+1)}$ combination appears in $N$.

This thermodynamic completion is not yet a derivation of $N$ as an independent covariant phase-space surface charge associated with a specified asymptotic symmetry. In the paper it is an integrability-motivated thermodynamic variable.

# Static Limit

At $n\to0$ the fibration disappears, the NUT term drops out, and

$$\begin{align}
\mu(r)=\frac{(d-1)r^d}{\ell^2} +\frac{\bar R r^{d-2}}{d-2} +\alpha\frac{\bar{\mathcal G}r^{d-4}}{d-4}.
\end{align}$$

The entropy and mass become

$$\begin{align}
S=\frac{\Sigma_{d-1}r_+^{d-1}}{4G} \left(1+\frac{2\alpha\bar R}{r_+^2}\right), \qquad M=\frac{\Sigma_{d-1}}{16\pi G}\mu(r_+),
\end{align}$$

and satisfy $\delta M=T\delta S$ with fixed couplings and base geometry. The $d=5$ mass is compared by the source to a holographic-renormalization result for the six-dimensional topological Boulware--Deser black hole.

# Translation to the Vault's CPS Language

The useful charge variation is represented by

$$\begin{align}
\delta H_\xi \sim \int_\Sigma \left(\delta K_\xi-i_\xi\Theta\right),
\end{align}$$

and the finite ADT quantity integrates this one-form along a selected path in solution space. For sewing and regional charges, the following data remain indispensable:

1. the exact action representative, including boundary/topological terms;
2. the phase space and allowed variations at the asymptotic boundary and Misner string;
3. the reference solution and interpolation path;
4. the surface and its homology class;
5. finiteness, conservation, and integrability of the charge one-form.

The paper fixes items 3--4 for its mass computation and verifies the horizon entropy locally. It does not formulate the Misner string as a regional boundary carrying an independently derived symplectic flux or edge charge. The additional NUT pair is therefore a useful thermodynamic completion, not yet a completed CPS boundary-sector construction.

# Source Errors to Correct Before Reuse

1. **Eq. (3.2):** replace $(d-2)^2-3n^2$ by $(d-2)r^2-3n^2$.
2. **Eq. (3.10):** replace $(d-2)r^2-3n^3$ by $(d-2)r^2-3n^2$.

Both corrections are forced by dimensions and by the repeated factor elsewhere in the same displayed solution. No other formula in this note silently repairs the source.

# Verification Log

## Checked

- **Hypergeometric primitive:** for $d=5$ and $p=0,1,2,3$, Mathematica differentiated the displayed closed form of $W^{(p)}$ and returned zero residual against $(r^2+n^2)^{(d+1)/2-p}/r^2$.
- **Iyer--Wald coefficient:** substituting $\kappa=(16\pi G)^{-1}$ into the horizon value of $P^{trtr}$ reproduces exactly the factor $(4G)^{-1}(1+2\alpha\bar R/(r_+^2+n^2))$.
- **Full first law in six bulk dimensions:** using the explicit $d=5$ primitives and treating $r_+$ and $n$ as independent, Mathematica returned zero for both coefficients of $\delta M-T\delta S-\psi\delta N$.
- **Full first law in eight bulk dimensions:** the same check at $d=7$ returned zero for both independent coefficients.
- **Dimensional audit:** the two denominator factors identified above mix dimensionless and lengthful terms, or length-squared and length-cubed terms, as printed. Their corrected common factor is dimensionally homogeneous.
- **Visual source check:** rendered pages 4--11 confirm the action, exact printed typos, ADT expressions, mass, entropy, first law, NUT pair, and static limit.

## Assumptions

- First-law checks use the temperature sign compatible with the chosen horizon orientation; the source's absolute value must be treated piecewise.
- The integration constants in $W^{(p)}$ are those fixed by the paper's displayed primitive.
- $\ell$, $\alpha$, $\bar R$, $\bar{\mathcal G}$, and the base volume remain fixed.
- The negative branch and a nondegenerate effective AdS vacuum are used.

## Source-Derived

- The exact ADT component calculation leading to $M=\Sigma_{d-1}m/(16\pi G)$.
- The Taub--NUT EGB solution and its asymptotic expansion apart from the two locally corrected typographical factors.
- The global claims concerning retained Misner strings and comparison with earlier holographic renormalization.

## Not Independently Verified

- The full metric field equations for arbitrary Einstein--Kähler bases.
- Radial independence or path independence of the quasi-local ADT charge beyond the chosen calculation.
- A well-posed Lorentzian variational principle with the Misner string retained.
- Global causal claims, allowed base topologies, and regularity of every member of the family.
- The static holographic-renormalization comparison and the conjectured Lovelock extension.
