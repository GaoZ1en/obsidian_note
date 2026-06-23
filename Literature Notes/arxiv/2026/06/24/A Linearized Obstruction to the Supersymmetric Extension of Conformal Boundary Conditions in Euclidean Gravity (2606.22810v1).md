---
paper id: 2606.22810v1
title: A Linearized Obstruction to the Supersymmetric Extension of Conformal Boundary Conditions in Euclidean Gravity
authors:
  - Xingyang Yu
publication date: 2026-06-22T03:39
abstract: |-
  Witten's conformal boundary condition fixes the boundary conformal class and mean curvature in the finite-boundary Euclidean gravitational path integral, leaving the trace-free extrinsic curvature as the conjugate response. The paper argues that in four-dimensional linearized minimal supergravity, no local or pseudodifferential half-dimensional gravitino boundary condition closes the preserved chiral supersymmetry while keeping this bosonic conformal data fixed at highest-derivative order; the obstruction is a Dirichlet-Neumann mismatch involving the trace-free extrinsic curvature.
comments: "30 pages, no figures; ancillary Python/NumPy verification scripts included"
url: https://arxiv.org/abs/2606.22810v1
summary: "This paper gives a finite-boundary supergravity obstruction showing how Witten/York conformal boundary data behave as a source-response polarization rather than just a list of fixed components."
tags: []
---

# What this paper does

This note was created from [[overview]].

The paper studies whether Witten's conformal boundary condition for finite-boundary Euclidean gravity admits a linear half-supersymmetric completion in minimal supergravity. The bosonic boundary condition fixes the boundary conformal class and mean curvature, while leaving the trace-free extrinsic curvature $K_{ab}^{\mathrm{tf}}$ as the conjugate response. The source-derived conclusion is negative in four dimensions at the flat-half-space, highest-derivative boundary-symbol level.

The result is not stated as a global or nonlinear no-go theorem. The paper explicitly leaves open nonlinear supercovariant boundary terms that tie $K_{ab}^{\mathrm{tf}}$ to gravitino bilinears.

## Setup and conventions

The local model is the linearized Euclidean gravitational boundary problem on a flat half-space. The bosonic fields are metric perturbations $h_{\mu\nu}$, with Greek indices in the bulk and Latin indices tangent to the boundary. The gauge-fixed Einstein operator is treated at principal-symbol level in de Donder gauge.

The Witten/York conformal data are source-derived as:

- fixed trace-free boundary metric perturbation, schematically $h_{ab}^{\mathrm{tf}}|=0$;
- fixed mean-curvature variation, represented in the HTML by a principal row of the form $\mathcal K(h):=\partial_\perp\tau-2\partial^a h_{\perp a}=0$;
- de Donder gauge rows $T_\mu(h)|=0$.

The supergravity fields are the linearized pair $(h_{\mu\nu},\psi_\mu)$. At principal order, the source uses variations of the form

$$\begin{align}
\delta_\varepsilon h_{\mu\nu}=\bar\varepsilon\gamma_{(\mu}\psi_{\nu)},\qquad \delta_\varepsilon\psi_\mu=\frac14\omega_\mu{}^{mn}(h)\gamma_{mn}\varepsilon .
\end{align}$$

The paper uses normal chirality projectors $P_\pm^\perp=(1\pm\gamma^\perp)/2$ and preserves one chiral half of supersymmetry.

## Technical skeleton

The argument has three layers.

First, the paper redoes the local Lopatinski-Shapiro test: full Dirichlet metric data fail because nonzero decaying boundary-localized modes survive at every nonzero tangential momentum, while conformal/York data pass because the trace-free boundary metric and mean-curvature row remove the corresponding principal-symbol modes.

Second, forward supersymmetry closure of $h_{ab}^{\mathrm{tf}}|=0$ forces a chiral tangential gravitino datum, source-derived as $P_-^\perp\psi_a|=0$ for the preserved $P_+^\perp\varepsilon=\varepsilon$ half. The paper says APS-type spectral conditions do not provide this normal-chirality datum.

Third, applying supersymmetry back to this chiral gravitino datum produces the normal-tangential spin connection. Its gauge-invariant quotient is the trace-free extrinsic curvature $K_{ab}^{\mathrm{tf}}$. That is precisely the variable left free by the conformal boundary condition as a Neumann response.

## Formalism map to my projects

The useful translation is:

- boundary conformal class = source;
- mean curvature = source;
- $K_{ab}^{\mathrm{tf}}$ = response/conjugate momentum;
- chiral tangential gravitino datum = attempted fermionic source tied to the bosonic source;
- obstruction = supersymmetry tries to turn a response into fixed Dirichlet-type data.

This is directly relevant to CPS and edge-mode notes because it treats a boundary condition as a symplectic polarization. The lesson is to identify source, response, and gauge quotient before trying to complete a boundary multiplet or impose a charge-generating boundary condition.

For AdS/CPS work, this is an obstruction template, not an AdS theorem. The source setting is a finite boundary and a local high-momentum half-space test. Asymptotic AdS supersymmetric Dirichlet problems and holographic renormalization are different boundary-value problems.

## Symplectic structure, charges, or boundary data

The paper is not primarily a charge-construction paper. Its boundary data are nevertheless symplectic in the sense that the conformal boundary condition leaves a conjugate response free. The central variable for transfer is $K_{ab}^{\mathrm{tf}}$, interpreted source-derived as the response conjugate to the conformal boundary metric data.

The charge/CPS relevance is therefore indirect but sharp: if a boundary supersymmetry condition fixes $K_{ab}^{\mathrm{tf}}$, it changes the boundary polarization. A future super-York construction should be checked as a graph condition relating this response to fermion bilinears, not as an independent extra Dirichlet row.

## Key formulas and derivations

Source-derived formulas and objects:

- Witten/York data fix $[h_{ab}]$ and $K$, leaving $K_{ab}^{\mathrm{tf}}$ free.
- Principal bosonic rows include $h_{ab}^{\mathrm{tf}}|=0$, a mean-curvature row, and de Donder rows.
- Preserved supersymmetry is selected by normal chirality.
- Forward closure forces $P_-^\perp\psi_a|=0$.
- Reverse variation gives a term source-described as $\delta(P_-^\perp\psi_a|)\sim\omega_a{}^{b\perp}\gamma_b\varepsilon$.
- The gauge-invariant quotient of this normal-tangential spin-connection data is $K_{ab}^{\mathrm{tf}}\in S^2_0(T^*\partial X)$.

Theorem 4.1 is source-derived as a pointwise nonzero-tangential-momentum statement: no half-dimensional vector-spinor boundary datum, including local, pseudodifferential, APS/Calderon-type, or data mixing $\psi_\perp$ and $\psi_a$, closes both directions of the preserved supersymmetry while keeping the conformal bosonic data fixed.

## Mathematica/xAct/Sage checks

No Mathematica, xAct, Sage, or ancillary-script verification was run in this daily screening.

Possible future checks:

- reproduce the finite-dimensional gamma-matrix rank calculations listed in the paper's ancillary files;
- use xAct to verify the relation between $\omega_a{}^{b\perp}$ and the linearized extrinsic curvature;
- check the dimension and quotient of $S^2_0(T^*\partial X)$ modulo boundary conformal Killing image in low dimensions.

## Source-derived

- The paper's result is a four-dimensional, linearized, flat-half-space, highest-derivative obstruction.
- The obstruction survives local, pseudodifferential, APS-type, and compensating-gauge variations at the stated symbol level.
- The natural chiral/Robin completion is described as LS-elliptic and BRST-compatible at highest-derivative order, so the failure is not merely an ellipticity or rank-counting failure.
- In three dimensions the local flat-half-space obstruction vanishes because the relevant trace-free residue is pure boundary-diffeomorphism gauge, but the paper does not claim a global three-dimensional theorem.

## Checked

- Official arXiv metadata, abstract, comments, category, and ancillary-file listing were checked from the arXiv abs page.
- The HTML introduction, setup, local argument outline, and section structure were inspected.
- The note's local-project interpretation was checked only for consistency with the source claims and the screening profile.

## Not independently verified

- I did not run the author's `verify_all.py` or related NumPy scripts.
- I did not render the PDF.
- I did not independently prove the LS condition, BRST compatibility, or gamma-matrix rank statements.
- I did not verify any nonlinear supergravity boundary action or any AdS extension.

## Possible extensions

1. Reproduce the finite-dimensional symbol calculation in a local Mathematica or Python notebook, then store only the result in a project note.
1. Compare this obstruction with the local supergravity boundary conditions in older D'Eath-Esposito and van Nieuwenhuizen-Vassilevich treatments.
1. Translate the source/response story into the finite-boundary CPS notation used in the vault.
1. For AdS3/CS projects, check whether the analogue of $S^2_0/\operatorname{im}\mathrm{CK}$ survives as genuine response data or is replaced by holonomy/global super-Virasoro data.

## Reading use

Read the introduction and Section 2 first for the conformal boundary polarization. Then read the local no-go argument and theorem statement. Treat the ancillary scripts as the next verification target if this paper becomes part of an active derivation.
