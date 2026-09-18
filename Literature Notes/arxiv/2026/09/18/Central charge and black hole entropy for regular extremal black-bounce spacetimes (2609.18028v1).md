---
paper id: 2609.18028v1
title: Central charge and black hole entropy for regular extremal black-bounce spacetimes
authors:
  - Xu Ye
  - Shan-Ping Wu
  - Yu-Kun Zhang
  - Shao-Wen Wei
publication date: 2026-09-16T02:28
abstract: |-
  The paper applies Kerr/CFT-style asymptotic-symmetry calculations to extremal black-bounce analogues of Kerr, Kerr--Newman, and Reissner--Nordstrom. It reports near-horizon Virasoro central charges and Frolov--Thorne temperatures whose Cardy products equal the horizon-area entropies.
comments: "26 pages"
url: https://arxiv.org/abs/2609.18028v1
summary: "The displayed central-charge and Cardy arithmetic is internally consistent, but the covariant charge calculation is not established because no action supporting the black-bounce backgrounds is specified and the 5D RN charge form is dimensionally wrong as written."
tags: []
---

# Verdict

**Incorrect as a covariant-phase-space derivation of the claimed microscopic entropy.** The paper applies pure Einstein and Einstein--Maxwell surface-charge formulas to black-bounce metrics without specifying a diffeomorphism-invariant action and complete matter content for which those metrics are solutions. This is not a cosmetic omission: an xAct component calculation shows that the black-bounce Reissner--Nordström metric has nonzero Ricci scalar for \(\ell\neq0\), whereas four-dimensional source-free Einstein--Maxwell theory has traceless stress tensor and therefore requires \(R=0\).

The statement should be rewritten as:

> For the proposed near-horizon geometries, the standard Kerr/CFT geometric formulas produce formal central charges and temperatures whose Cardy products equal the area-law expressions. To interpret these as covariant charges and microscopic entropies, one must first specify an action admitting each black-bounce background, include every supporting-field contribution to the presymplectic form and charge, establish finite and integrable charges under the stated boundary conditions, and justify the 5D uplift and Cardy regime.

There is a second independent failure in the static charged sector: the paper reuses a four-dimensional two-form Barnich--Brandt charge density after uplifting to five dimensions. In five dimensions the codimension-two charge density is a three-form and is integrated over a three-dimensional boundary. The displayed RN calculation is therefore dimensionally incomplete even before asking whether the uplift solves a specified five-dimensional theory.

# Why this is high priority

This paper sits directly on the boundary between a correct algebraic Kerr/CFT pattern and an unestablished charge construction. The central question is action-first:

$$
\text{background solution}
\longrightarrow
\text{presymplectic potential}
\longrightarrow
\text{surface charge}
\longrightarrow
\text{central extension}.
$$

The source starts at the third arrow. For phenomenological black-bounce metrics, the missing first two arrows cannot be reconstructed from the metric alone.

# Source map

1. **Black-bounce Kerr:** writes the regularized metric, takes an extremal near-horizon limit, imposes Kerr/CFT falloffs, and reads a Virasoro central term from the Einstein-gravity charge form.
2. **Black-bounce Kerr--Newman:** adds a Maxwell potential and a compensating gauge transformation, then combines gravitational and Maxwell charge densities.
3. **Black-bounce Reissner--Nordström:** uplifts the four-dimensional near-horizon metric and gauge fiber to a five-dimensional line element and builds a Virasoro algebra along the fiber.
4. **Frolov--Thorne temperatures:** rewrites thermal weights in near-horizon variables for the rotating cases and through an assumed left/right split in the RN case.
5. **Cardy check:** multiplies each displayed \(c_L\) and \(T_L\) to recover the area-law entropy.

# Formal near-horizon results

## Extremal black-bounce Kerr

The rotating metric is obtained from Kerr by replacing the Boyer--Lindquist radial function with

$$
\rho=\sqrt{r^2+\ell^2}.
$$

Extremality is imposed by \(a=m\), with horizon coordinate

$$
r_e=\sqrt{m^2-\ell^2},
$$

so a real horizon requires \(m^2>\ell^2\). The near-horizon metric is written as

$$
ds^2=\Gamma(\theta)\left(-R^2dT^2+\frac{dR^2}{R^2}+\alpha^2d\theta^2\right)
+\gamma(\theta)(d\phi_1+kR,dT)^2,
$$

with

$$
\Gamma=\frac{m^4(1+\cos^2\theta)}{m^2-\ell^2},
\qquad
\gamma=\frac{4m^2\sin^2\theta}{1+\cos^2\theta},
$$

$$
\alpha=\frac{\sqrt{m^2-\ell^2}}{m},
\qquad
k=\frac{m}{\sqrt{m^2-\ell^2}}.
$$

The proposed Virasoro generators are

$$
\xi_n=-inR e^{-in\phi_1}\partial_R-e^{-in\phi_1}\partial_{\phi_1}.
$$

Using the standard two-derivative Einstein near-horizon expression gives

$$
c_L=\frac{12m^3}{\sqrt{m^2-\ell^2}},
\qquad
T_L=\frac{\sqrt{m^2-\ell^2}}{2\pi m}.
$$

Their product yields

$$
\frac{\pi^2}{3}c_LT_L=2\pi m^2.
$$

## Extremal black-bounce Kerr--Newman

The extremality condition is

$$
a^2=m^2-Q^2,
$$

with \(m^2>Q^2\) and \(m^2>\ell^2\). The source reports

$$
c_L=\frac{12m^2\sqrt{m^2-Q^2}}{\sqrt{m^2-\ell^2}},
$$

$$
T_L=\frac{\sqrt{m^2-\ell^2}(2m^2-Q^2)}
{4\pi m^2\sqrt{m^2-Q^2}},
$$

and hence

$$
\frac{\pi^2}{3}c_LT_L=\pi(2m^2-Q^2).
$$

The Maxwell contribution to the cubic central term is reported to vanish. That result is standard for ordinary Kerr--Newman under the usual boundary conditions, but it cannot simply be transferred to a black-bounce geometry before the additional supporting sector is known.

## Extremal black-bounce Reissner--Nordström

The four-dimensional metric is

$$
ds^2=-f(r)dt^2+\frac{dr^2}{f(r)}+(r^2+\ell^2)d\Omega_2^2,
$$

$$
f(r)=1-\frac{2m}{\sqrt{r^2+\ell^2}}+\frac{Q^2}{r^2+\ell^2},
\qquad
A=-\frac{Q}{\sqrt{r^2+\ell^2}}dt.
$$

At \(m=Q\), the near-horizon geometry has

$$
v_1=\frac{Q^4}{Q^2-\ell^2},
\qquad
v_2=Q^2,
\qquad
A=\frac{Q^2}{\sqrt{Q^2-\ell^2}}R,dT.
$$

The proposed uplift is

$$
ds_5^2=ds_4^2+(dy+A)^2,
\qquad y\sim y+2\pi.
$$

The source then states

$$
c_L=\frac{6Q^4}{\sqrt{Q^2-\ell^2}},
\qquad
T_L=\frac{\sqrt{Q^2-\ell^2}}{2\pi Q^2},
$$

so that

$$
\frac{\pi^2}{3}c_LT_L=\pi Q^2.
$$

# Decisive action-level obstruction

For the black-bounce RN metric, xAct gives

$$
R=
-\frac{2\ell^2\left[Q^2+\rho^2-3m\rho\right]}{\rho^6},
\qquad
\rho=\sqrt{r^2+\ell^2}.
$$

At the extremal horizon \(m=Q\), \(\rho=Q\), this becomes

$$
R\big|_{r_e}=\frac{2\ell^2}{Q^4},
$$

which is nonzero for \(\ell\neq0\).

By contrast, tracing the source-free Einstein--Maxwell equation gives \(R=0\). Therefore the displayed metric and Maxwell potential do not by themselves solve the theory whose gravitational and Maxwell surface-charge formulas the paper uses. Some additional stress tensor or modified gravitational dynamics is required.

That missing sector matters twice:

1. it determines whether the black-bounce metric is an on-shell background at all;
2. its presymplectic potential can contribute to the surface charge and central extension.

The equality \(c_{\rm gauge}=0\) for the displayed Maxwell field does not show that the complete non-gravitational contribution vanishes.

# Charge-algebra gaps

## Triviality is not commutativity

The paper says that \(Q_{\partial_T}\) and certain gauge charges are trivial because their generators commute with the other ASG generators. This inference is false. A central or commuting generator can carry a nonzero charge; ordinary electric charge is the immediate example. Triviality requires the associated charge variation to vanish on the allowed phase space, not merely a vanishing commutator.

For the Kerr/CFT phase space, a zero-energy condition may be imposed as an additional boundary constraint, but it must be stated and checked. It does not follow from algebraic commutativity.

## Five-dimensional form degree

The displayed four-dimensional expression has the structure

$$
k_\xi^{\rm grav}\sim
\epsilon_{\alpha\beta\mu\nu}(\cdots)\,dx^\alpha\wedge dx^\beta,
$$

which is a two-form suitable for integration over a two-dimensional codimension-two surface in four dimensions.

After the uplift, a five-dimensional surface charge must be a three-form integrated over a three-dimensional codimension-two surface. The source nevertheless repeats the four-index epsilon and two-form expression while calling it the five-dimensional generalization. Thus the RN central integral is not correctly defined as written.

## Missing phase-space checks

The paper lists falloffs and leading vector fields but does not establish:

- that the complete on-shell phase space preserves all field equations;
- finiteness of every charge variation;
- integrability in field space;
- conservation or absence of symplectic flux through the boundary;
- quotient by transformations whose charges actually vanish;
- compatibility of the extra supporting matter with the boundary conditions.

Without these, the vector-field Lie bracket is not yet a centrally extended algebra of Hamiltonian charges.

# RN temperature normalization

In the appendix, the source defines

$$
\omega_L=\frac12(\omega+k),
\qquad
\omega_R=\frac12(\omega-k),
$$

and then reads

$$
T_L=\frac{T_H}{1-\Phi_H},
\qquad
T_R=\frac{T_H}{1+\Phi_H}.
$$

This split is a choice, not a consequence of the displayed near-horizon coordinate transformation. Rescaling the fiber coordinate or redefining the left-moving quantum number rescales \(c_L\) and \(T_L\) inversely. A valid RN/CFT construction must fix the circle radius, gauge normalization, charge quantization, Newton constant relation, and five-dimensional action together. The paper fixes \(y\sim y+2\pi\) and \(G_5=2\pi\) by convention but does not derive the uplift as a solution of that theory.

# Independent checks

## Verified with xAct

Using the four-dimensional black-bounce RN metric exactly as displayed, xCoba computed

$$
R=-\frac{2\ell^2(Q^2+\rho^2-3m\rho)}{\rho^6}.
$$

This proves that the \(\ell\neq0\) background is not a source-free Einstein--Maxwell solution. The check used the stated signature and coordinates \((t,r,\theta,\phi)\); no field equation was assumed.

## Verified with Mathematica

Under \(m>\ell\ge0\), \(m^2>Q^2\), and \(Q>\ell\ge0\):

- the standard near-horizon geometric integral reproduces the paper's Kerr and Kerr--Newman central-charge expressions;
- all three displayed Cardy products reduce to \(2\pi m^2\), \(\pi(2m^2-Q^2)\), and \(\pi Q^2\);
- the extremal RN limit of \(T_H/(1-\Phi_H)\) equals \(\sqrt{Q^2-\ell^2}/(2\pi Q^2)\), while \(T_H/(1+\Phi_H)\to0\).

These are algebraic checks inside the source's assumed formulas. They do not verify the underlying covariant charges.

## Assumptions

- \(m^2>\ell^2\) for rotating horizons;
- \(m^2>Q^2\) in the rotating charged case;
- \(Q^2>\ell^2\) for the extremal RN horizon;
- positive \(m\) and \(Q\) when taking square-root branches;
- the stated near-horizon coordinate limits.

## Not verified

- any complete action supporting the black-bounce backgrounds;
- the missing supporting-field symplectic and charge terms;
- the full Barnich--Brandt surface integrals reported in the paper;
- charge finiteness, integrability, conservation, and quotient by zero-charge transformations;
- consistency of the five-dimensional uplift as a solution;
- the dynamical existence, unitarity, modular invariance, or Cardy regime of a dual CFT.

# Source-level errors and typos

- In the Kerr thermal factor, one equation writes \(\Omega_H m\) where the azimuthal quantum number is \(\Omega_H\bar m\).
- In the Kerr--Newman extremal-temperature line, the limit is printed as \(a\to\sqrt{Q^2-m^2}\), inconsistent with the preceding and following condition \(a\to\sqrt{m^2-Q^2}\).
- One Kerr--Newman temperature denominator contains \(m^2-L^2\) instead of \(m^2-\ell^2\).
- The five-dimensional charge density is copied in four-dimensional two-form notation.

# Bottom line

The entropy equalities are real algebraic cancellations, but they are not yet a microscopic derivation. The paper has found a suggestive Kerr/CFT-shaped pattern for the chosen near-horizon metrics. It has not shown that the relevant Virasoro generators possess the claimed Hamiltonian charges in any complete black-bounce theory, and the RN uplift calculation is malformed at the level of differential-form degree.
