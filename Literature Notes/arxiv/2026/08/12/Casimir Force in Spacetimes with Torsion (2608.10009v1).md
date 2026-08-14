---
paper id: 2608.10009v1
title: Casimir Force in Spacetimes with Torsion
authors:
  - M.W. AlMasri
publication date: 2026-08-07T23:38
abstract: We compute the Casimir force between perfectly conducting parallel plates in a spacetime endowed with constant axial torsion. Working within an effective field theory framework where torsion couples to the electromagnetic sector via a gauge-invariant Chern--Simons-type interaction, we derive the modified photon dispersion relation and mode spectrum. Using zeta-function regularization, we obtain the vacuum energy and the resulting Casimir pressure to second order in the torsion parameter. Our calculation yields a correction scaling as ΔP/P₀ = -5ξ²S_z²a²/(4π²) + O(S_z⁴), which corresponds to a slight weakening of the attractive Casimir force. We acknowledge a known subtlety in the literature concerning the interaction and standard boundary conditions. For experimentally accessible plate separations, the effect remains well below current detection thresholds due to stringent bounds on macroscopic torsion.
summary: Studies a Carroll--Field--Jackiw photon between conducting plates, but the advertised second-order Casimir coefficient is not established because the calculation drops a quadratic term present in its own exact dispersion relation and does not fully solve the cavity eigenproblem.
comments: 10 pages
url: https://arxiv.org/abs/2608.10009v1
tags: []
---

## Verdict

**The advertised coefficient is incorrect as derived.** The paper states the exact bulk dispersion relation

$$
\omega_\sigma^2
=k_\perp^2+k_z^2+\frac{\kappa^2}{2}
+\sigma\kappa\sqrt{k_z^2+\frac{\kappa^2}{4}},
\qquad
\kappa:=\xi S_z,
$$

but then replaces it, for a calculation through \(O(\kappa^2)\), by

$$
\omega_\sigma^2
=k_\perp^2+k_z^2+\sigma\kappa|k_z|+O(\kappa^2).
$$

The omitted common term \(+\kappa^2/2\) contributes at exactly the same order as the retained square of the helicity splitting. If one provisionally accepts the paper's bulk dispersion relation and the quantization \(k_z=n\pi/a\), restoring that term changes

$$
\frac{\Delta E}{A}:
\quad
\frac{\kappa^2}{192a}
\longrightarrow
\frac{\kappa^2}{64a},
$$

and hence

$$
\Delta P:
\quad
\frac{\kappa^2}{192a^2}
\longrightarrow
\frac{\kappa^2}{64a^2}.
$$

This factor-of-three correction is **conditional**, not a replacement final result, because the paper also does not complete the conducting-cavity eigenvalue problem for the coupled TE/TM modes. Thus the sound conclusion is:

> The paper motivates a useful spectral problem, but neither its reported \(O(S_z^2)\) coefficient nor the conditionally corrected coefficient is established as the physical Casimir pressure without a complete gauge-fixed boundary-mode analysis.

## Why it was selected

This is a **medium-priority reusable-method/failure-mode note**. It is relevant to boundary QFT and spectral regularization, but its principal value for the vault is diagnostic:

- order counting must be consistent between an exact dispersion law and a second-order spectral observable;
- a bulk plane-wave determinant is not automatically the spectrum of a boundary-value problem;
- gauge invariance up to a boundary term must be separated from the claim that an interaction is itself a total derivative;
- two regularizations applied to the same truncated spectrum are not independent checks of the spectrum.

## Model and conventions

The background metric is Minkowski,

$$
\eta_{\mu\nu}=\operatorname{diag}(-1,1,1,1),
$$

and torsion is decomposed into trace, axial, and tensor pieces,

$$
T_\mu=T^\lambda{}_{\lambda\mu},
\qquad
S^\mu=\epsilon^{\mu\nu\rho\sigma}T_{\nu\rho\sigma},
\qquad
q_{\lambda\mu\nu}.
$$

The paper retains a constant axial background aligned with the plate normal,

$$
S_\mu=(0,0,0,S_z),
$$

and uses the effective photon Lagrangian

$$
\mathcal L
=-\frac14F_{\mu\nu}F^{\mu\nu}
+\frac{\xi}{4}\epsilon^{\mu\nu\rho\sigma}S_\mu A_\nu F_{\rho\sigma}
+O(S^2,\partial S).
$$

This is the CPT-odd Carroll--Field--Jackiw photon term with

$$
(k_{AF})_\mu=\xi S_\mu.
$$

For constant \(S_\mu\), the gauge variation is a surface term, and for plates normal to \(S_\mu\) the displayed surface contraction vanishes because it contains two \(z\) indices. This establishes gauge invariance of the action for that geometry and class of gauge transformations; it does not by itself determine the physical boundary phase space or mode spectrum.

## Field equation and bulk dispersion

The modified Maxwell equation is

$$
\partial_\mu F^{\mu\nu}
+\xi\epsilon^{\nu\alpha\beta\gamma}S_\alpha\partial_\beta A_\gamma=0.
$$

In Lorenz gauge,

$$
\Box A^\nu
+\xi\epsilon^{\nu\alpha\beta\gamma}S_\alpha\partial_\beta A_\gamma=0.
$$

The paper quotes the spacelike CFJ bulk dispersion relation

$$
\omega_\sigma^2
=K^2+\frac{\kappa^2}{2}
+\sigma\kappa\sqrt{k_z^2+\frac{\kappa^2}{4}},
\qquad
K^2=k_\perp^2+k_z^2.
$$

For \(k_z>0\), its consistent expansion through quadratic order is

$$
\boxed{
\omega_\sigma^2
=K^2+\sigma\kappa k_z+\frac{\kappa^2}{2}+O(\kappa^3)
}.
$$

The square root in the helicity term first adds another correction at \(O(\kappa^3)\), but the explicit \(\kappa^2/2\) term is already present and cannot be discarded.

## Conducting plates and the unresolved mode problem

The plates lie at \(z=0,a\), with

$$
E_x=E_y=B_z=0
$$

on each plate. The paper uses sine/cosine profiles and obtains

$$
k_z=\frac{n\pi}{a}.
$$

It correctly observes that axial torsion mixes the torsion-free TE and TM sectors. However, the displayed “explicit construction” does not actually provide normalized physical eigenmodes or a determinant whose zeros yield the cavity spectrum:

- the transverse amplitudes are left only as \(O(S_z)\);
- the coupled amplitude equations are not solved;
- residual gauge modes and the physical polarization count are not audited;
- the fixed circular vectors \((0,1,\pm i,0)/\sqrt2\) quoted earlier are not Lorenz-transverse for generic \(\mathbf k_\perp\);
- the argument imports the bulk plane-wave dispersion into a standing-wave boundary problem after acknowledging TE/TM mixing.

The quantization \(k_z=n\pi/a\) may still be correct because the CFJ mixing operator for \(S\parallel\hat z\) contains no \(z\)-derivative, but the paper has not completed the calculation needed to prove that the two physical cavity branches are exactly obtained by substituting this \(k_z\) into the bulk determinant.

## Paper's zeta-function calculation

Using only the linearly split approximate spectrum, the paper defines

$$
\zeta(s)=\mu^{2s}\sum_{n=1}^\infty
\int\frac{d^2k_\perp}{(2\pi)^2}
\sum_{\sigma=\pm}
\left[K_n^2+\sigma\kappa\frac{n\pi}{a}\right]^{-s},
$$

where

$$
K_n^2=k_\perp^2+\left(\frac{n\pi}{a}\right)^2.
$$

The helicity sum cancels the linear correction. Analytic continuation then gives

$$
\frac{E_{\rm paper}}A
=-\frac{\pi^2}{720a^3}+\frac{\kappa^2}{192a}+O(\kappa^4),
$$

and

$$
P_{\rm paper}
=-\frac{\pi^2}{240a^4}+\frac{\kappa^2}{192a^2}+O(\kappa^4).
$$

Here \(\Delta P>0\), so it weakens the negative attractive pressure. The phrase in the paper that “the correction is negative” applies only to \(\Delta P/P_0\), not to \(\Delta P\) itself.

## Independent order-consistency check

Expanding the frequency sum using the paper's own exact dispersion gives

$$
\sum_{\sigma=\pm}\omega_\sigma
=2K+\frac{\kappa^2}{2K}
-\frac{\kappa^2k_z^2}{4K^3}+O(\kappa^4).
$$

The paper keeps only the last term. With the overall zero-point factor \(1/2\), dimensional analytic continuation in the transverse plane gives

$$
\int\frac{d^2k_\perp}{(2\pi)^2}\frac1K
=-\frac{k_z}{2\pi},
\qquad
\int\frac{d^2k_\perp}{(2\pi)^2}\frac1{K^3}
=\frac1{2\pi k_z}.
$$

Using \(k_z=n\pi/a\) and \(\zeta_R(-1)=-1/12\), the term retained by the paper contributes

$$
\frac{\Delta E_{\rm retained}}A=\frac{\kappa^2}{192a},
$$

whereas the omitted common quadratic term contributes

$$
\frac{\Delta E_{\rm omitted}}A=\frac{\kappa^2}{96a}.
$$

Thus, under the provisional spectrum assumption,

$$
\frac{\Delta E_{\rm conditional}}A=\frac{\kappa^2}{64a},
\qquad
\Delta P_{\rm conditional}=\frac{\kappa^2}{64a^2},
$$

and

$$
\left(\frac{\Delta P}{P_0}\right)_{\rm conditional}
=-\frac{15\kappa^2a^2}{4\pi^2},
$$

rather than \(-5\kappa^2a^2/(4\pi^2)\).

## The “total derivative” issue

The paper says that

$$
\epsilon^{\mu\nu\rho\sigma}S_\mu A_\nu F_{\rho\sigma}
$$

can be written as a total derivative. **That statement is incorrect for a constant external \(S_\mu\) in general.** In differential-form notation the interaction is proportional to

$$
S\wedge A\wedge F.
$$

Even if \(S=d\theta\), integration by parts gives a boundary term **and** a bulk axion-density term proportional to \(\theta F\wedge F\); the CFJ density is not generically exact by itself. Equivalently, its Euler--Lagrange derivative is proportional to

$$
\epsilon^{\nu\alpha\beta\gamma}S_\alpha\partial_\beta A_\gamma,
$$

which is generically nonzero. A local total divergence would have an identically vanishing bulk Euler--Lagrange derivative. This also explains why the paper itself obtains modified bulk Maxwell equations.

The real boundary subtlety is therefore not “a total derivative may vanish,” but how the CFJ term, gauge transformations, conductor response, surface terms, and physical mode space are jointly specified.

## Abel--Plana appendix is not an independent spectral check

The appendix applies Abel--Plana to the same approximate spectrum used in the zeta calculation, so agreement only checks the regularization algebra after the spectral truncation. It cannot detect the omitted \(+\kappa^2/2\) term.

Moreover, its expansion parameter on the contour is

$$
\epsilon=\frac{\kappa a}{\pi t},
$$

which is not uniformly small as \(t\to0\). Expanding the integrand before integrating therefore needs a separate small-\(t\) justification. Calling the appendix a “rigorous” or “crucial” independent cross-check is not supported by the derivation shown.

## Phenomenological scale

The unit conversion quoted in the paper is consistent:

$$
10^{-15}\ \mathrm{eV}\simeq5.1\times10^{-9}\ \mathrm{m}^{-1}.
$$

For \(a=1\,\mu\mathrm m\) and \(\xi\sim1\), even the factor-of-three conditional coefficient remains of order \(10^{-29}\) to \(10^{-30}\) relative to the ordinary pressure. The qualitative claim of present experimental inaccessibility is therefore insensitive to the coefficient error. The exact numerical bound itself was not independently traced to the cited torsion/SME literature in this run.

## Verification audit

### Source-derived

The quoted action, exact dispersion relation, cavity ansatz, zeta calculation, and Abel--Plana calculation below are reconstructed from the paper rather than assumed as independently established physical results.

### Checked

**Verified:** The arXiv abstract, full 10-page PDF, TeX source, zeta derivation, and Abel--Plana appendix were inspected. Rendered pages confirmed the displayed mode ansatz, spectral expansion, and appendix branch expansion.

**Verified:** Mathematica expansion of the quoted exact dispersion relation gives \(K^2+\sigma\kappa k_z+\kappa^2/2+O(\kappa^3)\), demonstrating the missing quadratic term.

**Verified:** Mathematica expansion of the two frequency branches gives
\(2K+\kappa^2/(2K)-\kappa^2k_z^2/(4K^3)\). Dimensional transverse integrals and zeta continuation reproduce the paper's \(1/192\) coefficient from the retained term, the missing \(1/96\) contribution, and the conditional total \(1/64\).

**Verified:** Differentiating the energies with respect to \(a\) reproduces the paper's pressure/relative-pressure formula from its truncated spectrum and the factor-of-three conditional correction from the consistent expansion.

### Failed

The paper's \(O(\kappa^2)\) coefficient fails the order-consistency check because it drops the explicit \(+\kappa^2/2\) term in its own exact dispersion relation. The claim that the CFJ density is generically a total derivative also fails the Euler--Lagrange test described above.

### Not independently verified

**Assumptions:** Constant spacelike axial torsion aligned with the plate normal; flat background; ideal perfectly conducting plates; weak \(|\kappa|a\); dimensional/zeta analytic continuation; provisional use of the bulk dispersion with \(k_z=n\pi/a\) for the conditional coefficient.

**Not verified:** A complete gauge-fixed cavity spectrum, normalization and completeness of physical modes, conductor surface response in the Lorentz-violating theory, or a boundary effective action.

**Not verified:** The cited experimental bound, finite-temperature scaling, asymmetric-geometry claims, and proposed quantum-information/condensed-matter extensions were not independently established. Several are outlook statements rather than results of the calculation.

## Reusable lesson

For any boundary spectral calculation through order \(\lambda^2\):

1. expand the eigenvalue equation itself through \(\lambda^2\), not merely its helicity-odd part;
2. solve the boundary determinant before importing a bulk dispersion relation;
3. count physical modes after gauge fixing and boundary conditions;
4. separate regularization checks from spectral checks;
5. test any “total derivative” claim by its bulk Euler--Lagrange derivative.
