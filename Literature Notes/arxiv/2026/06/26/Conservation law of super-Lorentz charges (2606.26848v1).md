---
paper id: 2606.26848v1
title: Conservation law of super-Lorentz charges
authors:
  - Geoffrey Compère
  - Sébastien Robert
publication date: 2026-06-25T10:35
abstract: |-
  The paper defines supertranslation-invariant super-Lorentz, tail, and peeling-breaking charges in Bondi-Sachs fields and in Beig-Schmidt fields at spatial infinity. It uses homogeneous and inhomogeneous wave equations on the boundary de Sitter spacetime at spatial infinity to derive a conservation law for super-Lorentz charges between the future and past of spatial infinity, under assumptions compatible with generic gravitational scattering.
comments: "44 pages, 1 figure"
url: https://arxiv.org/abs/2606.26848v1
summary: "A spatial-infinity matching construction turns Bondi-Sachs subleading data into supertranslation-invariant super-Lorentz charges with an antipodal conservation law."
tags: []
---

Back to [[2026_06_26_overview]].

# Paper structure and conventions

The paper works at the interface of null infinity, spatial infinity, and timelike infinity. Its goal is to define super-Lorentz charges in a way that is invariant under supertranslations and logarithmic translations, and then derive the matching law that relates the future and past charges.

The source structure is:

- Section 1 states the problem: subleading soft-graviton conservation laws require spatial-infinity control over tails, peeling-breaking data, and logarithmic frame shifts.
- Section 2 develops Bondi-Sachs data at $\mathcal I^\pm$: metric expansion, stress-tensor falloffs, flux-balance identities, generalized BMS frames, and subleading charge aspects.
- Section 3 develops Beig-Schmidt data at spatial infinity $i^0$: expansion, Einstein equations, residual supertranslations/log translations, invariant tensors $I_{ab}$ and $J_{ab}$, and corner asymptotics.
- Section 4 matches null and spatial infinity near the corners $\mathcal I^+_-$ and $\mathcal I^-_+$.
- Section 5 defines asymptotically conserved charges at spatial infinity through Wronskian-type pairings on the boundary de Sitter space.
- Section 6 treats timelike infinities $i^\pm$ using analytic continuation and Euclidean AdS$_3$ boundary data.
- Section 7 compares the resulting conservation laws with leading and logarithmic subleading soft theorems and with Damour's peeling-violation data.
- Appendix A solves the sourced vector wave equation used to subtract the inhomogeneous primitive part of $J_a$.

The main notation is:

- $\mathcal I^+_-$ and $\mathcal I^-_+$: the null-infinity corners adjacent to spatial infinity.
- $\Upsilon$: antipodal map.
- $C_{AB},D_{AB},m,P_A,N_{AB}$: Bondi shear, subleading shear, mass aspect, angular momentum aspect, and news.
- $M_{AB}=M\gamma_{AB}+\widetilde M\epsilon_{AB}$: covariant mass tensor, including the dual mass.
- $\sigma,k_{ab},i_{ab},j_{ab}$: Beig-Schmidt fields.
- $\Phi$: electric potential in $k_{ab}$.
- $k^{(B)}_{ab}$: magnetic component of the leading Beig-Schmidt data.
- $I_{ab},J_{ab}$: second-order tensors dressed to be invariant under residual logarithmic translations and supertranslations.
- $J_a=J_a^{(S)}+\widehat J_a$: split into a primitive inhomogeneous source part and a homogeneous charge-carrying part.
- $p/q$ parity on $dS_3$: controls antipodal signs between the two ends of spatial infinity.
- $E/B$ parity on $S^2$: separates superboost and superrotation parts.

# Bondi-Sachs data and subleading aspects

Near $\mathcal I^\pm$, the Bondi-Sachs expansion supplies the radiative shear $C_{AB}$, the news $N_{AB}=\partial_u C_{AB}$ or $\partial_v C_{AB}$, the mass aspect $m$, and subleading angular data. The paper allows polyhomogeneous behavior, so tails and logarithmic terms are not simply discarded.

The flux-balance laws relate changes of the Bondi mass and angular aspects to matter stress tensor components and gravitational radiation. The subleading data are organized into:

- supermomentum and dual supermomentum at leading order;
- super-Lorentz aspects at subleading order;
- leading tail charges;
- leading peeling-breaking charges.

The construction is sensitive to the fact that the super-Lorentz aspects are not purely local functions of the radiative data; they are defined after matching to spatial-infinity fields and after subtracting source-dependent inhomogeneous pieces.

# Beig-Schmidt fields at spatial infinity

At spatial infinity the expansion is written over the boundary de Sitter space $dS_3$. The Beig-Schmidt equations determine the leading field $\sigma$, the tensor $k_{ab}$, and the second-order tensors $i_{ab},j_{ab}$ with residual gauge transformations.

The important dressed objects are $I_{ab}$ and $J_{ab}$. They are built so that residual logarithmic translations and supertranslations do not shift the physical charge data. In vectorized form, $I_a$ and $J_a$ obey wave-type equations on $dS_3$. The homogeneous part of $J_a$ carries the super-Lorentz charge, while the inhomogeneous primitive part is determined by sources and must be subtracted.

This is the central structural move of the paper:

$$\begin{align}
J_a=J_a^{(S)}+\widehat J_a.
\end{align}$$

The charge should be read from $\widehat J_a$, not from the raw $J_a$.

# Matching null and spatial infinity

The matching analysis expands coordinates near the corners and expresses Bondi-Sachs fields in terms of Beig-Schmidt fields. The leading-order matching relates mass and shear data antipodally. At subleading order, the matching gives the super-Lorentz conservation statement.

The key output is the antipodal relation between the relevant Bondi subleading angular data:

$$\begin{align}
\Upsilon^*N_A^{+(0)}=-N_A^{-(0)},
\end{align}$$

with equivalent logarithmic matching forms. The sign and the subtraction scheme are important: some leading terms cancel antipodally, while logarithmic subleading terms can carry the opposite parity.

For local use, the matching should be viewed as a corner gluing condition between two asymptotic phase spaces. It is not a finite-radius boundary condition and it is not a local-in-retarded-time balance law.

# Wronskian charges at spatial infinity

The charges at spatial infinity are written as bilinear Wronskian-type integrals over $S^2(\tau)$ cuts of the $dS_3$ boundary. The leading charges include:

- $Q^T[k^{(B)}]$ for magnetic leading data;
- scalar charges $Q^S[\sigma]$ and $Q^S[\Phi]$;
- vector charges paired with a test field $\chi_a$.

The super-Lorentz charge is read from the homogeneous vector part:

$$\begin{align}
Q^V_\chi[\widehat J].
\end{align}$$

The charge conservation statement is asymptotic: the charge extracted at one end of spatial infinity matches the antipodal charge extracted at the other end after the source subtraction and parity identifications have been made. It is not a statement that the raw fields are conserved at every intermediate $\tau$.

# Timelike infinities and scattering data

The timelike-infinity analysis analytically continues the Beig-Schmidt setup to Euclidean AdS$_3$-type boundary data. This is used to connect massive particle data, logarithmic deviation vectors, and the scattering interpretation of the spatial-infinity charges.

The paper derives the logarithmic frame shift

$$\begin{align}
L_+^\mu-L_-^\mu=-4P^\mu,
\end{align}$$

where $P^\mu$ is the total four-momentum. This frame shift enters the subleading soft comparison and is part of why super-Lorentz conservation is not a purely local null-infinity statement.

The soft-theorem comparison separates:

- leading displacement-memory/Weinberg soft behavior;
- logarithmic subleading soft behavior;
- tail terms that cancel only under stated matching hypotheses;
- peeling-violation terms, including a factor-two discrepancy with Damour's convention that the paper flags rather than hides.

# Local CPS and charge translation

For the vault's CPS and boundary-charge projects:

- $\mathcal I^\pm$ and $i^0$ replace a finite boundary collar by an asymptotic corner system.
- The asymptotic phase space is the space of Bondi-Sachs and Beig-Schmidt data modulo residual gauges.
- $I_{ab}$ and $J_{ab}$ are dressed observables; their construction is the analog of choosing gauge-invariant boundary/corner data before defining a charge.
- $Q^V_\chi[\widehat J]$ is CPS-adjacent but not a Wald generator derived from an explicit finite-cut presymplectic current in this paper.
- The subtraction $J_a-J_a^{(S)}$ is analogous to removing non-integrable flux/source pieces before reading an integrable charge.
- The charge law is a corner matching law, while the null-boundary notes usually need a flux/balance law on finite cuts.

The result is directly relevant to the current charge project because it supplies a detailed example where subleading gravitational charges are only well defined after dressing, source subtraction, and antipodal corner matching.

# Verification log

## Checked

No independent Mathematica, xAct, or Sage check was completed for this paper during the run. The source structure, formulas, and equation roles were extracted from official arXiv HTML/PDF/abs sources.

## Blocked

The following checks remain blocked by scope and time:

- Re-deriving the Bondi-Sachs Einstein identities and flux-balance equations from the metric expansion.
- Verifying the transformation invariance of $I_{ab}$ and $J_{ab}$ under the residual transformations.
- Checking the wave equations for $I_a,J_a$ and the Wronskian conservation law on $dS_3$.
- Reproducing the null-spatial coordinate matching to the displayed subleading order.
- Verifying the soft-theorem algebra and the tail-cancellation hypotheses.

These are checkable in principle with tensor algebra/xAct plus a careful component setup, but no such setup was completed.

## Failed

No failed check was found. The detailed claims in the note are source-derived and should not be treated as independently verified.
