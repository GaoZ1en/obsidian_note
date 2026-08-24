---
paper id: 2608.18983v1
title: Duru-Kleinert Path Integral in Unimodular Quantum Cosmology
authors:
  - Xiao-Kan Guo
publication date: 2026-08-19T14:49
abstract: |-
  The paper maps a flat dust-filled unimodular FLRW minisuperspace equation to a half-line Coulomb problem, then proposes a Duru--Kleinert path integral, a tunneling rate, a continuum spectral density, and Krylov-complexity asymptotics.
comments: "21 pages"
url: https://arxiv.org/abs/2608.18983v1
summary: "The direct Wheeler--DeWitt spectrum and bounce integral check, but the displayed path-integral kernel and Krylov analysis contain decisive inconsistencies."
tags: []
---

# Direct verdict

Incorrect as a complete Duru--Kleinert and Krylov-complexity derivation.

The reduced Wheeler--DeWitt equation on the half-line and its hydrogenic spectrum

\[
\Lambda_n=-\frac{\rho_0^2}{3\hbar^2n^2}
\]

are correct under the stated factor ordering and Dirichlet boundary condition. The elementary zero-energy action integral also gives

\[
B(\Lambda)=\frac{2\pi\rho_0}{\sqrt{3|\Lambda|}},
\qquad B_n=2\pi n.
\]

Those results do not validate the paper's intervening path integral or its later complexity claims. In particular:

- the displayed Mehler kernel contains no \(\rho_0\), but the next equation inserts a \(\rho_0\)-dependent power of the integration variable;
- a harmonic-oscillator Mehler kernel is asserted to be the Coulomb propagator without the coordinate transformation and measure factors that would make this true;
- the traced continuum resolvent is divergent on the noncompact half-line, while the quoted finite expression is used without a volume subtraction or regulator;
- the paper's own continuum density behaves as \(\Lambda^{-1/2}\), not \(\Lambda^{-3/2}\);
- the selected spectral measure is not symmetric, so the odd moments and diagonal Lanczos coefficients cannot simply be set to zero;
- the proposed half-line Gaussian is not exactly normalized, and its overlap with the ground state tends to zero rather than one in the claimed sharp-packet limit;
- the proposed \(b_n\sim n\) and \(C_K\sim\sinh^2\) laws are not derived from the stated moments.

See [[2026_08_20_overview]] for today's serial queue.

# Minisuperspace reduction

With \(8\pi G=1\), volume \(v=a^3>0\), dust energy \(\rho_0\), and the unimodular gauge \(Nv=1\), the paper obtains

\[
\mathcal H_{\rm eff}
=-\frac34P_v^2+\frac{\rho_0}{v}+\Lambda\approx0.
\]

For \(P_v=-i\hbar\partial_v\), this is equivalent to

\[
\left(-\frac{3\hbar^2}{4}\frac{d^2}{dv^2}
-\frac{\rho_0}{v}\right)\psi(v)
=\Lambda\psi(v).
\]

This is the \(s\)-wave Coulomb equation with effective mass \(2/3\). With \(\psi(0)=0\) and square integrability at infinity, the negative eigenvalues are the displayed \(\Lambda_n\). This is a minisuperspace spectral statement for a chosen ordering and half-line domain, not a four-dimensional quantization theorem for the cosmological constant.

# Failure of the displayed path-integral chain

The time rescaling \(f(v)=2/(3v)\) gives the formal Euclidean action

\[
I_E=\int ds\left[\frac12\dot v^2
+\frac{2\rho_0}{3v}+\frac{2\Lambda}{3}\right].
\]

For \(\Lambda<0\), the source then writes the kernel

\[
K(v_b,v_a;S)=
\sqrt{\frac{\omega}{2\pi\sinh\omega S}}
\exp\left[-\frac{\omega}{2\sinh\omega S}
\big((v_b^2+v_a^2)\cosh\omega S-2v_av_b\big)\right].
\]

This is the ordinary harmonic-oscillator Mehler kernel. It depends on \(\omega\) but not on the Coulomb coupling \(\rho_0\). Consequently

\[
\int_0^\infty dS\,e^{\omega^2S/2}K(v_b,v_a;S)
\]

also cannot acquire the missing Coulomb coupling.

After \(t=e^{-2\omega S}\), direct substitution gives only

\[
e^{\omega^2S/2}=t^{-\omega/4}.
\]

The following formula instead introduces

\[
\alpha=\frac{2\rho_0}{3\omega}+\frac14
\]

in the power \(t^{\alpha-1}\). No such term follows from the displayed kernel or prefactor. The claimed Whittaker resolvent may be recognized from the known Coulomb problem, but it is not derived by equations (3.10)--(3.17) as written.

# Bounce calculation and its boundary

For the formal effective potential

\[
V_{\rm eff}(v)=\frac{2\rho_0}{3v}-\frac{2|\Lambda|}{3},
\qquad
v_* = \frac{\rho_0}{|\Lambda|},
\]

the zero-energy integral is algebraically correct:

\[
B=2\int_0^{v_*}dv\sqrt{\frac{4\rho_0}{3v}-\frac{4|\Lambda|}{3}}
=\frac{2\pi\rho_0}{\sqrt{3|\Lambda|}}.
\]

Calling this a Coleman bounce from a metastable “nothing” state is not established. The endpoint \(v=0\) is a singular infinite barrier, not a demonstrated false vacuum, and the fluctuation problem requires boundary conditions plus a negative-mode analysis.

The claimed universal one-loop prefactor also fails its own scaling test. With

\[
T=\frac{\sqrt3\rho_0}{4|\Lambda|^{3/2}},
\qquad
\omega^2=\frac{4|\Lambda|}{3},
\]

one has

\[
T^2\omega^2=\frac{\rho_0^2}{4|\Lambda|^2},
\]

which depends on \(\Lambda\) and on \(n\) after spectral quantization. Thus \(\omega\not\propto T^{-1}\) across the levels, and the reference determinant does not share the asserted universal scaling. The fluctuation potential also diverges at both singular endpoints, so the stated elementary Gelfand--Yaglom initial-value problem is not a completed determinant calculation.

# Continuum density and Krylov analysis

The paper proposes

\[
\rho_c(\Lambda)=
\frac{2\pi\eta}{k(1-e^{-2\pi\eta})},
\qquad
\eta=\frac{\rho_0}{\sqrt{3\Lambda}},
\quad
k=\sqrt{\frac{4\Lambda}{3}}.
\]

Its large-\(\Lambda\) expansion starts as

\[
\rho_c(\Lambda)
=\frac{\sqrt3}{2\sqrt\Lambda}
+\frac{\pi\rho_0}{2\Lambda}
+\mathcal O(\Lambda^{-3/2}),
\]

not \(\Lambda^{-3/2}\). Moreover, the trace \(\int_0^\infty dv\,G(v,v)\) includes the infinite half-line volume. A finite total density of states needs a box, a subtraction against a reference operator, or a properly defined local/relative density. The quoted Sommerfeld-type factor is not by itself the regulated trace used in the definition.

For a weighted state measure \(d\mu(E)\), the survival amplitude obeys

\[
S^{(m)}(0)=(-i)^m\int E^m\,d\mu(E),
\]

so the source's moment equation misses \((-i)^m\). Its negative bound spectrum plus positive continuum is not even in \(E\), hence \(S(t)\) is not generally even and \(a_n=0\) does not follow.

The proposed initial packet

\[
\psi_0(v)=\left(\frac{2\alpha}{\pi}\right)^{1/4}
e^{-\alpha(v-v_0)^2}
\]

has half-line norm

\[
\|\psi_0\|^2
=\frac12\left[1+\operatorname{erf}(\sqrt{2\alpha}\,v_0)\right],
\]

not exactly one. At the claimed \(v_0=3/\rho_0\), Mathematica gives \(c_1\to0\) as \(\alpha\to\infty\); a position-delta sequence is not the extended Coulomb ground state. Therefore the narrow-packet moment estimate is reversed.

Finally, a low-moment approximation by the bounded negative levels cannot establish the large-index recurrence \(b_n\sim(\rho_0^2/3)n\). The subsequent exponential \(\sinh^2\) complexity is the solution of an assumed linear Lanczos chain, not a result derived for this cosmological spectral measure.

# Verification record

## Checked

- **Verified:** the official 21-page PDF and complete 1,120-line TeX source were retrieved; six representative pages were rendered and inspected.
- **Verified:** direct half-line Coulomb reduction gives \(\Lambda_n=-\rho_0^2/(3\hbar^2n^2)\) under the paper's ordering and Dirichlet domain.
- **Verified:** Mathematica evaluated the bounce integral as \(2\pi\rho_0/\sqrt{3|\Lambda|}\) and its on-spectrum value as \(2\pi n\).
- **Verified:** Mathematica obtained the continuum-density tail \(\sqrt3/(2\sqrt\Lambda)+\pi\rho_0/(2\Lambda)+\cdots\), the exact half-line Gaussian norm, and \(T^2\omega^2=\rho_0^2/(4|\Lambda|^2)\).

## Failed

- **Failed:** equations (3.10)--(3.14) cannot generate the inserted \(\rho_0\)-dependent Mellin power from the displayed Mehler kernel.
- **Failed:** the claimed \(\Lambda^{-3/2}\) leading tail contradicts the paper's own formula.
- **Failed:** the sharp-packet assertion \(|c_1|^2\to1\); the displayed overlap instead tends to zero.
- **Failed:** spectral symmetry, vanishing odd moments, \(a_n=0\), linear Lanczos growth, and the late-time \(\sinh^2\) law are not consequences of the stated measure.
- **Failed:** the asserted level-independent determinant scaling, because \(T^2\omega^2\) is level dependent.

## Source-derived

- **Source-derived:** the formal Duru--Kleinert measure transformation and the Whittaker Green function quoted from the Coulomb literature.
- **Source-derived:** the unregulated traced-resolvent formula and the proposed fluctuation determinant.

## Not independently verified

- **Not verified:** a discretized path-integral measure, self-adjoint-extension comparison, regulated continuum trace, or numerical determinant.
- **Not verified:** a negative mode and decay interpretation for the singular endpoint bounce.
- **Not verified:** any numerical Lanczos coefficients, state evolution, or Krylov-complexity curve; none are supplied.

# Assumptions and relevance

- **Assumptions:** spatially flat homogeneous FLRW minisuperspace, Brown--Kuchař dust, Henneaux--Teitelboim unimodular sector, \(Nv=1\), and the paper's simple factor ordering.
- **Assumptions:** half-line Dirichlet condition \(\psi(0)=0\), fixed positive \(\rho_0\), and \(\hbar=1\) outside the restored formulas.
- `T2-spectral`: the direct Coulomb operator is a clean half-line spectral benchmark.
- `T2-model`: the paper is useful as a warning that a correct endpoint spectrum does not retroactively validate a path-integral measure or a Krylov construction.

# Blocked

- No abstract, PDF, or TeX retrieval failed.
- Independent determinant evaluation is blocked by absent endpoint-domain data, reference normalization, negative-mode treatment, code, and numerical output.
- Numerical Krylov reproduction is blocked by absent parameter choices, normalized overlaps, regulated spectral measure, Lanczos data, and code.

# Bottom line

The Coulomb-spectrum identity and the elementary action integral survive direct checks. The advertised Duru--Kleinert derivation, universal prefactor, continuum trace, and Krylov complexity do not. They should not be used as verified input for quantum-cosmology or spectral-complexity claims without rebuilding the operator domain, path-integral transformation, relative density of states, and Lanczos recursion from scratch.
