---
title: Gauge Field Theory Reference
date: 2026-07-01
summary: "Reference note on gauge-theory conventions, BPHZ renormalization, BRST/BV structure, and anomalies."
---

# Gauge Field Theory Reference

## Conventions

With Hermitian generators $t^a$,

$$\begin{align}
[t^a,t^b]=if^{abc}t^c,\qquad \operatorname{Tr}_r(t^at^b)=T(r)\delta^{ab},\qquad t^at^a=C_2(r)\mathbf{1}_r.
\end{align}$$

For $SU(N)$ in the fundamental representation,

$$\begin{align}
T(F)=\frac12,\qquad C_2(F)=\frac{N^2-1}{2N},\qquad C_2(G)=N.
\end{align}$$

If

$$\begin{align}
D_\mu=\partial_\mu-igA_\mu,
\end{align}$$

then

$$\begin{align}
F_{\mu\nu}=\partial_\mu A_\nu-\partial_\nu A_\mu-ig[A_\mu,A_\nu].
\end{align}$$

Changing the sign in $D_\mu$ changes several downstream signs.

## BPHZ And Renormalizability

The useful BPHZ statement is:

- superficially divergent 1PI subgraphs are subtracted by Taylor polynomials;
- the subtraction is local in external momenta;
- local subtractions correspond to local counterterms;
- in four dimensions, power-counting renormalizability requires a finite operator basis of canonical dimension at most $4$, subject to symmetries.

Canonical dimensions in four dimensions:

$$\begin{align}
[\phi]=1,\qquad [A_\mu]=1,\qquad [\psi]=\frac32,\qquad [\partial_\mu]=1.
\end{align}$$

For an operator $\mathcal O$,

$$\begin{align}
[g_\mathcal O]=4-d_\mathcal O.
\end{align}$$

## Product Groups And Spontaneous Symmetry Breaking

For product gauge groups, keep separate data for each simple or Abelian factor:

- coupling normalization;
- representation carried by each matter field;
- generator normalization and trace convention;
- Abelian charge normalization;
- possible kinetic or theta-term mixing when Abelian factors are present.

Spontaneous symmetry breaking involves:

- the vacuum orbit;
- unbroken generators;
- physical scalar fluctuations and Goldstone directions;
- the gauge-boson mass matrix;
- $R_\xi$ gauge fixing and gauge-Goldstone mixing;
- Goldstone and ghost masses as gauge-parameter dependent bookkeeping fields;
- gauge-parameter independence of observables.

The Standard Model Higgs formulas should be kept together with the sign convention for $D_\mu$.

## Counterterms

For an interaction in four dimensions, the local counterterm structure depends on:

- canonical dimension of the operator;
- Lorentz, gauge, global, and discrete symmetries;
- relevance or irrelevance of the coupling;
- superficially divergent 1PI amplitudes;
- local counterterms with the same quantum numbers and dimension at most $4$;
- Ward or Slavnov-Taylor identities relating gauge-theory counterterms;
- EFT truncation order for irrelevant interactions.

## BRST And BV

Basic BRST is insufficient when:

- the gauge parameter has its own redundancy, as for Abelian 2-form gauge theory;
- the gauge algebra closes only on shell, as in the Poisson sigma model;
- the path-integral gauge-fixing data requires antifields and the BV master equation.

## Topological Terms And Anomalies

Topological terms and anomalies depend on:

- normalization of generators and traces;
- gauge, global, mixed, or gravitational nature of the anomaly;
- consistent versus covariant currents;
- local total-derivative form versus global sectors of theta terms;
- BRST ghost number and descent-equation convention.
