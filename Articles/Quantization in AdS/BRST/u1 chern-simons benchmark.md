---
title: U(1) Chern-Simons Benchmark for BRST-CPS Canonical Quantization
date: 2026-07-12
summary: "Tests BRST-CPS reduction in a topological gauge theory, separating contractible bulk gauge modes from physical boundary currents and topological zero modes."
---

# U(1) Chern-Simons Benchmark

U(1) Chern-Simons theory tests a limit opposite to Maxwell theory. There are no local propagating bulk oscillators, while gauge transformations with suitable boundary values become physical current modes. A formalism that removes every exact one-form by BRST cohomology fails this benchmark.

## 1. Classical CPS data

Take

$$
\begin{align}
S[A]=\frac{k}{4\pi}\int _M A\wedge\mathrm{d}A.
\end{align}
$$

On a Cauchy surface $\Sigma$,

$$
\begin{align}
\Omega _{\Sigma}=\frac{k}{4\pi}\int _{\Sigma}\delta A\wedge\delta A.
\end{align}
$$

The equation of motion is $\mathrm{d}A=0$ and the linear gauge transformation is

$$
\begin{align}
sA=\mathrm{d}c,
\qquad
sc=0.
\end{align}
$$

For a proper ghost whose boundary behavior makes the generator differentiable, the bulk BFV charge is represented by the flatness constraint,

$$
\begin{align}
Q_{\mathrm{bulk}}[c]
=\frac{k}{2\pi}\int _{\Sigma}c\,\mathrm{d}A.
\end{align}
$$

Gauge fixing may add an antighost and a Nakanishi-Lautrup field, but that non-minimal sector is a contractible pair and does not change the cohomology.

## 2. Bulk exact modes

For two exact variations $\delta _{\lambda}A=\mathrm{d}\lambda$ and $\delta _{\eta}A=\mathrm{d}\eta$,

$$
\begin{align}
\Omega _{\Sigma}(\mathrm{d}\lambda,\mathrm{d}\eta)
&=\frac{k}{2\pi}\int _{\Sigma}\mathrm{d}\lambda\wedge\mathrm{d}\eta\\
&=\frac{k}{2\pi}\int _{\partial\Sigma}\lambda\,\mathrm{d}\eta.
\end{align}
$$

If the allowed parameters make the boundary term vanish, exact one-forms are presymplectic null directions and the corresponding ghost modes resolve the bulk quotient. On a contractible disk, the remaining smooth bulk cohomology contains no local oscillator.

For a spatial surface with non-trivial topology, closed non-exact one-forms survive. They are topological cohomology classes, not failures of BRST reduction.

## 3. Boundary modes

If $\lambda|_{\partial\Sigma}$ is allowed to be non-zero, the same formula gives a boundary charge rather than a null direction. The differentiable boundary generator is proportional to

$$
\begin{align}
J[\lambda]=\frac{k}{2\pi}\int _{\partial\Sigma}\lambda A.
\end{align}
$$

Its bracket is

$$
\begin{align}
\{J[\lambda],J[\eta]\}
=\frac{k}{2\pi}\int _{\partial\Sigma}\lambda\,\mathrm{d}\eta.
\end{align}
$$

For $\lambda _m=e^{im\phi}$ and $\eta _n=e^{in\phi}$,

$$
\begin{align}
\{J_m,J_n\}
=ikn\,\delta _{m+n,0}
=-ikm\,\delta _{m+n,0}.
\end{align}
$$

After quantization this is the U(1) current algebra

$$
\begin{align}
[\widehat{J}_{m},\widehat{J}_{n}]
=km\,\delta _{m+n,0}
\end{align}
$$

in the standard real-current convention. These modes must not be included in the bulk proper-ghost domain. They survive as boundary BFV cohomology.

## 4. Relation to the local AdS$_3$ and BTZ phase spaces

For the chiral boundary condition used in the local U(1) Chern-Simons notes, the non-zero exact modes have non-vanishing boundary parameters and a non-degenerate boundary oscillator form. They therefore generate the level-$k$ Kac-Moody algebra rather than disappearing from the spectrum.

On a BTZ slice with an outer boundary and a horizon boundary, the reduced phase space contains two commuting chiral current sectors. It also contains the topological zero modes $q_r$ and $q_{\phi}$ with

$$
\begin{align}
\Omega _{\mathrm{top}}=k\,\delta q_r\wedge\delta q_{\phi},
\qquad
\{q_r,q_{\phi}\}=-\frac{1}{k}.
\end{align}
$$

The two current algebras and the topological pair are classes of the boundary/topological complex. The smooth bulk exact sector remains contractible.

## 5. BV-BFV interpretation

In the minimal BV description, the Abelian Chern-Simons superfield contains

$$
\begin{align}
c\in\Omega ^0(M)[1],
\qquad
A\in\Omega ^1(M)[0],
\qquad
A^{\dagger}\in\Omega ^2(M)[-1],
\qquad
c^{\dagger}\in\Omega ^3(M)[-2].
\end{align}
$$

The boundary BFV symplectic structure has ghost number zero and contains both the classical boundary connection pairing and the ghost-antifield pairing. This is distinct from the gauge-fixing antighost-$B$ doublet. The latter is cohomologically trivial; the former is required for the boundary BRST generator.

## Benchmark verdict

| Gate | Result |
|---|---|
| Bulk nilpotency | Pass: $sA=dc$, $sc=0$. |
| BRST generator and boundary term | Pass: the flatness generator removes proper exact modes, while its non-zero surface term is retained as $J[\lambda]$. |
| Bulk local cohomology | Pass: no local oscillator on a contractible slice. |
| Proper exact modes | Pass: contractible when the boundary term vanishes. |
| Boundary large gauge modes | Pass: survive and generate level-$k$ U(1) current algebra. |
| Topological zero modes | Pass: retained as cohomology classes. |
| Reduced pairing | Pass: matches the local Chern-Simons and BTZ symplectic forms. |

The comparison with Maxwell theory is decisive. A non-zero boundary value is not by itself physical or unphysical. The answer is fixed by the renormalized symplectic pairing and the associated charge.
