---
paper id: 2607.18395v1
title: Hawking emission of massive vector fields by Kerr black holes
authors:
  - Marco Calzà
  - Miguel Faria
  - Yuber F. Perez-Gonzalez
  - João G. Rosa
publication date: 2026-07-20T18:00
abstract: |-
  The paper computes source-reported Kerr greybody factors and Hawking spectra for all three polarizations of a massive Proca field using FKKS/Dolan separation. It follows the nonlinear angular eigenvalue branches, imposes ingoing-horizon and propagating-infinity conditions, constructs a stress-tensor flux ratio, and integrates the spectra into mass and spin loss functions. The longitudinal mode approaches scalar-like emission only in a correlated small-mass limit, while the two transverse branches approach Maxwell. This is a useful Proca scattering benchmark, but several source equations and all numerical conclusions remain unverified.
comments: ""
url: https://arxiv.org/abs/2607.18395v1
summary: "A three-polarization Kerr--Proca greybody benchmark with useful limiting logic and unresolved radial, flux, and numerical errors."
tags: []
---

Back to [[2026_07_22_overview]].

Reason codes: `T2-model`, `T2-spectral`, `T2-dS-BH-holography`.

## Massive vector constraint and FKKS separation

The field is a minimally coupled Proca test field on asymptotically flat Kerr,

\[
\nabla_bF^{ab}+\mu^2A^a=0.
\]

For \(\mu\ne0\), taking the divergence implies

\[
\nabla_aA^a=0.
\]

This is a constraint, not a gauge choice, so the field has three physical polarizations. The paper uses signature \((-+++)\), \(G=\hbar=c=1\), Boyer--Lindquist coordinates, and \(a_\star=a/M<1\).

The principal-tensor ansatz is

\[
A^a=B^{ab}\nabla_bZ,
\qquad
B^{ab}(g_{bc}+i\nu h_{bc})=\delta^a{}_c,
\]

\[
Z=R(r)S(\theta)e^{i(m\phi-\omega t)}.
\]

The separation parameter \(\nu\) is nonlinear and branch-dependent. Define

\[
K=(r^2+a^2)\omega-am,
\qquad
p^2=\omega^2-\mu^2,
\]

\[
q_r=1+\nu^2r^2,
\qquad
q_\theta=1-\nu^2a^2\cos^2\theta,
\]

\[
\sigma=\omega+a\nu^2(m-a\omega),
\]

\[
\Lambda=\frac{\mu^2}{\nu^2}-\frac{\sigma}{\nu}
+2a\omega m-a^2\omega^2.
\]

The separated radial equation is

\[
\frac{d}{dr}\!\left(\Delta R'\right)
+\left[\frac{K^2}{\Delta}-\Lambda+2a\omega m
-a^2\omega^2-\mu^2r^2\right]R
=\frac{2r\nu^2}{q_r}
\left[\Delta R'+r\frac{\sigma}{\nu}R\right],
\]

while the angular equation is

\[
\frac{1}{\sin\theta}\partial_\theta(\sin\theta S')
+\left[\Lambda-m^2\csc^2\theta
+a^2p^2\cos^2\theta\right]S
=\frac{2a^2\nu^2\cos\theta}{q_\theta}
\left[\sin\theta S'+\frac{\sigma}{\nu}
\cos\theta S\right].
\]

Bulk separation is branchwise. It does not by itself prove that a different boundary, such as a finite wall, diagonalizes the same polarization branches.

## Angular eigenvalue branches

Expanding in fixed-\(m\), fixed-parity spherical harmonics gives

\[
\mathscr M(\nu)b=0,
\qquad
\det\mathscr M(\nu)=0.
\]

The paper labels the branches as

| Paper label | Parity/type | Lowest \(l\) |
|---|---|---|
| \(S=-1\) | even vector | \(l=1\) |
| \(S=0\) | odd vector | \(l=1\) |
| \(S=+1\) | even scalar/longitudinal | \(l=0\) |

These are branch labels, not simple helicities. Identification requires continuity in \((a,\mu,\omega)\) and singular limiting data:

- the two vector branches reduce to spin-one spheroidal/Maxwell data as \(\mu\to0\);
- the \(S=0\) eigenvalue \(\nu\) diverges in the Schwarzschild limit, while combinations such as \(a\nu\), \(\sigma/\nu\), and \(\Lambda\) stay finite;
- on the longitudinal branch, \(\nu\sim\mu^2/\omega\to0\), again with finite combinations in the separated equations.

The numerical implementation truncates the angular system at \(k_{\max}=17\) and follows difficult roots by continuation in \(\mu\). No convergence table or code is supplied.

## Horizon and infinity boundary conditions

With

\[
x=\frac{r-r_+}{r_+},
\qquad
\tau=\frac{r_+-r_-}{r_+},
\]

the ingoing horizon solution is

\[
R\sim x^{-iK_0/(r_+\tau)}
\sum_{n\ge0}b_nx^n,
\]

where

\[
K_0=(r_+^2+a^2)(\omega-m\Omega_H).
\]

For propagating modes \(\omega\ge\mu\),

\[
p=\sqrt{\omega^2-\mu^2},
\qquad
R\sim R_{\rm out}^{lm}e^{ir_+px}
+R_{\rm in}^{lm}e^{-ir_+px}.
\]

The source starts numerical integration at \(x=10^{-3}\), matches at a frequency-dependent large radius, and samples only \(M\omega\ge M\mu+0.01\). The immediate threshold region is therefore not directly resolved.

## Proca stress flux and greybody ratio

The full stress tensor must include the explicit mass term, which is essential for the longitudinal mode. The source reports

\[
\left.\frac{dE_{\rm in/out}}{dt}\right|_\infty
=\frac{p\omega}{2}
\left(1+\frac{\mu^2}{\nu^2}\right)
|R_{\rm in/out}^{lm}|^2.
\]

The common polarization factor then cancels in

\[
\Gamma_{lmS}=1-
\frac{|R_{\rm out}^{lm}|^2}{|R_{\rm in}^{lm}|^2}.
\]

This is useful in the correlated longitudinal limit, where
\(1+\mu^2/\nu^2\) is individually singular while the scattering probability can remain finite. It does not eliminate errors that change the relative ingoing and outgoing flux normalizations.

The superradiant window is

\[
\mu\le\omega<m\Omega_H.
\]

Here \(\Gamma<0\); the Bose denominator also changes sign, leaving a positive emitted number flux.

## Hawking spectrum and Page functions

The total number spectrum is

\[
\frac{d^2N_{\rm Proca}}{d\omega\,dt}
=\frac{1}{2\pi}
\sum_{S,l,m}
\frac{\Gamma_{lmS}}
{\exp[(\omega-m\Omega_H)/T_H]-1}.
\]

The longitudinal branch includes \(l=0\), so it can dominate slowly rotating, nearly massless emission. Near extremality, co-rotating vector modes and superradiance dominate.

The paper defines dimensionless energy and angular-momentum loss functions \(f\) and \(g\), and

\[
h=\frac{g}{f}-2.
\]

Under the usual Page definitions this gives \(h>0\) for spin-down. The source does not state the mass/spin evolution equations alongside its definitions and appears to lose the spectrum's \(1/(2\pi)\) factor, so absolute rates have a convention ambiguity.

Source-reported results, not independently reproduced, include:

- Maxwell recovery for the two vector branches at very small \(M\mu\);
- scalar-like longitudinal emission only in the small-mass limit;
- a maximal massive-vector amplification near \(7\%\), versus about \(4\%\) for photons;
- weak near-extremal suppression even when \(\mu/T_H\gg1\), because the relevant co-rotating combination is \(\mu-m\Omega_H\).

The last point corrects the abstract's mode-independent \(|\mu-\Omega_H|\): the azimuthal factor \(m\) is essential.

## Effective potential and the longitudinal limit

After a tortoise coordinate and Liouville transformation,

\[
\Psi''+(\omega^2-V_{\rm eff})\Psi=0,
\]

\[
V_{\rm eff}=\omega^2-left(Q-\frac12P'-\frac14P^2\right).
\]

The source interprets mass-dependent barriers and wells as suppressing the \(S=0,+1\) branches and enhancing \(S=-1\). This is only qualitative: \(V_{\rm eff}\) itself depends on \(\omega\) and on the frequency-dependent root \(\nu\).

For the longitudinal branch the meaningful limit is correlated,

\[
\mu\to0,
\qquad
\nu\sim\frac{\mu^2}{\omega},
\qquad
\Lambda\ \text{finite}.
\]

Then the radial equation approaches the scalar equation. This does not add a scalar to exactly massless Maxwell: for every \(\mu>0\) the longitudinal mode is physical, while at \(\mu=0\) it becomes pure gauge and is removed.

Thus

\[
\text{small-mass Proca}\approx\text{Maxwell}+\text{scalar-like longitudinal mode},
\]

but a finite-mass longitudinal Proca mode is not a free massive scalar.

## Use as a Proca benchmark

1. Derive the Lorenz condition from the massive equations rather than impose it as gauge fixing.
2. Track three modes at \(\mu\ne0\), but only two at exactly \(\mu=0\).
3. Identify physical branches through continuous limits and parity, not an isolated algebraic root.
4. Separate bulk helicity/separation from boundary-condition diagonalization.
5. Take \(\mu\) and \(\nu\) to zero together in the longitudinal limit.
6. Compute flux from the complete Proca stress tensor.
7. Check Maxwell, Schwarzschild, threshold, and superradiant limits independently.

## Verification boundary and source issues

Manually or algebraically checked in the decomposition pass:

- the co-rotating horizon-frequency factor;
- cancellation of the common infinity-flux prefactor in \(\Gamma\);
- the relation between \(h=g/f-2\) and spin-down, up to the paper's \(2\pi\) convention;
- the correlated structure of the longitudinal limit;
- the printed bosonic entropy formula becomes complex already at occupation \(\mathcal N=2\), whereas
  \((1+\mathcal N)\log(1+\mathcal N)-\mathcal N\log\mathcal N\) stays real.

Concrete source problems:

- the Kerr metric defines \(\Sigma=r^2+a^2\cos\theta\), missing the square on \(\cos\theta\);
- the transformed radial potential contains \(\nu^2r_+^2(x+1)^2-1\), although \(q_r=1+\nu^2r^2\) requires the plus sign;
- the angular expansion reintroduces a full \(Y_l^m(\theta,\phi)\) after \(e^{im\phi}\) was already factored out;
- the flux appendix has inconsistent tetrad normalization, omits \(F_{ab}\) in one Newman--Penrose scalar, and leaves complex-field conjugation ambiguous;
- the Page normalization is underspecified;
- the plotted scalar contribution is mislabeled once as \(S=-1\) rather than \(S=+1\);
- the printed bosonic entropy formula has the wrong \(\mathcal N-1\) structure;
- there is no numerical convergence study for angular/radial cutoffs, matching radii, or frequency sampling.

Not independently verified: FKKS separation, nonlinear angular roots, radial integrations, stress-tensor reduction, numerical greybody curves, Page matching, the reported \(7\%\) maximum, or any integrated evaporation trajectory. The paper remains useful as a separation-and-limits checklist, not as a verified numerical reference.
