---
paper id: 2608.16781v1
title: Higher spin dynamics in Weyl reference frame
authors:
  - Gianfranco De Simone
publication date: 2026-08-17T16:30
abstract: |-
  In this manuscript we derive the $w_{1+\infty}$ algebra on an arbitrary null hypersurface located at finite distance. A straightforward integration of the evolution Bianchi identities is performed in a suitable dynamical reference frame, dubbed the Weyl reference frame. In this reference frame, the extraction of the (linear) higher spin charge bracket is similar to the asymptotic null case, except that the corner metric evolves non trivially in time. In other words, boundary degrees of freedom that are frozen at null infinity due to the boundary conditions now become part of the dynamics. This feature is reflected in the appearance of non-local terms in the brackets. In order to avoid the presence of these non-local terms in the charge bracket, we absorb this non-locality - which encodes nothing other than the history of the corner metric - into the definition of the higher spin charges. Moreover, a new perspective on the memory effect at finite distance is suggested. In conclusion, we believe that this treatment can also be applied to asymptotically (A)dS$_{4}$ spacetimes, where the presence of a non-vanishing cosmological constant leads to the introduction of a cosmological reference frame.
comments: ""
url: https://arxiv.org/abs/2608.16781v1
summary: "A Weyl-dressed null frame reorganizes finite-distance corner-memory terms into renormalized higher-spin charges, yielding a linear bulk-sector wedge $w_{1+\infty}$ algebra under strong phase-space and falloff restrictions."
tags: []
---

# Direct verdict

**Correct under the following precise conditions:** the paper obtains the classical linearized wedge $w_{1+\infty}$ bracket from the **bulk** radiative phase space of a finite-distance null hypersurface after moving to a field-dependent Weyl reference frame, fixing the area element, restricting the allowed corner-metric variation, choosing a future-anchored inverse of $\partial_{\tilde v}$, imposing strong falloffs, and freezing the late-time corner conformal factor $\tilde\mu(+\infty,z,\bar z)$.

The result is not a derivation of the complete nonlinear charge algebra. It also does not include the extended-phase-space corner term or its edge modes, and it is not a quantum symmetry statement. These restrictions are especially important for comparison with the vault's Brown--Henneaux, gluing, and moving-boundary questions.

Relevance: **high** (`T1-charge`, `T1-symmetry`, `T1-boundary`, `T1-Wald-CPS`, `T1-symplectic`).

# How to read this long paper

This is a 43-page monograph-style paper. The shortest useful path is:

1. read the Weyl-reference-frame construction and the bulk symplectic form;
2. track the inverse-time derivative and its commutator with the evolving corner derivative;
3. read the renormalized-charge definition before reading the spin-by-spin actions;
4. interpret the final $w_{1+\infty}$ bracket together with its falloff and late-time-geometry assumptions;
5. treat the extended corner symplectic form as an explicitly open problem.

# Paper map

## Geometry and symmetry of null surfaces

The paper first reviews conformal/GHP weights on a null hypersurface $\mathscr H\simeq\mathscr S\times\mathbb R$, introduces the weighted derivative operators, identifies the radiative pair, and defines a dressing time.

## Dynamical reference frames

The embedding field is treated as a dynamical reference frame. A Weyl rescaling combined with a class-III spin/boost transformation defines the Weyl reference frame (WRF), in which the leading expansion $\tilde\varrho$ and the spin coefficient $\tilde\varepsilon$ vanish. The authors then retain only the bulk part of the extended symplectic form.

## Higher-spin charges

The evolution Bianchi identities recursively generate charges $\tilde{\mathcal Q}_s$. Since the evolving corner geometry makes $\partial_{\tilde v}^{-1}$ fail to commute with the angular covariant derivative, the raw charges contain history-dependent terms. These are absorbed into nonlocal renormalized charges $\tilde q_s$.

## Higher-spin bracket

The actions are computed explicitly through spin two and then organized for general spin. At linear order, and after normalizing by the late-time corner conformal factor, the charge bracket takes the wedge $w_{1+\infty}$ form.

# Conventions and dictionary

- metric signature: mostly plus;
- gravitational normalization: $\varkappa=\sqrt{32\pi G}$;
- null dyad: $\ell\cdot n=-1$;
- null surface: $\mathscr H\simeq\mathscr S\times\mathbb R$ with parameter $v$ along the generators;
- $m,\bar m$: complex dyad on the two-dimensional sections $\mathscr S_v$;
- $\varrho$: longitudinal expansion coefficient;
- $\sigma$: longitudinal shear;
- $\lambda$: transverse shear;
- $h$: corner-metric radiative variable, with the restricted variation $\tilde\Delta=-\tfrac12\delta\tilde h$;
- $\eth_{\mathscr C},\eth'_{\mathscr C}$: time-dependent conformal/GHP angular derivatives;
- $\partial_{\tilde v}^{-1}$: a future-anchored integral, not a local inverse operator.

The paper uses $\tilde{\phantom x}$ for WRF-dressed quantities. This dressing is field dependent, so its field-space Maurer--Cartan form participates in the extended symplectic construction.

# Weyl reference frame

For Weyl weights $\omega_0=0$, $\omega_1=-1$, the relevant transformed spin coefficients are

$$
\tilde\varepsilon=e^{\lambda_L}\left(\varepsilon+\partial_v\log\mathbb\Omega+\frac12\mathbb D\lambda_L+\frac{i}{2}\mathbb D\vartheta\right),
\qquad
\tilde\varrho=e^{\lambda_L}\left(\varrho-\partial_v\log\mathbb\Omega\right).
$$

Imposing $\tilde\varrho=0$ and both real components of $\tilde\varepsilon=0$ yields

$$
\mathbb\Omega=\exp\left(\int \varrho\,dv\right),
$$

$$
\lambda_L=-\int\left(\varepsilon+\bar\varepsilon+2\varrho\right)dv,
\qquad
\vartheta=i\int\left(\varepsilon-\bar\varepsilon\right)dv.
$$

The field-dependent time coordinate satisfies

$$
\partial_v\tilde v
=
\exp\left[\int\left(\varepsilon+\bar\varepsilon+2\varrho\right)dv\right]
$$

and hence

$$
\left(\partial_v-\kappa_{(\ell)}+\theta_{(\ell)}\right)\partial_v\tilde v=0.
$$

The WRF should be read as a convenient relational clock/frame for the null evolution equations, not as a proof that the field-dependent coordinate change is innocuous at the corner. The paper itself derives the extended corner contribution and then sets it aside.

# Bulk phase space and its restrictions

The extended symplectic current has the schematic form

$$
\boldsymbol\omega_\chi
=
\boldsymbol\omega
+d\left(\iota_\chi\boldsymbol\theta+
\frac12\iota_\chi\iota_\chi\boldsymbol L\right).
$$

After integration, the last term becomes a codimension-two corner contribution. The calculation that follows discards this corner term and works with the bulk part alone.

The corner metric is then restricted by

$$
\delta\tilde m_a=\bar{\tilde m}_a\tilde\Delta,
\qquad
\delta\tilde q_{ab}
=2\bar{\tilde\Delta}\tilde m_a\tilde m_b
+2\tilde\Delta\bar{\tilde m}_a\bar{\tilde m}_b,
$$

so that

$$
\delta\tilde\Omega=0,
\qquad
\tilde\Delta=-\frac12\delta\tilde h.
$$

On this restricted bulk phase space, the radiative symplectic form is

$$
\tilde\Omega^c_{\tilde{\mathscr H}}
=
\frac{1}{\varkappa^2}
\int_{\tilde{\mathscr H}}
\left(\delta\tilde\sigma\curlywedge\delta\bar{\tilde h}
+\text{c.c.}\right)
\tilde\Omega\,d\tilde v\,d^2\tilde z,
$$

with elementary bracket

$$
\left\{\tilde\sigma(\tilde v,\tilde z),
\bar{\tilde h}(\tilde v',\tilde z')\right\}
=
\varkappa^2\delta(\tilde v-\tilde v')\delta^{(2)}(\tilde z-\tilde z').
$$

This is the exact point at which the result becomes a statement about a restricted bulk sector rather than the full extended phase space.

# Bianchi recursion and finite-distance memory

The evolution Bianchi identities are arranged as a recursion in spin. At null infinity the angular derivative is effectively time independent under the usual boundary conditions. At finite distance the evolving corner metric makes

$$
\left[\partial_{\tilde v}^{-1},\tilde\eth'_{\mathscr C}\right]\neq0.
$$

The inverse derivative is defined with a future endpoint,

$$
\partial_{\tilde v}^{-1}f(\tilde v)
=-
\int_{\tilde v}^{+\infty}f(u)\,du,
$$

so every use requires falloff strong enough to make the integral and integrations by parts well defined. The commutator records the history of the evolving corner connection and gives the nonlocal $\Upsilon$ terms appearing in the charge actions.

The paper's finite-distance memory interpretation is therefore concrete but conditional: it is the history dependence generated by the time-dependent corner derivative in this chosen WRF and future-anchored inverse. It is not yet an invariant classification of all finite-distance gravitational memories.

# Renormalized charges

The linear renormalized spin-$s$ charge is

$$
\tilde q_s^{,1}(\tilde v,\tilde z)
=
\sum_{n=0}^{s}\frac{(-\tilde v)^n}{n!}
\tilde\eth_{\mathscr C}'{}^{n}
\tilde{\mathcal Q}_{s-n}^{,1}.
$$

Using the recursive solution,

$$
\tilde q_s^{,1}
=
\tilde\eth_{\mathscr C}'{}^{s+2}
\sum_{n=0}^{s}\frac{(-\tilde v)^n}{n!}
\partial_{\tilde v}^{,n-s-1}\tilde\sigma.
$$

The time-polynomial subtraction is what replaces the raw dependence on $(\tilde v-\tilde v')$ by dependence on the source time $\tilde v'$ in the linear charge action. The nonlinear renormalization additionally contains the history fields generated by the noncommuting inverse derivative.

For spin two the raw linear kernel is

$$
-\frac{(\tilde v-\tilde v')^2}{2},
$$

and the two subtraction terms reduce it to

$$
-\frac{\tilde v'^2}{2}.
$$

This observation is also the simplest way to diagnose a missing square in one printed spin-two transformation; see the verification log.

# Linear wedge algebra

After imposing the early-time limit defining the celestial charges and normalizing them by the frozen future conformal factor $\tilde\mu_\infty=\tilde\mu(+\infty,z,\bar z)$, the linear bracket takes the wedge form

$$
\left\{\widehat q_s^{,1}(z),\widehat q_{s'}^{,1}(z')\right\}
\sim
\left[(s'+1)\widehat q_{s+s'-1}^{,1}(z)\,\partial_z
-(s+1)\partial_z\widehat q_{s+s'-1}^{,1}(z)\right]\delta^{(2)}(z-z'),
$$

up to the paper's precise spin-weighted-derivative conventions and overall normalization. This is the classical linearized wedge $w_{1+\infty}$ relation. The paper does not establish closure of the full nonlinear transformations, central extensions, integrability on the extended corner phase space, or a quantum operator algebra.

# Equation ledger

| Layer | Input | Operation | Output | Boundary/phase-space condition |
|---|---|---|---|---|
| WRF | $\varrho,\varepsilon$ | Weyl + class III transformation | $\tilde\varrho=\tilde\varepsilon=0$ | integration constants fixed; field-dependent coordinates |
| Clock | $\varepsilon,\bar\varepsilon,\varrho$ | integrate the frame transformation | $\partial_v\tilde v$ | nonzero monotone derivative locally |
| Phase space | dressed null data | vary bulk Einstein symplectic potential | $(\tilde\sigma,\bar{\tilde h})$ pair | $\delta\tilde\Omega=0$; corner term omitted |
| Recursion | evolution Bianchi identities | apply $\partial_{\tilde v}^{-1}$ repeatedly | $\tilde{\mathcal Q}_s$ | future endpoint and falloff |
| Memory | evolving $\tilde q_{ab}$ | commute inverse time derivative with $\tilde\eth'_{\mathscr C}$ | $\Upsilon$ history terms | time-dependent corner connection |
| Renormalization | raw $\tilde{\mathcal Q}_s$ | polynomial and nonlocal subtractions | $\tilde q_s$ | chosen clock origin and inverse prescription |
| Algebra | linear charge action | smear and bracket | wedge $w_{1+\infty}$ | strong falloff, fixed $\tilde\mu_\infty$, linear order |

# Translation to the vault's research program

## What transfers directly

- A field-dependent embedding/clock can simplify a constraint or evolution hierarchy while inducing a nontrivial field-space connection.
- A moving boundary metric changes the angular derivative itself. Inverse evolution operators then acquire memory commutators rather than behaving as scalar Green operators.
- One must distinguish a bulk radiative bracket from the corner-completed extended phase space.
- A charge algebra obtained after freezing an area element and a late-time conformal factor is an algebra on a selected polarization/reduced sector.

These points are immediately relevant to the moving-surface and edge-mode questions in the gluing and covariant-phase-space notes.

## What does not transfer without new work

- The WRF construction is four-dimensional, null, and organized in Newman--Penrose/GHP variables; it is not directly a Brown--Henneaux or timelike-wall construction.
- The paper's nonlocal subtraction is tied to a future-anchored $\partial_{\tilde v}^{-1}$ and does not by itself define a gluing kernel.
- The discarded corner term is precisely where a comparison with embedding-edge-mode variables would have to be completed.
- The final algebra is linearized and classical. It cannot be used as evidence for a nonlinear surface-charge theorem or a quantum Hilbert-space factorization.

# Verification log

## Source-derived

- Source-derived: the official arXiv abstract page and export API identify the current version as `2608.16781v1`, published 2026-08-17T16:30:11Z in `hep-th`.
- Source-derived: the 43-page official PDF and complete TeX source were inspected; the source includes the full derivations and three appendices.
- Source-derived: rendered PDF pages 1, 17, 35, and 42 were visually inspected; formulas, equation numbers, and layout were legible.

## Checked

- Checked: Mathematica verified the binomial convolution

  $$
  \sum_{n=\ell}^{s}
  \frac{(-v)^{s-n}(v-v')^{n-\ell}}
  {(s-n)!(n-\ell)!}
  =
  \frac{(-v')^{s-\ell}}{(s-\ell)!}
  $$

  for every integer pair $0\leq\ell\leq s\leq10$ (66 exact symbolic cases).
- Checked: Mathematica verified the falling-factorial Vandermonde identity used in the general-spin rearrangement for every $0\leq n\leq s\leq10$ (66 exact symbolic cases):

  $$
  \sum_{\ell=n}^{s}
  \frac{(\ell+1)!(\Delta-\ell)_{s-\ell}}
  {(\ell-n)!(s-\ell)!}
  =
  \frac{(n+1)!(\Delta+2)_{s-n}}{(s-n)!}.
  $$

- Checked: the spin-two polynomial subtraction was expanded symbolically and gives $-v'^2/2$ exactly.

## Failed

- Failed: in the WRF condition the source prints $\tilde\varepsilon+\tilde\varepsilon=0$ and $\tilde\varepsilon-\tilde\varepsilon=0$. The derived expressions use $\bar{\tilde\varepsilon}$, so the conditions should read $\tilde\varepsilon\pm\bar{\tilde\varepsilon}=0$.
- Failed: the WRF paragraph prints $\tilde\eth'_{\mathscr C}=\partial_{\tilde v}$. The subsequent evolution equations and the construction itself require the unprimed longitudinal operator $\tilde\eth_{\mathscr C}$ (or the paper's corresponding $\tilde\mathbb D$ operator) to equal $\partial_{\tilde v}$; the printed prime is inconsistent with the later use of $\tilde\eth'_{\mathscr C}$ as an angular derivative.
- Failed: the printed spin-two symmetry action contains $-\tilde v'\tilde\eth'^4_{\mathscr C}\tau_2/2$. The preceding bracket has $-\tilde v'^2\tilde\eth'^4_{\mathscr C}/2$, and the exact polynomial check gives $-\tilde v'^2/2$. The square is missing in that displayed transformation.
- Failed: statements that an arbitrary analytic function of the time derivative integrates to zero are too broad as written. The manipulations are valid for the total-derivative combinations actually used, after repeated integration by parts and the stated endpoint falloffs; analyticity alone is insufficient.

## Blocked

- Blocked: the paper omits the extended corner symplectic term after deriving its existence. Therefore integrability, edge-mode brackets, and the charge algebra on the full embedding-extended phase space cannot be checked from the manuscript.
- Blocked: no explicit nonlinear charge-charge bracket is supplied. The claimed arbitrary-spin algebra can only be audited at the linear level presented.
- Blocked: the suggested extension to asymptotically (A)dS$_4$ is not developed; no cosmological-reference-frame equations or boundary conditions are available to verify.

## Not independently verified

- Not independently verified: the complete Newman--Penrose/GHP Bianchi hierarchy and every Weyl/class-III transformation coefficient.
- Not independently verified: the distributional angular integrations in the general charge bracket beyond the two exact combinatorial identities above.
- Not independently verified: gauge independence of the finite-distance memory interpretation under a different relational clock or inverse-time prescription.
- Not independently verified: existence and global monotonicity of the WRF time coordinate for arbitrary null hypersurfaces; the displayed construction is local and assumes an admissible dressing.

# Bottom line

The paper gives a useful and technically close model for how a dynamical boundary geometry modifies null-surface charges: time-dependent angular transport generates history terms, and a relational frame reorganizes them into renormalized charges. For the vault, the main lesson is methodological. The $w_{1+\infty}$ result is a controlled **linear bulk-sector** statement; completing the corner symplectic form and the nonlinear algebra is the necessary step before importing it into a moving-boundary or gluing theorem.
