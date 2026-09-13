---
paper id: 2609.06224v1
title: "The Wilson-line-dressed charged sector of scalar QED: superselection and the infraparticle"
authors:
  - Gordon W. Semenoff
  - Conor Waterfield
publication date: 2026-09-05T18:44
abstract: |-
  A BRST- and Lorentz-invariant massive-photon regulator makes Wilson-line-dressed scalar-QED correlators perturbatively computable. Nonparallel dressings become cloud-orthogonal as the infrared regulator is removed, whereas parallel dressings have a branch-point mass shell with a dressing-dependent infraparticle exponent and a finite proper-time crossover when the regulator remains nonzero.
comments: "33 pages, 3 figures"
url: https://arxiv.org/abs/2609.06224v1
summary: "A concrete charged-sector and Euclidean-state-gluing calculation, with exact one-loop exponent checks but no regional observable-algebra sewing theorem."
tags: []
---

# Why this is high priority

Reason codes: `T1-boundary`, `T1-symmetry`, `T2-model`, `T2-spectral`.

The paper explicitly builds gauge-invariant charged operators by attaching semi-infinite Wilson lines, computes their state overlaps by Osterwalder--Schrader (OS) reflection and Euclidean gluing, and distinguishes superselection between photon clouds from infraparticle behavior inside one cloud sector. These are directly relevant to the vault's cut-charged observables and representation boundary.

# How to read this long paper

- **Essential:** the dressed operator and OS-gluing construction in Sec. 1; the cloud-superselection calculation in Sec. 4.1; the same-cloud mass-shell limit in Sec. 4.2; and the finite-$m_\gamma$ crossover in Sec. 5.
- **Technical reference:** the Stueckelberg/BRST regulator, the undressed self-energy subtraction, the Clausen-function form of the one-loop integral, and the worldline expansion.
- **Background:** the historical discussion of Faddeev--Kulish dressing, Landau--Khalatnikov--Fradkin transformations, and gravitational dressing analogies.

# Complete source map

1. **Introduction and summary:** defines the charged dressings, interprets OS reflection/gluing as an inner product, and states cloud orthogonality and the infraparticle exponent.
2. **Infrared-cutoff scalar QED:** gives the Euclidean action, gauge and BRST transformations, Stueckelberg factorization, and the relation between local massive-photon charged composites and nonlocal massless-photon dressings.
3. **Undressed self-energy and residue obstruction:** fixes the hybrid subtraction and shows how the ordinary scalar pole already acquires mass-shell logarithms.
4. **Including Wilson lines:** organizes scalar self-energy, Wilson self-interaction, and mixed diagrams; derives the nonparallel-cloud exponent and then the parallel-cloud two-point function.
5. **Massive photon and infrared window:** uses a worldline representation to show how the massless infraparticle power law crosses over when $t\sim m_\gamma^{-1}$.
6. **Conclusion:** relates the perturbative calculation to algebraic QED and states that the claimed all-order one-loop exactness still awaits a separate rigorous proof.

# Model, operators, and conventions

The Euclidean Stueckelberg-regulated scalar-QED action is

$$
S=\int\!\mathrm d^Dx\left[|D_\mu\phi|^2+m^2|\phi|^2+\frac\lambda2|\phi|^4+\frac14F_{\mu\nu}^2+\frac{m_\gamma^2}{2}\left(A_\nu-\frac1{m_\gamma}\partial_\nu\varphi\right)^2\right],
$$

with $D=4-2\epsilon$, $0\le m_\gamma<2m$, and $\lambda=O(e^4)$ so that it does not enter the displayed $O(e^2)$ calculation. Gauge transformations are

$$
\phi\mapsto e^{ie\eta}\phi,\qquad A_\mu\mapsto A_\mu+\partial_\mu\eta,
\qquad \varphi\mapsto\varphi+m_\gamma\eta.
$$

The covariant gauge fixing is BRST exact. In Feynman gauge the Stueckelberg scalar and ghosts decouple, while gauge-invariant charged correlators remain independent of the gauge-fixing parameter.

The nonlocal massless-photon charged operator is

$$
\Phi_v(x)=\phi(x)\exp\left[-ie\int_{-\infty}^0\!\mathrm ds\,v^\mu A_\mu(x+sv)\right].
$$

Here $v$ is a future-directed timelike dressing direction after Lorentzian continuation. A smeared state $|f,v\rangle$ is required for normalization; the unsmeared point operator is not itself a normalizable state.

# OS reflection and gluing

The transition amplitude between two such states is obtained from the Euclidean correlator

$$
D_{vv'}(x)=\left\langle e^{ie\int_0^\infty v'\cdot A(x+sv')\,\mathrm ds}\,\phi(x)\phi^*(0)\,
e^{ie\int_{-\infty}^0v\cdot A(sv)\,\mathrm ds}\right\rangle.
$$

The conjugated line is time-reversed by OS reflection before the two half-space wave functionals are sewn. This is a construction of a state inner product from a Euclidean functional integral. It is not a proof that regional charged observable algebras form an exact pushout or that their states admit a general sewing theorem.

# Cloud superselection

For Euclidean unit directions with $v\cdot v'=\cos\delta$, the Wilson-line self-interaction gives

$$
D_{vv'}(p)=\frac1{p^2+m^2}
\left(\frac{m_\gamma^2}{m^2}\right)^{\frac{e^2}{8\pi^2}(\delta\cot\delta-1)}
\left[1+\text{finite as }m_\gamma\to0\right].
$$

The exponent is negative for nonzero Euclidean angle, so the Euclidean correlator itself diverges. Under $\delta\mapsto-i\chi$, with $v\cdot v'=-\cosh\chi$ in Lorentzian signature,

$$
\langle f_x,v'|f_0,v\rangle\propto
\left(\frac{m_\gamma^2}{m^2}\right)^{\frac{e^2}{8\pi^2}(\chi\coth\chi-1)}.
$$

Since $\chi\coth\chi-1>0$ for $\chi\ne0$, nonparallel clouds become orthogonal when $m_\gamma\to0$. The direction $v$ therefore labels superselection sectors in this ideal infinite-volume, massless-photon limit.

# Same-cloud infraparticle

Setting $v=v'$ cancels the cloud-orthogonality logarithm but does not restore an isolated particle pole. Near $p^2=-m^2$, write

$$
p\cdot v=im\cosh\zeta,
\qquad \sqrt{(p\cdot v)^2+m^2}=im\sinh\zeta.
$$

The paper's one-loop assembly yields

$$
D_{vv}(p)=\frac1{p^2+m^2}\left[1+\frac{e^2}{2\pi^2}(\zeta\coth\zeta-1)
\log\frac{p^2+m^2}{m^2}+\cdots\right],
$$

and exponentiation gives the branch point

$$
D_{vv}(p)\sim\left[\frac1{p^2+m^2}\right]^{1-\gamma(\zeta)},
\qquad
\gamma(\zeta)=\frac{e^2}{2\pi^2}(\zeta\coth\zeta-1).
$$

The exponent vanishes quadratically when the dressing is tuned to the particle velocity:

$$
\gamma(\zeta)=\frac{e^2}{6\pi^2}\zeta^2+O(\zeta^4).
$$

At large proper time in the massless window, the position-space amplitude behaves as $e^{-imt}t^{-3/2-\gamma}$. For finite $m_\gamma$, the anomalous power persists only for $m^{-1}\ll t\ll m_\gamma^{-1}$ and is cut off at longer times.

# Finite-regulator crossover

The worldline photon-exchange term contains the exact crossover function $K_0(m_\gamma t)$. Its limits are

$$
K_0(w)=-\log\frac w2-\gamma_E+O(w^2\log w),
\qquad
K_0(w)\sim\sqrt{\frac\pi{2w}}e^{-w}.
$$

Thus the logarithmic running occurs at $m_\gamma t\ll1$ and freezes for $m_\gamma t\gtrsim1$. The caption of Fig. 3 says the running window is $m_\gamma t\gg1$; that literal inequality contradicts the displayed asymptotics and the next clause of the same caption.

# Equation ledger and derivation map

1. Gauge invariance forces a long-range $1/(k\cdot v)$ dressing kernel.
2. OS reflection reverses the bra Wilson line and turns the state overlap into $D_{vv'}$.
3. Differentiating with respect to $m_\gamma^2$ isolates the logarithmic Wilson self-interaction.
4. The Feynman-parameter integral gives $\delta\cot\delta$, whose Lorentzian continuation is $\chi\coth\chi$.
5. Nonparallel directions retain a positive infrared exponent and become orthogonal.
6. For $v=v'$, mixed line-particle diagrams cancel the cloud logarithm but leave a mass-shell logarithm.
7. Its coefficient is $\gamma(\zeta)$; exponentiation replaces the pole by a branch point.
8. A nonzero $m_\gamma$ replaces the unbounded logarithm by a $K_0(m_\gamma t)$ crossover.

# Independent checks

**Checked (Mathematica and direct algebra):**

- With $u=2\alpha-1$, the denominator in the Feynman-parameter integral becomes $\cos^2(\delta/2)+u^2\sin^2(\delta/2)$, giving
  $$
  \int_0^1\frac{\cos\delta\,\mathrm d\alpha}{\alpha^2+(1-\alpha)^2+2\alpha(1-\alpha)\cos\delta}=\delta\cot\delta
  $$
  for $0\le\delta<\pi/2$.
- The analytic continuation $(\delta\cot\delta-1)|_{\delta=-i\chi}=\chi\coth\chi-1$ has exact zero residual.
- The displayed mass-shell contributions combine as $[4\zeta\coth\zeta-2-2]/8=(\zeta\coth\zeta-1)/2$, reproducing $e^2(\zeta\coth\zeta-1)/(2\pi^2)$.
- $\zeta\coth\zeta-1=\zeta^2/3-\zeta^4/45+2\zeta^6/945+\cdots$, reproducing the tuned small-$\zeta$ coefficient.
- The small-$w$ Bessel expansion reproduces $K_0(w)+\log(w/2)+\gamma_E=\frac{w^2}{4}(1-\gamma_E+\log2-\log w)+\cdots$.

**Failed:** the literal $m_\gamma t\gg1$ running-window statement in the Fig. 3 caption. The equations and body require $m_\gamma t\ll1$; at $m_\gamma t\gg1$, $K_0$ is exponentially suppressed.

**Source-derived:** ultraviolet renormalizability of the dressed composite at the stated perturbative order, the full one-loop momentum-space assembly, the OS-positive Hilbert-space interpretation, and the resummation into the two displayed powers.

**Blocked:** the paper gives no ancillary notebook. The full Clausen-function loop integral, distributional pinch subtraction, and numerical crossover curve were not independently replayed end to end.

**Not independently verified:** the all-orders statement that both infrared exponents are one-loop exact. The conclusion itself says a systematic rigorous proof is deferred to future work; the current argument uses soft-theorem power counting and a charged-matter mass gap.

# Translation to the vault programme

The vector $v$ is not merely a gauge choice: after the massless infinite-volume limit it labels inequivalent charged-cloud sectors. This reinforces the vault distinction between a framed/cut-charged regional algebra and its cut-invariant subalgebra. A sewing prescription that discards the long-range dressing label cannot reconstruct these charged sectors.

At the same time, this paper's “gluing” is state-inner-product gluing after OS reflection. It does not identify a universal current ideal, a complete regional kernel, a Connes fusion kernel, or an exact physical observable-algebra quotient. Any import into regional gauge sewing must retain that categorical distinction.

Back to [[2026_09_09_overview]].
