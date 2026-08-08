---
paper id: 2608.06277v1
title: Holographic entanglement entropy with conformal boundary conditions
authors:
  - Elena Cáceres
  - Hare Krishna
  - Harita Palani Balaji
  - Vaishnavi Patil
publication date: 2026-08-06T17:05
abstract: |-
  The paper studies entanglement entropy in three-dimensional AdS gravity with conformal boundary conditions that fix the boundary conformal class and the trace of its extrinsic curvature while leaving the Weyl mode dynamical. It adapts Lewkowycz--Maldacena--Dong replicas, argues that the Weyl mode supplies no additional classical entropy term, and retains the Bekenstein--Hawking and Ryu--Takayanagi area laws. Explicit global AdS and BTZ examples are compared with a distinct no-insertion state of a conjectured timelike-Liouville and dressed T-bar-T boundary theory.
comments: "47 pages"
url: https://arxiv.org/abs/2608.06277v1
summary: "A finite-wall AdS3 entropy analysis that separates the unchanged classical area functional from K-dependent anchoring and from a distinct boundary-theory c_eff mechanism, with several repairable source-level normalization errors."
tags: []
---

Back to [[2026_08_08_overview]].

# Why this paper is high priority

The paper sits directly on the vault's AdS\(_3\), finite-boundary, Brown--Henneaux, entropy, and CPS interests. Its cleanest result is:

\[
\boxed{
\text{CBC changes the physical outer-wall variational problem,
but not the local replica-tip area term.}}
\]

At leading classical order,

\[
S_{\rm full}=\frac{A_H}{4G_N},
\qquad
S_A=\frac{A_{\rm min}}{4G_N}.
\]

The dynamical Weyl mode changes the wall location, conformal thermal variables, and interval anchoring. It does not add a new local term to the entropy functional in the calculation performed here.

Three layers must remain distinct:

1. the **CBC variational polarization** at the finite wall;
2. the **bulk classical replica/RT calculation**;
3. the **timelike-Liouville boundary calculation** for a no-insertion state that is not the state dual to global AdS.

The paper does not compute the CBC renormalized presymplectic form, surface-charge algebra, or a Brown--Henneaux derivation of \(c_{\rm eff}\).

# How to read this long paper

1. Read Section 2 for the boundary data and thermodynamic variables \((K,\widetilde\beta,\widetilde\Omega)\).
2. Sections 3--4 contain the actual entropy argument: first the full-boundary conical calculation, then the subregion Dong/RT construction.
3. Section 5 is an application of RT to finite-wall BTZ geodesics; it does not independently prove RT.
4. Section 6 is a separate boundary-theory saddle. Its \(c_{\rm eff}\) logarithm concerns the no-insertion sector, not global AdS.
5. Appendices A--B are algebraic conversions of the BTZ geodesics; Appendix C attempts a fiducial-frame covariance check and misses regulator-boundary terms.

# Source structure map

- **Section 1:** summary of the Bekenstein--Hawking, RT, finite-\(K\), and boundary-theory results; early warning about the state mismatch.
- **Section 2:**
  - conformal boundary action and fixed data;
  - round-sphere filling and Brown--York tensor;
  - rotating-torus partition function and conformal potentials.
- **Section 3:**
  - Lewkowycz--Maldacena replica derivative with CBC;
  - nonrotating BTZ replica;
  - conformal temperature;
  - rotating BTZ replica.
- **Section 4:**
  - review of Dong's quotient/cosmic-brane argument;
  - explicit fixed-\(K\) AdS-Rindler replica saddle;
  - local tubular area term;
  - global-AdS embedding map and direct geodesic calculation;
  - CHM cross-check.
- **Section 5:**
  - nonrotating BTZ interval;
  - massless BTZ limit;
  - rotating BTZ interval and high-temperature/large-interval limit.
- **Section 6:**
  - CHM cylinder and regulator;
  - timelike-Liouville plus dressed \(T\bar T\) action;
  - first-order homogeneous saddle;
  - all-orders Burgers flow and Liouville saddle;
  - on-shell partition function and replica derivative.
- **Section 7:** interpretation and open problems.
- **Appendix A:** nonrotating BTZ conversions to \((K,\widetilde\beta)\).
- **Appendix B:** rotating BTZ-to-Poincaré map and conversion to \((K,\widetilde\beta,\widetilde\Omega)\).
- **Appendix C:** change of CHM fiducial frame and anomaly cancellation.

# Boundary data and conventions

The Euclidean action is

\[
I
=-\frac1{16\pi G_N}
\int_{\mathcal M}d^3x\sqrt g\,(R-2\Lambda)
-\frac{\alpha}{8\pi G_N}
\int_{\partial\mathcal M}d^2x\sqrt h\,K.
\tag{2.1}
\]

Dirichlet gravity has \(\alpha=1\). The conformal boundary condition in \(d\) boundary dimensions fixes

\[
\delta(h^{-1/d}h_{ab})=0,
\qquad
\delta K=0,
\qquad
\alpha=\frac1d.
\]

For AdS\(_3\),

\[
\delta(h^{-1/2}h_{ab})=0,
\qquad
\delta K=0,
\qquad
\alpha=\frac12.
\tag{2.3}
\]

Equivalently,

\[
h_{ab}=e^{2\Phi}\widetilde h_{ab},
\qquad
\delta\widetilde h_{ab}=0,
\]

while the Weyl mode \(\Phi\) is dynamical. The paper describes \(K\) as conjugate to the boundary volume/determinant direction.

Useful dimensionless variables are

\[
k=K\ell,
\qquad
\Delta=\sqrt{k^2-4},
\qquad
k>2
\]

for the exterior-wall branch. A branch-safe parametrization is

\[
k=2\cosh\theta,
\qquad
\Delta=2\sinh\theta,
\qquad
\frac{k-\Delta}{2}=e^{-\theta}.
\]

The two central-charge-like quantities are

\[
c_m=\frac{3\ell}{2G_N},
\]

the standard Brown--Henneaux number imported for the matter CFT, and

\[
c_{\rm eff}
=c_m\frac{k-\Delta}{2}
=\frac{3\ell}{4G_N}(k-\Delta),
\tag{1.3 data}
\]

the effective central charge of the nonunitary combined boundary theory. The latter is not the anomaly coefficient and is not derived as a central extension of a CBC charge algebra.

# The conformal torus and thermal variables

The torus partition function is written as

\[
Z(\widetilde\beta,\widetilde\Omega)
=\operatorname{Tr}
e^{-\widetilde\beta(\widetilde H-\widetilde\Omega J)}.
\tag{2.10}
\]

At a finite rotating wall,

\[
\widetilde\beta
=\beta\frac{\sqrt{f(r_c)}}{r_c},
\]

\[
\widetilde\Omega
=\frac{r_c}{\sqrt{f(r_c)}}
\left(\Omega-\frac{r_-r_+}{\ell r_c^2}\right).
\tag{2.15}
\]

They measure the complex structure of the boundary torus rather than its overall Weyl scale. Eliminating bulk parameters gives

\[
\log Z
=\frac{\pi^2\ell(k-\Delta)}
{4G\widetilde\beta(1-\widetilde\Omega^2)},
\tag{2.19}
\]

and

\[
S
=(1-\widetilde\beta\partial_{\widetilde\beta})\log Z
=\frac{\pi^2\ell(k-\Delta)}
{2G\widetilde\beta(1-\widetilde\Omega^2)}
=\frac{2\pi r_+}{4G}.
\tag{2.20}
\]

# Full-boundary replicas: why the tip is unchanged

For the normalized density matrix,

\[
S
=-n\partial_n
\left[\log Z(n)-n\log Z(1)\right]_{n=1}.
\tag{3.3}
\]

For a \(U(1)\)-invariant saddle,

\[
\log Z[n]=n[\log Z[n]]_{2\pi},
\]

so

\[
S=-n^2\partial_n[\log Z(n)]_{2\pi}\big|_{n=1}.
\tag{3.5}
\]

The physical outer wall obeys CBC. Its boundary variation vanishes because the conformal metric and \(K\) are held fixed. The conical tip is an artificial excision boundary rather than a physical wall carrying the CBC boundary action. Its uncancelled Einstein variation therefore produces the same local area term as in the Dirichlet derivation:

\[
S=\frac{A_H}{4G_N}.
\tag{3.11}
\]

For nonrotating BTZ,

\[
f_n(r)=\frac{r^2-r_H^2/n^2}{\ell^2},
\]

and the smooth replica action reduces to

\[
I_n=-\frac{\pi r_H}{4Gn}.
\tag{3.21}
\]

Thus

\[
n\partial_n(I_n-nI_1)\big|_{n=1}
=\frac{2\pi r_H}{4G}.
\]

For rotating BTZ the smooth family scales both horizons,

\[
r_\pm\longrightarrow\frac{r_\pm}{n},
\]

and again

\[
I_n=-\frac{\pi r_+}{4Gn},
\qquad
S=\frac{2\pi r_+}{4G}.
\tag{3.37}
\]

# Dong's argument with a finite conformal wall

The quotient saddle \(\widehat B_n=B_n/\mathbb Z_n\) has a codimension-two fixed locus \(C_n\). For the static ansatz

\[
ds^2=A(\rho)d\tau_E^2
+\frac{d\rho^2}{B(\rho)}
+\rho^2du^2,
\tag{4.9}
\]

the independent Einstein combinations are

\[
\frac{E_{\tau\tau}}A-BE_{\rho\rho}
=\frac{AB'-BA'}{2\rho A},
\]

\[
-\frac{2\ell^2A}{\rho}E_{uu}
=\ell^2(AB'+BA')-4\rho A.
\tag{4.10}
\]

They imply

\[
A=\alpha^2B,
\qquad
B'=\frac{2\rho}{\ell^2},
\qquad
B(\rho)=\frac{\rho^2}{\ell^2}-\mu.
\tag{4.11}
\]

After normalizing \(\alpha=1\),

\[
ds_n^2
=f_n(\rho)d\tau_E^2
+\frac{d\rho^2}{f_n(\rho)}
+\rho^2du^2,
\qquad
f_n(\rho)=\frac{\rho^2-\rho_h(n)^2}{\ell^2}.
\tag{4.12}
\]

Regularity fixes

\[
\beta_n=\frac{2\pi\ell^2}{\rho_h(n)}.
\]

The wall data are

\[
\widetilde\beta_n
=\beta_n\frac{\sqrt{f_n(\rho_c)}}{\rho_c},
\]

\[
K(n)
=\frac{2\rho_c(n)^2-\rho_h(n)^2}
{\ell\rho_c(n)\sqrt{\rho_c(n)^2-\rho_h(n)^2}}.
\tag{4.15--4.16}
\]

At fixed \(K\) and \(\widetilde\beta_n=2\pi n\),

\[
\rho_h(n)=\frac{\ell}{2n}(k-\Delta),
\qquad
\rho_c(n)^2
=\frac{\ell^2}{2n^2}
\frac{k-\Delta}{\Delta}.
\tag{4.17}
\]

Since \(R=-6/\ell^2\) and \(\sqrt g=\rho\),

\[
I_{\rm bulk}^{(n)}
=\frac{\beta_nL_u}{8\pi G\ell^2}
(\rho_c^2-\rho_h^2),
\tag{4.18}
\]

\[
I_{\rm wall}^{(n)}
=-\frac{\beta_nL_u}{16\pi G\ell^2}
(2\rho_c^2-\rho_h^2).
\tag{4.19}
\]

All explicit wall-radius dependence cancels:

\[
I_n=-\frac{L_u\rho_h(n)}{8G}.
\tag{4.20}
\]

The replica derivative yields

\[
S_A
=\frac{\rho_h(1)L_u}{4G}
=\frac{A_h(1)}{4G}.
\tag{4.22}
\]

The local tube has

\[
ds^2=dR^2+\frac{R^2}{n^2}d\tau^2
+\rho_h(n)^2du^2+\cdots.
\tag{4.23}
\]

The singular metric-variation integrand is \(2/(nR)\), while \(\sqrt\gamma=(R/n)\rho_h\). Therefore

\[
\partial_nI_{\rm bulk}[\widehat B_n]\big|_{\partial T_\epsilon}
=\frac{A_h(n)}{4Gn^2}.
\tag{4.25}
\]

This is the correct refined-Rényi factor.

# Global AdS interval and the finite-K wall

The global time-symmetric slice is

\[
ds^2
=\frac{d\varrho^2}{1+\varrho^2/\ell^2}
+\varrho^2d\phi^2.
\tag{4.40}
\]

For a constant-\(\varrho_c\) wall,

\[
K
=\frac{\ell^2+2\varrho_c^2}
{\ell\varrho_c\sqrt{\ell^2+\varrho_c^2}},
\qquad
\frac{\varrho_c^2}{\ell^2}
=\frac{k-\Delta}{2\Delta}.
\tag{4.41}
\]

For the interval \(A=[-\phi_0,\phi_0]\), the hyperbolic distance gives

\[
L_{\rm geo}
=2\ell\operatorname{arcsinh}
\left[
\frac{\varrho_c}{\ell}\sin\phi_0
\right]
\]

and hence

\[
\boxed{
S_A^{\rm global}
=\frac{\ell}{2G}
\operatorname{arcsinh}
\left[
\sqrt{\frac{k-\Delta}{2\Delta}}
\sin\phi_0
\right].}
\tag{4.48}
\]

The coefficient is \(c_m/3=\ell/(2G)\). The Weyl mode enters through \(\varrho_c(K)\), not through an additive entropy density.

The embedding-space map from the adapted hyperbolic black hole to the global geodesic reproduces the same length. This is a geometric cross-check of the area law. It is not a second independent replica-action derivation for the global interval, because the paper does not redo the \(n\)-derivative while tracking the \(n\)-dependent interval range \(u_{\max}^{(n)}\propto n\).

# Finite-wall BTZ intervals

For nonrotating BTZ,

\[
S_A
=\frac{\ell}{2G}
\operatorname{arcsinh}
\left[
\sqrt{\frac{k+\Delta}{2\Delta}}
\sinh\left(
\frac{\pi(k-\Delta)L_A}{2\widetilde\beta}
\right)
\right].
\tag{5.14}
\]

When \(L_A/\widetilde\beta\gg1\),

\[
S_A
\sim
\frac{\pi c_{\rm eff}}{3\widetilde\beta}L_A
-\frac{\ell}{4G}
\log\left(
1-\frac{4G^2c_{\rm eff}^2}{9\ell^2}
\right).
\]

For rotating BTZ,

\[
\begin{aligned}
S_A^{\rm rot}
=\frac{\ell}{4G}\operatorname{arccosh}\bigg[&
\frac{k+\Delta}{2\Delta}
\cosh\frac{\pi(k-\Delta)L_A}
{\widetilde\beta(1-\widetilde\Omega^2)}\\
&-\frac{k-\Delta}{2\Delta}
\cosh\frac{2\pi\widetilde\Omega L_A}
{\widetilde\beta(1-\widetilde\Omega^2)}
\bigg].
\end{aligned}
\tag{5.23}
\]

On the nonextremal branch, the first exponential dominates and gives the same \(c_{\rm eff}\) entropy density with the factor \((1-\widetilde\Omega^2)^{-1}\). In boundary variables the black-hole inequality is stronger than \(|\widetilde\Omega|<1\):

\[
2|\widetilde\Omega|<k-\Delta.
\]

# The boundary no-insertion state

The combined boundary theory has

\[
c_{\rm tot}=c_m+c_{\rm Liouville}=0,
\]

but is nonunitary with

\[
h_{\min}=\bar h_{\min}<0,
\qquad
c_{\rm eff}=c_{\rm tot}-24h_{\min}=-24h_{\min}.
\]

The terminology in Section 6 is:

- **no-insertion/identity state:** zero-energy cylinder sector;
- **ground state:** true minimum-energy state with \(h_{\min}<0\).

The state dual to global AdS is the latter, not the no-insertion state. Its Rényi entropy would require a deformed \(2n\)-point function of the ground-state insertion, which the paper leaves open.

The CHM map sends the interval to a flat hyperbolic cylinder with

\[
\widetilde\beta_n=2\pi n,
\qquad
u_{\max}simeq
\log\frac{2\sin\phi_0}{\delta\phi}.
\tag{6.13--6.16}
\]

The boundary action is timelike Liouville plus a dressed deformation,

\[
\begin{aligned}
S=S_m+\int\sqrt{\widetilde g}\bigg[
&\mu_L e^{2\Phi}
+\lambda_{T\bar T}
\widetilde T\widetilde{\bar T}e^{-2\Phi}\\
&-\frac1{4\pi b^2}(\widetilde\nabla\Phi)^2
\bigg],
\end{aligned}
\tag{6.20}
\]

where

\[
b^2=\frac6{c_m},
\qquad
\lambda_{T\bar T}=16\pi G\ell,
\qquad
\mu_L=\frac{k-2}{16\pi G\ell}.
\]

At first order, the homogeneous saddle balances

\[
\mu_Le^{2\Phi_*}
=\lambda_{T\bar T}
\widetilde T\widetilde{\bar T}
e^{-2\Phi_*}.
\tag{6.28}
\]

The all-orders homogeneous \(T\bar T\) flow is encoded by

\[
\partial_\alpha W
=\frac14W\partial_{\widetilde\beta}W,
\qquad
W(\widetilde\beta,0)
=\frac{\pi c_m}{6\widetilde\beta},
\tag{6.33--6.34}
\]

with solution

\[
W
=\frac{\pi c_m}{3\widetilde\beta}
\frac1{1+sqrt{1+\pi c_m\alpha/(6\widetilde\beta^2)}}.
\tag{6.35}
\]

Let

\[
Y=\frac{\ell^2e^{-2\Phi}}{2n^2}.
\]

The homogeneous Liouville equation reduces to

\[
\frac{k}{2}
=\frac{1+Y_*}{\sqrt{1+2Y_*}},
\tag{6.39}
\]

whose physical root is

\[
Y_*=\frac{\Delta}{k-\Delta}>0.
\]

Thus

\[
e^{2\Phi_*(n)}
=\frac{\ell^2}{2n^2}
\frac{k-\Delta}{\Delta}.
\tag{6.42}
\]

At this saddle the flowed matter free energy and Liouville potential partially cancel:

\[
\log Z_{\rm hom}(n)
=\frac{c_m u_{\max}}{12n}
\frac{k-\Delta}{2}.
\tag{6.46}
\]

After the replica derivative and the two-endpoint factor,

\[
\boxed{
S_{\rm EE}^{\rm no\ insertion}
=\frac{c_{\rm eff}}3
\log\frac{2R\sin\phi_0}{\epsilon}.}
\tag{6.49}
\]

This \(c_{\rm eff}\) is the exact remnant of the homogeneous matter/Liouville saddle. It is not obtained by simply replacing \(c_m\) in the global-AdS geodesic.

# State and regulator comparison

| Feature | Global AdS bulk state | Boundary no-insertion state |
|---|---|---|
| Prefactor | \(c_m/3\) | \(c_{\rm eff}/3\) |
| Entropy | finite \(\operatorname{arcsinh}\) at fixed \(K\) | logarithmic cylinder cutoff |
| Regulator | wall radius fixed by \(K\) | \(\epsilon=R\delta\phi\) |
| Boundary state | negative-energy lowest-weight insertion | identity/no insertion |
| Proven equality? | no | no |

The two answers should not be compared term by term. The missing calculation is the deformed ground-state \(2n\)-point function.

# AdS3, Brown--Henneaux, and CPS translation

The paper imports

\[
c_m=\frac{3\ell}{2G}
\]

as the standard Brown--Henneaux number. The combined boundary anomaly is nevertheless \(c_{\rm tot}=0\), while \(c_{\rm eff}\) is a nonunitary spectral quantity.

From a CPS viewpoint, the half-GHY term changes the boundary presymplectic potential and the allowed variations. Fixing \([\widetilde h_{ab}]\) and \(K\) while allowing \(\Phi\) to fluctuate means the Weyl mode belongs to the boundary variational system even though it contributes no extra classical replica-tip entropy.

The paper does not calculate:

- the renormalized CBC symplectic form or flux;
- Hamiltonian integrability at the finite wall;
- the surface-charge algebra or its central term;
- edge modes or degeneracy directions;
- a charge-algebra derivation of \(c_{\rm eff}\).

The safe claim is therefore:

> The classical replica fixed point retains the Einstein area term under CBC. The paper imports \(c_m\) and derives a distinct boundary spectral \(c_{\rm eff}\), but does not derive either from a new CBC charge algebra.

# Concrete project extensions

1. Derive the CBC presymplectic potential from the half-GHY action and identify the canonical pair involving \(K\) and the Weyl/volume mode.
2. Compute finite-wall symplectic flux and the integrability condition for Brown--York generators.
3. Reproduce the global-AdS ground-state Rényi problem with the required insertions; this is the decisive comparison with Section 6.
4. Add the regulator-boundary completion to the timelike-Liouville/Wess--Zumino action before using Appendix C as a frame-independence theorem.
5. Extend the local replica-tube calculation to null CBC or corners, where joint terms may contribute.

# Verification log

## Checked

- **xAct/xCoba — Section 4 radial Einstein equations.** For
  \[
  ds^2=A(\rho)d\tau^2+B(\rho)^{-1}d\rho^2+\rho^2du^2,
  \]
  both combinations in (4.10) reproduced exactly. Substituting \(A=\alpha^2(\rho^2/\ell^2-\mu)\) and \(B=\rho^2/\ell^2-\mu\) set every component of \(R_{\mu\nu}+2g_{\mu\nu}/\ell^2\) to zero.
- **Mathematica — fixed-\(K\) replica geometry.** With \(k>2\), the expressions (4.17) satisfy the wall \(K\) equation and \(\widetilde\beta_n=2\pi n\). Hyperbolic parametrization \(k=2\cosh\theta\) removed all square-root branch ambiguity.
- **Mathematica — action cancellation and entropy.** Equations (4.18)--(4.22) reduce to \(I_n=-L_u\rho_h/(8G)\) with zero residual; the replica derivative gives \(A_h/(4G)\).
- **Mathematica — global-AdS wall and geodesic.** The inversion \(\varrho_c^2/\ell^2=(k-\Delta)/(2\Delta)\), the hyperbolic distance identity, and the direct geodesic entropy all gave zero residuals. The full embedding-coordinate map satisfies the \(H^3\) hyperboloid constraint and induces exactly the metric \(f d\tau^2+f^{-1}d\rho^2+\rho^2du^2\).
- **Mathematica — thermodynamic and BTZ replica derivatives.** \((1-\widetilde\beta\partial_{\widetilde\beta})\log Z=2\log Z\) for \(\log Z\propto\widetilde\beta^{-1}\), and \(n\partial_n(I_n-nI_1)=2a\) for \(I_n=-a/n\), both simplified to zero residuals.
- **Mathematica — Section 6 CHM and homogeneous saddle.** The full CHM metric pullback, cutoff asymptotic, thermal \(T\bar T\) normalization, first-order saddle, Burgers equation, derivative (6.36), physical root (6.41), near-\(k=2\) series, on-shell cancellation (6.44)--(6.46), and final replica derivative were independently reproduced. The commented author doubt about (6.36) is resolved in favor of the printed equation.
- **Mathematica — Appendices A--B.** The nonrotating root, redshift conversion, rotating rational coefficients, and the corrected \(c_{\rm eff}\) rewrite were reproduced exactly.

## Blocked

- **All-orders boundary flow.** The position-dependent-coupling/Weyl argument is imported from reference [19]. The paper checks the homogeneous algebra after assuming it; it does not rederive exact marginality or factorization for the full timelike-Liouville quantum theory.
- **Global interval as an independent replica action.** Section 4.2 imports the area law and fixes the \(n=1\) brane length. It does not differentiate a global replica action while tracking \(u_{\max}^{(n)}\). The result is a verified area/geodesic cross-check, not a second replica proof.
- **Regulated CHM frame invariance.** Appendix C discards an integration-by-parts term. On \(S^1\times[0,u_{\max}]\), the bulk identity leaves
  \[
  2\int_{\partial M}\sqrt\gamma
  (\Phi-\sigma)n\cdot\nabla\sigma,
  \]
  together with possible boundary-anomaly and composite-operator renormalization terms. No boundary completion or cancellation is shown.
- **Quantum corrections.** The calculation is classical/semiclassical; FLM, generalized entropy, QES, Weyl-mode determinants, and graviton one-loop terms are not included.
- **CBC charge structure.** Without a renormalized symplectic form, no charge integrability or central-extension claim can be verified.
- **True ground-state entropy.** The needed deformed \(2n\)-point function is not computed.

## Failed

- **Sphere unit normal.** Section 2 states \(n_\mu dx^\mu=dr\) for
  \(ds^2=dr^2/(1+r^2)+r^2d\Omega^2\). Its squared norm is \(1+r^2\), not one. The unit outward covector is
  \[
  n_\mu dx^\mu=\frac{dr}{\sqrt{1+r^2}}.
  \]
  The printed \(K=2\sqrt{1+1/r_c^2}\) uses the corrected unit normal.
- **Sphere on-shell intermediate formula.** The displayed radial evaluation has \(+Kr_c^2\) inside \(1/(2G)(\cdots)\). The half-GHY coefficient gives \(+\tfrac12Kr_c^2\). Mathematica shows the printed intermediate expression differs from the claimed final result by \(r_c\sqrt{1+r_c^2}/(2G)\). With \(\tfrac12Kr_c^2\), the residual vanishes and the final
  \[
  \log Z[S^2]
  =\frac{\ell}{4G}\log\frac{k+2}{k-2}
  \]
  is restored.
- **Dong factor in (4.6).** The source writes \(\partial_n[(n-1)S_n/n]=A(C_n)/(4G)\). With its own local cone, \(\sqrt\gamma\propto R/n\) and the integrand is \(2/(nR)\), so the correct result is
  \[
  \partial_n\left[\frac{n-1}{n}S_n\right]
  =\frac{A(C_n)}{4Gn^2}.
  \]
  Equation (4.25) and the refined Rényi definition use the corrected factor.
- **Large-wall scaling sentence.** Section 4.3 claims \(K\ell-2\propto1/r_c\). For the constant-radius global wall,
  \[
  K\ell
  =2+\frac{\ell^4}{4r_c^4}
  -\frac{\ell^6}{4r_c^6}+\cdots.
  \]
- **Dimensionally inconsistent \(c_{\rm eff}\).** Rotating Section 5 and Appendices A--B repeatedly print \(3\ell(K-\Delta)/(4G)\). Since \(K\) has inverse-length dimension and \(\Delta\) is dimensionless, the correct formula is
  \[
  c_{\rm eff}=\frac{3\ell}{4G}(K\ell-\Delta)
  =\frac{3\ell}{4G}(k-\Delta).
  \]
  The associated logarithm needs \(1-4G^2c_{\rm eff}^2/(9\ell^2)\).
- **Wrong limit label.** Appendices A--B call \(L_A/\widetilde\beta\gg1\) a large-\(\widetilde\beta\) or \(\widetilde\beta\to\infty\) expansion. At fixed \(L_A\) it is the opposite: \(\widetilde\beta\to0\), i.e. high conformal temperature. Alternatively it is a large-interval limit at fixed \(\widetilde\beta\).
- **Notation/cross-reference defects.** \(\Delta_K\) is used without a separate definition and means \(\Delta\); `chm:cyl-burgers` and `chm:EOM` are duplicated labels; an Appendix A intermediate redshift equality drops \(1/\ell\); Section 6 switches from \(e^{-2\xi\Phi}\) to \(e^{-2\Phi}\) without explaining the semiclassical choice \(\xi=1\).
