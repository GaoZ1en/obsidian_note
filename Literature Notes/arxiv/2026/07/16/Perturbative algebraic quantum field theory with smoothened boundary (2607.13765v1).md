---
paper id: 2607.13765v1
title: Perturbative algebraic quantum field theory with smoothened boundary
authors:
  - Kasia Rejzner
  - Michele Schiavina
publication date: 2026-07-15T12:28
abstract: |-
  The paper embeds BV--BFV boundary data into perturbative algebraic quantum field theory on globally hyperbolic Lorentzian spacetimes with marked hypersurfaces. A compact region is represented by a smooth cutoff collar, whose derivative carries the generalized Noether current obstructing the ordinary master equation. Retarded and advanced Møller transport then produce quantum BFV corrections, a current-valued curved homotopy Lie structure, and a causal-cylinder comparison with Cattaneo--Mnev--Reshetikhin, Abelian Yang--Mills, Hollands, and Kugo--Ojima constructions.
comments: "62pp + refs"
url: https://arxiv.org/abs/2607.13765v1
summary: "A framework-level bridge from local BV/CPS boundary currents to pAQFT, whose reusable architecture is important but whose v1 sign, normalization, and Abelian-YM formulas require correction before direct use."
tags: []
---

[[2026_07_16_overview|Back to the daily overview]]

This paper directly fills the gauge-theory gap in `Articles/Quantization in AdS/perturbation/cps-paqft-formalism/cps_paqft_complete_formalism_v1.md`: the local note develops gauge-free matter pAQFT on a fixed background and explicitly excludes BV--BRST and dynamical gauge systems, whereas this paper puts BV--BFV currents, modified master equations, and causal hypersurfaces into the pAQFT construction.

The framework is worth keeping. The printed v1 formulas are not safe to import verbatim. The source-order audit below finds several convention changes and genuine algebraic failures, including a non-nilpotent printed Abelian-YM differential. I therefore separate the invariant architecture from the formulas that require an erratum.

## How to read this long paper

- **Essential route:** Sections 2.2--2.4, 3.2--3.3, 4.1--4.3, 5.1, and 5.3. These carry the local-current distinction, AMWI, smoothened boundary, modified QME, retarded/advanced BFV corrections, and the Abelian-YM test.
- **Technical reference:** Section 2.1 for Green operators and wavefront-compatible functionals; Section 5.2 for CMR ordering/polarization; Appendix A for the intended graded-sign ledger. Appendix A must be read critically because its statement and proof disagree.
- **Interpretive route:** Section 5.4 translates the past boundary current into Hollands' interacting BRST charge and the Kugo--Ojima cohomology language.
- **Optional background:** The introductory comparison with factorization algebras and the broad deformation-quantization review can be skipped on a first pass.

## Complete source structure

| Source part | Construction and later use |
|---|---|
| Section 1 | Poses the bridge among Lorentzian pAQFT, factorization/locality, and local BV--BFV; states the smoothened-hypersurface strategy. |
| Section 2.1 | Fixes Green-hyperbolic operators, retarded/advanced propagators, causal and Dirac propagators, Hadamard functions, and regular/local/multilocal functionals. |
| Section 2.2 | Introduces the variational bicomplex, local densities, generalized Lagrangians and currents, and the source versus standard functional derivative. |
| Section 2.3 | Packages the BV field space as a shifted cotangent theory with degree $-1$ symplectic density and antibracket. |
| Section 2.4 | Extends to relative BF$^k$V data and relates densitized and integrated master equations. |
| Section 3.1 | Separates linear and minimal free/interacting splittings; the latter isolates the Koszul--Tate differential. |
| Section 3.2 | Builds the free classical and quantum BV theories, the $H$- and time-ordered presentations, the AMWI anomaly, the renormalized BV operator, and higher brackets. |
| Section 3.3 | Introduces formal $S$-matrices, retarded/advanced Møller maps, $\star_V$, interacting BV operators, and the ordinary QME/Maurer--Cartan interpretation. |
| Section 4.1 | Replaces a sharp boundary by $(C,N,f)$; defines collar-supported currents and their sharp limit. |
| Section 4.2 | Formulates the modified QME and the retarded/advanced quantum BFV corrections. |
| Section 4.3 | Interprets the nonzero current as the curvature of the AMWI homotopy Lie structure. |
| Section 5.1 | Splits the current between thickened past and future Cauchy surfaces and reduces the corrections to charge commutators. |
| Section 5.2 | Compares pAQFT deformation quantization with CMR boundary quantization and Cauchy-data polarizations. |
| Section 5.3 | Works out nonminimal Abelian Yang--Mills, its boundary two-form/action, geometric quantization, and the leading Peierls-to-BFV match. |
| Section 5.4 | Connects the past current to Hollands' BRST charge, on-shell cohomology, and Kugo--Ojima representations. |
| Appendix A | Attempts to prove the graded local-density and source/standard-bracket identities used in Section 4. |

The source PDF was inspected at the presentation table, the smoothened-region figure, the modified-QME/curved-$L_\infty$ pages, the causal-cylinder figure, the Abelian-YM calculation, the Hollands comparison, and Appendix A. This visual inspection fixes what the PDF actually prints; it is not counted as an independent mathematical check.

## Global notation and convention dictionary

| Object | Paper meaning | Local translation or warning |
|---|---|---|
| $M$ | Globally hyperbolic Lorentzian spacetime | Fixed background throughout this paper. |
| $C'\Subset C\subset M$ | Bulk core inside a compact region | $C$ is the desired sharp region; $C'$ is where the cutoff is exactly one. |
| $f\in C_c^\infty(M)$ | Cutoff with $f=1$ on $C'$ | $df$, not a literal boundary delta, carries the off-shell collar data. |
| $N=(\operatorname{supp}f)^\circ\setminus C'$ | Smoothened boundary collar | In a sharp sequence, $df_n$ tends distributionally toward $\partial C$. |
| $\delta,d$ | Field-space and spacetime differentials | The source/standard distinction is a variational-bicomplex issue before EOM. |
| $\boldsymbol\theta_{\mathbf F}$ | Local potential current in $\delta\mathbf F$ | CPS presymplectic-potential current. |
| ${\ ,\ \}^{\rm src}$ | Bracket from source/Euler derivatives | A local-density bracket defined before integrating cutoff improvements. |
| ${\ ,\ \}^{\rm std}$ | Bracket from complete functional derivatives | The bracket that directly sees $df$-supported terms. |
| $\sim$ | Equality modulo cutoff-collar terms | Not an EOM or on-shell equivalence. |
| $L=L_0+V$ | Free/interacting splitting | Minimal splitting has $Q_{00}=\delta_{KT}$; linear splitting retains linear BRST. |
| $H,\Delta^+$ | Hadamard data and two-point function | Defines the Wick presentation $\star_H$. |
| $\mathcal T$ | Renormalized time-ordering map | Its presentation deforms the free BV differential by the anomaly. |
| $A(V)$ | AMWI anomaly | Do not confuse with the Yang--Mills gauge potential $A$. |
| $R_{V,*},A_{V,*}$ | Retarded/advanced Møller maps | Transport free observables and differentials to the interacting theory. |
| $J^{\rm src},J^{\rm std}$ | Source and integrated generalized Noether currents | Ghost-number-one BV/BFV currents, not yet ordinary $Q_\xi$ surface charges. |
| $J_V^{\rm std}$ | Adjusted interacting current | Includes the mismatch $B_0(V)=Q_0V-\{L_0,V\}^{\rm std}$. |
| $\overrightarrow\Omega_J,\overleftarrow\Omega_J$ | Quantum BFV corrections | Retarded/advanced failure of $J$ to multiply classically. |
| $Q_{00}$ | Minimal free Koszul--Tate differential | Its cohomology implements free equations of motion. |
| $J^-,J^+$ | Past/future collar pieces on a causal cylinder | Candidate past/future BRST/BFV generators. |

## Local densities, cutoff currents, and the two brackets

The local variational split is

$$\begin{align}
\delta\mathbf F=\delta^{\rm src}\mathbf F+d\boldsymbol\theta_{\mathbf F}.
\end{align}$$

For a smeared functional $F[f]=\int_M\mathbf F f$, integration by parts gives

$$\begin{align}
\delta F[f] =\int_M\delta^{\rm src}\mathbf F\,f-\boldsymbol\theta_{\mathbf F}\,df.
\end{align}$$

Thus a Hamiltonian density relation of the form

$$\begin{align}
\iota_{X_{\mathbf F}}\boldsymbol\omega =\delta\mathbf F+d\boldsymbol\theta_{\mathbf F}
\end{align}$$

becomes, after smearing,

$$\begin{align}
\iota_{X_{F[f]}}\Omega =\delta F[f]-\theta_F[df].
\end{align}$$

This is the paper's basic CPS move: the local potential current becomes an explicit collar term rather than being discarded as a total derivative.

The source bracket uses the Hamiltonian/source data; the standard bracket uses complete functional derivatives. Their intended relation is schematically

$$\begin{align}
\left\{F[f],G[f]\right\}^{\mathrm{std}} & =\left\{F[f],G[f]\right\}^{\mathrm{src}}+\text{(fdf)-supported contractions with } (\theta _{F},\theta _{G})
\end{align}$$

The exact graded signs in Appendix A are not reliable as printed; the invariant lesson is that the two brackets coincide in the bulk but differ on the smoothened boundary.

For a BV Lagrangian density, the densitized CME produces a current,

$$\begin{align}
\frac12\iota_Q\iota_Q\boldsymbol\omega=d\mathbf J^{\rm src}.
\end{align}$$

Smearing gives the characteristic factor

$$\begin{align}
\frac12\{L[f],L[f]\}^{\rm src} =-2J^{\rm src}[fdf].
\end{align}$$

The paper defines the standard current by

$$\begin{align}
J^{\rm std}[fdf] =2J^{\rm src}[fdf]-(\iota_Q\theta)[fdf],
\end{align}$$

so the intended integrated obstruction is

$$\begin{align}
\frac12\{L[f],L[f]\}^{\rm std}=-J^{\rm std}[fdf].
\end{align}$$

This is the off-shell current ledger to preserve locally. A later printed descent formula changes its sign and fails the defining algebra; that failure is recorded below.

## BV hierarchy and free/interacting splittings

The BV field space is modeled as a degree-shifted cotangent bundle, with a degree-$-1$ local symplectic density and degree-$+1$ antibracket. The field content is organized so that $Q$ contains equations of motion, gauge transformations, ghosts, and antifields in one cohomological vector field.

Two splittings matter:

- the **linear splitting** retains the quadratic action and linearized gauge transformation, giving $Q_0=\delta_0+\gamma_0$;
- the **minimal splitting** keeps only the antifield-free quadratic action in $L_{00}$, so $Q_{00}=\delta_{KT}$ and the free current vanishes.

For the linear splitting, the Hessian $D$ and gauge operator $K$ satisfy the compatibility needed for a Green-hyperbolic gauge-fixed system. The causal propagator $\Delta=\Delta^R-\Delta^A$ induces the Peierls bracket. These identities are the bridge from the BV complex to the pAQFT algebra, but several displayed Section 3 formulas omit terms or right-hand sides; the safe route is to reconstruct them from the definitions rather than quote the propositions.

## Two quantum presentations and the AMWI

The abstract algebra is represented in two useful ways:

| Abstract structure | $H$-presentation | $\mathcal T$-presentation |
|---|---|---|
| quantum product | $\star_H$ | $\star_{\mathcal T}$ |
| time-ordered product | $\mathcal T$ | pointwise product $\cdot$ |
| free quantum BV operator | $Q_0$ | $Q_{0,\mathcal T}=Q_0-i\hbar\Delta_0^{\rm ren}$ |

The anomalous Master Ward identity is

$$\begin{align}
Q_0\,\mathcal T e^{iF/\hbar} =\frac{i}{\hbar}\mathcal T\left[ \left(Q_0F+\frac12\{F,F\}^{\rm std}-i\hbar A(F)\right)e^{iF/\hbar} \right].
\end{align}$$

Define

$$\begin{align}
\kappa(F):=\mathsf{QME}(F) =Q_0F+\frac12\{F,F\}^{\rm std}-i\hbar A(F).
\end{align}$$

Using $\kappa$, rather than the paper's later changing $J$-normalization, keeps the algebra unambiguous. The renormalized free BV Laplacian is consistently normalized by

$$\begin{align}
\Delta_0^{\rm ren} =\frac{i}{\hbar}(Q_{0,\mathcal T}-Q_0).
\end{align}$$

Differentiating the exponential generates all derivatives of $\kappa$. For $F=F_1\cdots F_n$, the product rule necessarily contains every nonempty subset of insertions:

$$\begin{align}
Q_{0,\mathcal T}\!\left(\prod_{i=1}^nF_i\right) =\sum_{\varnothing\ne I\subseteq\{1,\ldots,n\}} \epsilon(I) \left(\frac{\hbar}{i}\right)^{|I|-1} \kappa^{(|I|)}(0)[F_I] \prod_{j\notin I}F_j.
\end{align}$$

This formula is important because Proposition 3.19 omits lower anomaly derivatives. In particular,

$$\begin{align}
\kappa''(V)=\{\ ,\ \}^{\rm std}-i\hbar A''(V), \qquad \kappa^{(n)}(V)=-i\hbar A^{(n)}(V),\quad n\ge3.
\end{align}$$

These factors must also appear in the homotopy brackets.

## Møller transport and the interacting BV differential

For an interaction $V$, the hybrid $H$-presentation retarded map is

$$\begin{align}
R_{V,H}(F) =(\mathcal T e^{iV/\hbar})^{-1}\star_H \mathcal T(e^{iV/\hbar}F),
\end{align}$$

with the advanced map obtained by reversing the side on which the inverse $S$-matrix acts. The interacting product is transported by

$$\begin{align}
F\star_VG =R_{V,*}^{-1}\bigl(R_{V,*}F\star_*R_{V,*}G\bigr).
\end{align}$$

The retarded and advanced interacting BV operators are

$$\begin{align}
Q_V^R=R_V^{-1}Q_0R_V, \qquad Q_V^A=A_V^{-1}Q_0A_V,
\end{align}$$

and the auxiliary operator is

$$\begin{align}
\widehat Q_V(F) =e^{-iV/\hbar}Q_{0,\mathcal T}(Fe^{iV/\hbar}).
\end{align}$$

Without a boundary, $\kappa(V)=0$ is the ordinary QME. It makes $V$ a Maurer--Cartan element and removes the difference between retarded and advanced bulk differentials. When $\kappa(V)\ne0$, the unit failure is

$$\begin{align}
\widehat Q_V(1)=\frac{i}{\hbar}\kappa(V).
\end{align}$$

This is the algebraic slot into which the boundary current enters.

## A boundary is replaced by the cutoff collar

A smoothened region is a triple

$$\begin{align}
(C,N,f), \qquad N=(\operatorname{supp}f)^\circ\setminus C',
\end{align}$$

where $C'\Subset C$, $f=1$ on $C'$, and $C\subset\operatorname{supp}f$. The relative BV data obey

$$\begin{align}
\iota_{Q[f]}\Omega =\delta L[f]-\theta[df],
\end{align}$$

and the standard CME is obstructed by a collar current,

$$\begin{align}
\frac12\{L[f],L[f]\}^{\rm std} =-J^{\rm std}[fdf].
\end{align}$$

For a sequence $f_n$ approaching the characteristic function of $C$, convergence means

$$\begin{align}
J[f_n,df_n]\longrightarrow\pi^*L^\partial, \qquad \delta\theta[df_n]\longrightarrow\pi^*\Omega^\partial.
\end{align}$$

This is a controlled way to retain boundary data while continuing to use compactly supported pAQFT interactions. It does not yet solve corner ambiguities or establish the distributional limit in every theory.

## Modified QME and the adjusted current

The abstract modified QME is intended to be

$$\begin{align}
\left(\mathcal Q_0+\frac{i}{\hbar}(\cdot)\circ_{\mathcal T}\mathcal J\right) \mathcal S(V)=0.
\end{align}$$

In a fixed functional normalization, its safe content is

$$\begin{align}
\kappa(V[f])=-J[d\eta(f)].
\end{align}$$

Equivalently,

$$\begin{align}
Q_{0,\mathcal T}[f]e^{iV[f]/\hbar} =-\frac{i}{\hbar}J[d\eta(f)]e^{iV[f]/\hbar}.
\end{align}$$

For a free/interacting split, the current relevant to the interaction is

$$\begin{align}
J_V^{\rm std} =J^{\rm std}-J_0^{\rm std}-B_0(V), \qquad B_0(V)=Q_0(V)-\{L_0,V\}^{\rm std}.
\end{align}$$

The term $B_0(V)\sim0$ is only bulk-equivalent to zero. It is exactly the kind of off-shell boundary mismatch that the local gravitational-charge workflow should not discard before constructing the ledger.

## Retarded and advanced quantum BFV corrections

Under the convention $\kappa(V)=-J$, define

$$\begin{align}
\overrightarrow\Omega_J(F) =J\star_VF-J\cdot F,
\end{align}$$

$$\begin{align}
\overleftarrow\Omega_J(F) =F\star_VJ-J\cdot F.
\end{align}$$

Then the interacting observable operators have the intended form

$$\begin{align}
Q_V^R =Q_0+\{V,\cdot\}^{\rm std} -i\hbar\Delta_V^{\rm ren} +\frac{i}{\hbar}\overrightarrow\Omega_J,
\end{align}$$

$$\begin{align}
Q_V^A =Q_0+\{V,\cdot\}^{\rm std} -i\hbar\Delta_V^{\rm ren} +\frac{i}{\hbar}\overleftarrow\Omega_J.
\end{align}$$

Their difference is

$$\begin{align}
(Q_V^R-Q_V^A)F =\frac{i}{\hbar}[J,F]_{\star_V},
\end{align}$$

with the graded commutator understood. This is the cleanest boundary-charge formula in the paper: the past/future distinction is entirely carried by how the current multiplies in the interacting algebra.

The state/observable relation should exchange retarded and advanced choices:

$$\begin{align}
\widetilde Q_{J,H}^{R/A}\, \mathcal T(e^{iV/\hbar}F) =\mathcal T\bigl((Q_V^{A/R}F)e^{iV/\hbar}\bigr).
\end{align}$$

The printed proof has the wrong sign on $J\cdot F$; the corrected derivation is included in the verification log.

## Current-valued curvature of the AMWI brackets

The AMWI derivatives define a curved homotopy Lie structure whenever $\kappa(V)\ne0$. A normalization-safe presentation is

$$\begin{align}
\ell_0=\kappa(V),
\end{align}$$

$$\begin{align}
\ell_1(G) =Q_0G+\{V,G\}^{\rm std} -i\hbar\langle A'(V),G\rangle,
\end{align}$$

$$\begin{align}
\ell_2(G_1,G_2) =\{G_1,G_2\}^{\rm std} -i\hbar\langle A''(V),G_1\otimes G_2\rangle,
\end{align}$$

$$\begin{align}
\ell_n(G_1,\ldots,G_n) =-i\hbar\langle A^{(n)}(V),G_1\otimes\cdots\otimes G_n\rangle, \qquad n\ge3.
\end{align}$$

If one then sets $\kappa(V)=-J$, the curvature is $-J$, not an independently chosen $J$ with a new $i/\hbar$ factor. The paper switches among all of these normalizations, so any downstream calculation should carry $\kappa$ until the final convention is fixed.

## Causal cylinders turn corrections into charge commutators

Let $\Sigma_-$ and $\Sigma_+$ be separated Cauchy surfaces, thickened to $N_-$ and $N_+$, with observables supported in the region $\mathcal O$ between them. Split

$$\begin{align}
J=J^-+J^+, \qquad \operatorname{supp}J^\pm\subset N_\pm.
\end{align}$$

Causal factorization gives

$$\begin{align}
\overrightarrow\Omega_JF=[J^-,F]_{\star_V}, \qquad \overleftarrow\Omega_JF=[F,J^+]_{\star_V}.
\end{align}$$

Hence

$$\begin{align}
Q_V^RF =\left(Q_0+\{V,\cdot\}-i\hbar\Delta_V^{\rm ren} +\frac{i}{\hbar}[J^-,\cdot]_{\star_V}\right)F,
\end{align}$$

and analogously $Q_V^A$ uses $J^+$. This is the closest analogue of a boundary Hamiltonian generator: the current localized near a Cauchy surface acts as an inner quantum derivation on bulk observables.

## CMR bridge: phase space, ordering, and polarization

The CMR modified QME has the schematic form

$$\begin{align}
(\hbar^2\Delta+\widehat\Omega_{\rm CMR})e^{iL/\hbar}=0,
\end{align}$$

where $\widehat\Omega_{\rm CMR}$ quantizes the BFV boundary action in a chosen polarization. The paper compares this to the pAQFT correction $\Omega_J$.

For a scalar field, the solution map $\beta$ from Cauchy data to covariant solutions is intended to intertwine the canonical and Peierls brackets,

$$\begin{align}
\{\beta^*F,\beta^*G\}_{\rm can} =\beta^*\{F,G\}_{\rm Peierls}.
\end{align}$$

Deformation quantization then relates Wick, Moyal, and standard orderings by intertwiners. This section supplies the conceptual polarization dictionary, but its printed $\hbar$-powers do not have the correct classical limit. The ordering formulas must be rederived before reuse.

## Abelian Yang--Mills testbed

The nonminimal fields are

$$\begin{align}
(A,A^\ddagger),\quad(c,c^\ddagger),\quad (b,b^\ddagger),\quad(\bar c,\bar c^\ddagger),
\end{align}$$

with $c$ the ghost, $b$ the Nakanishi--Lautrup field, and $\bar c$ the antighost. The printed Lagrangian density is

$$\begin{align}
\mathbf L_{YM} =\frac12dA\wedge\star dA +\star A^\ddagger\wedge dc -db\wedge\star A +dc\wedge\star d\bar c +\frac12b\star b+b\bar c^\ddagger.
\end{align}$$

Its intended BV differential includes

$$\begin{align}
QA=dc, \qquad Q\bar c=b,
\end{align}$$

and the collar current is

$$\begin{align}
J_{YM}[d\eta] =\int_M\left(c\,d\star dA+b\star dc\right)d\eta.
\end{align}$$

The presymplectic-potential current is

$$\begin{align}
\boldsymbol\theta_{YM} =\delta A\star dA-(\star A^\ddagger)\delta c -\delta b\star A+\delta c\star d\bar c +(\star dc)\delta\bar c.
\end{align}$$

In the sharp Cauchy-surface limit, define

$$\begin{align}
E=(\star dA)|_\Sigma, \quad A_0=(\star A)|_\Sigma, \quad A^\dagger=-(\star A^\ddagger)|_\Sigma+(\star d\bar c)|_\Sigma, \quad J_c=(\star dc)|_\Sigma.
\end{align}$$

The intended boundary data are

$$\begin{align}
\Omega^\partial =\int_\Sigma \left(\delta A\,\delta E +\delta A^\dagger\,\delta c +\delta b\,\delta A_0 +\delta J_c\,\delta\bar c\right),
\end{align}$$

$$\begin{align}
L^\partial=\int_\Sigma(c\,dE+bJ_c).
\end{align}$$

After choosing a polarization, geometric quantization is meant to give

$$\begin{align}
\widehat L^\partial =-i\hbar\int_\Sigma\left( c\,d\frac{\delta}{\delta A} +J_c\frac{\delta}{\delta A_0} +b\frac{\delta}{\delta\bar c} \right).
\end{align}$$

The Peierls bracket of $J_{YM}$ with a bulk functional is then decomposed into five propagator contractions. In the sharp limit, the intended leading result is

$$\begin{align}
\lim_{n\to\infty}\{J_{YM}[d\eta_n],F\}_{\rm Peierls} =\int_\Sigma\left( dc\frac{\delta F}{\delta A_\partial} +J_c\frac{\delta F}{\delta A_0} +b\frac{\delta F}{\delta\bar c} \right).
\end{align}$$

This is the right target for comparing a covariant current insertion to the BFV boundary operator. The printed field degrees, polarization, signs, and differential do not consistently reach that target; they must be repaired first.

## Hollands, the interacting BRST charge, and on-shell cohomology

In the minimal splitting $J_0=0$. The past collar current

$$\begin{align}
q:=J^{\rm std}[d\eta]^-
\end{align}$$

is identified with the interacting BRST charge. Møller transport gives

$$\begin{align}
Q_{00}R_{V,H} =\frac{i}{\hbar}[R_{V,H}(q),R_{V,H}(\cdot)]_{\star_H} +R_{V,H}\left(Q+\text{quantum anomaly terms}\right).
\end{align}$$

The paper then separates two cohomological operations:

1. $H^\bullet(Q_{00})$ implements the free equations of motion on interacting fields;
2. the cohomology of the inner differential generated by $R_{V,H}(q)$ selects gauge-invariant classes.

For an odd charge, the graded Jacobi identity gives

$$\begin{align}
[q,[q,F]]_{\star} =[q\star q,F]_{\star}.
\end{align}$$

Thus $q\star q=0$ makes the inner derivation nilpotent. A Krein-space representation satisfying the Kugo--Ojima subsidiary conditions then yields a positive Hilbert-space representation on cohomology.

The claim that the boundary inner-cohomology and the bulk differential cohomology coincide needs more than the displayed decomposition; a quasi-isomorphism or spectral-sequence argument remains to be supplied.

## Global equation ledger

| Role | Safe equation | Status |
|---|---|---|
| Local CPS split | $\delta\mathbf F=\delta^{\rm src}\mathbf F+d\boldsymbol\theta_F$ | Structural definition; sign in a later Hamiltonian lemma changes. |
| Standard current | $J^{\rm std}=2J^{\rm src}-\iota_Q\theta$ | Definition retained; descent proof contradicts it. |
| AMWI obstruction | $\kappa(V)=Q_0V+\frac12\{V,V\}-i\hbar A(V)$ | Stable definition. |
| Smoothened mQME | $\kappa(V)=-J[d\eta]$ | Stable only after fixing $J$'s normalization externally. |
| Auxiliary curvature | $\widehat Q_V(1)=\frac{i}{\hbar}\kappa(V)$ | Algebraically consistent. |
| BFV corrections | $\Omega_J^R=J\star_V\cdot-J\cdot$, $\Omega_J^A=\cdot\star_VJ-J\cdot$ | Consistent. |
| R/A difference | $Q_V^R-Q_V^A=\frac{i}{\hbar}[J,\cdot]_{\star_V}$ | Checked algebraically, given causal/product assumptions. |
| Curved brackets | $\ell_n=\kappa^{(n)}(V)$ | Safe master definition; printed expanded brackets omit factors. |
| Causal cylinder | $\Omega_J^R=[J^-,\cdot]$, $\Omega_J^A=[\cdot,J^+]$ | Correct under stated support factorization. |
| Sharp BFV limit | $J[d\eta_n]\to\pi^*L^\partial$ | Analytic convergence not independently established. |

## Global derivation map

$$\begin{align}
\delta\mathbf L=\delta^{\rm src}\mathbf L+d\boldsymbol\theta \Longrightarrow
\{L[f],L[f]\}^{\rm std} =\text{bulk CME}+\text{collar current}
\end{align}$$

$$\begin{align}
\Longrightarrow \kappa(V[f])=-J[d\eta(f)] \Longrightarrow
\widehat Q_V(1)=-\frac{i}{\hbar}J
\end{align}$$

$$\begin{align}
\Longrightarrow Q_V^{R/A}=D_V+\frac{i}{\hbar}\Omega_J^{R/A} \Longrightarrow
Q_V^R-Q_V^A=\frac{i}{\hbar}[J,\cdot]_{\star_V}
\end{align}$$

$$\begin{align}
\Longrightarrow \ell_0=\kappa(V)\ne0 \quad\text{and on a causal cylinder}\quad \Omega_J^{R/A}\rightsquigarrow J^\mp\text{ charge commutators}.
\end{align}$$

The derivation is off-shell until the Hollands section takes $Q_{00}$-cohomology. That order matches the vault rule: construct the current and its boundary correction before imposing constraints or EOM.

## Translation to the local CPS--pAQFT formalism

- `CPS data`: the local $\boldsymbol\theta$ and $\delta\boldsymbol\theta$ are the potential and presymplectic currents; their collar integrals should be placed beside the local note's $\theta$ and $\omega$, not after quotienting.
- `Peierls map`: the paper's $R/A$ Green operators and $\star_H$ extend the local Peierls construction to a BV complex, but the propagator acts on gauge-fixed/extended fields.
- `Boundary conditions`: a marked hypersurface is represented by the support of $df$. This is not yet a reflecting AdS boundary condition; an AdS adaptation must supply falloff and Green-operator domains.
- `Charges`: $J$ has ghost number one and generates the BRST/BFV differential. A physical Wald charge requires extracting a gauge parameter component and its codimension-two descendant.
- `Edge modes`: the BFV boundary field space is encoded by the sharp limit of $(\theta,J)$; the paper does not construct an extended edge-mode phase space for asymptotic AdS.
- `Off-shell ledger`: $B_0(V)$, the source/standard improvement, and the $J^-/J^+$ split are the three corrections to keep explicit before EOM.
- `Quantization`: the local Hadamard/time-ordering construction remains useful, but the current-valued anomaly must be normalized consistently before defining a quantum BRST cohomology.

## Concrete project extensions

1. Add a BV layer to `cps_paqft_complete_formalism_v1.md` using the invariant symbol $\kappa(V)$; postpone identifying it with $J$ until all signs and $i/\hbar$ factors are fixed.
2. Re-run the Abelian Maxwell benchmark with the vault's $F^2$-anchored sign convention. Demand $Q^2=0$ before deriving $\theta_{YM}$, $J_{YM}$, or the boundary operator.
3. For an AdS slab, replace the compact collar limit with a boundary defining function and explicitly state the falloff domain of $R/A$ Green operators.
4. Descend the ghost-number-one current to a parameter-dependent codimension-two charge and compare it with the existing off-shell Iyer--Wald ledger.
5. Treat $J^-$ and $J^+$ as two presentations of hypersurface evolution; test whether their difference reproduces the local flux/balance term before imposing constraints.
6. Prove the proposed bulk/boundary cohomology equivalence with a filtration or explicit contracting homotopy rather than inferring it from a sum of differentials.

## Verification log

### Checked

- **AMWI product-rule combinatorics.** Mathematica differentiated a three-source model of $\kappa(\lambda)e^{a\sum_i\lambda_iF_i}$ and obtained

$$\begin{align}
\kappa_{123} +a(F_3\kappa_{12}+F_2\kappa_{13}+F_1\kappa_{23}) +a^2(F_2F_3\kappa_1+F_1F_3\kappa_2+F_1F_2\kappa_3),
\end{align}$$

  confirming that Proposition 3.6 cannot omit $A'(0)$ and $A''(0)$ contributions.

- **Current/descent sign.** Substituting $J^{\rm std}=2J^{\rm src}-\iota_Q\theta$ into the printed proof endpoint $-2J^{\rm src}+\iota_Q\theta$ gives $-J^{\rm std}$, not $+J^{\rm std}$.

- **State/observable intertwining sign.** From $\kappa(V)=-J$, the ordinary part contributes $-\frac{i}{\hbar}J\cdot F$. Adding the advanced insertion $+\frac{i}{\hbar}F\star_VJ$ gives $\frac{i}{\hbar}(F\star_VJ-J\cdot F)$. The printed plus sign on $J\cdot F$ leaves the Mathematica residual $2iJ\cdot F/\hbar$.

- **Retarded/advanced difference.** Direct expansion gives $\overrightarrow\Omega_J-\overleftarrow\Omega_J=J\star_VF-F\star_VJ$, subject to graded-commutator conventions.

- **Odd inner derivation.** Symbolic $1|1$ supermatrices reproduce $[q,[q,F]]=[q^2,F]$ for both even and odd homogeneous $F$; therefore $q\star q=0$ is sufficient for nilpotence.

- **Abelian-YM nilpotency test.** The printed rules imply

$$\begin{align}
Q^2b^\ddagger =Q(d\star A+\star b+\bar c^\ddagger) =d\star dc+d\star dc =2d\star dc\ne0.
\end{align}$$

  Flipping the sign of $Q\bar c^\ddagger$, or the corresponding term in $Qb^\ddagger$, repairs this component.

- **Polarization PDE.** For the printed vector $X=\bar c\,\partial_b+A_0\,\partial_{J_c}$, the proposed $e^{A_0b+\bar cJ_c}$ has $X F=2A_0\bar cF$, not zero. The minus-sign exponential solves the plain PDE; the covariant-section equation must be restated before choosing the wavefunction.

- **PDF layout.** Equations, arrows, field pairs, and source labels on the critical pages were visually checked against rendered PDF pages. This confirms the transcription only and is not included as mathematical reproduction.

### Blocked

- The Epstein--Glaser extension and existence of the renormalized AMWI anomaly were not reconstructed from first principles.
- Microlocal domains of $\star_H$, $\star_{\mathcal T}$, and the local interacting product were not independently proved.
- The distributional sharp limit $f_n\to\chi_C$, including convergence of $J[f_n df_n]$ and $\delta\theta[df_n]$, needs a theory-specific analytic estimate.
- The full five-term Abelian-YM Peierls calculation depends on a corrected BV differential, propagator matrix, Hodge signs, and boundary conditions; downstream equality with $\widehat L^\partial$ cannot be certified before those are fixed.
- The curved $L_\infty$ identities were not checked beyond the derivative/factor bookkeeping because the source does not maintain one curvature normalization.
- The Hollands and Kugo--Ojima cohomology comparison needs functional-analytic domains and a quasi-isomorphism argument.
- No xAct check was run: the decisive failures are graded algebra, functional-product combinatorics, and BV-field signs rather than a component tensor identity. No Sage check was needed because no representation-theory decomposition carries the main argument.

### Failed

The following statements fail as printed or are internally inconsistent; none should be used downstream without an explicit repair.

1. **Preliminary definitions:** the support definition describes the complement of support; a local-form bidegree is reversed; the Hamiltonian one-form sign changes between a definition and its proof; $e^{iV/\hbar}$ is called polynomial-regular although it does not satisfy the stated definition.
2. **Free BV complex:** the displayed $Q_0=\delta_0+\gamma_0$ formula omits a term used in its own proof; a Green-operator identity has no right-hand side; the Peierls bracket display omits the functional derivatives.
3. **Time ordering and free quantum BV operator:** the regular time-product sum omits $k=0$ and mixes indices; Proposition 3.19 omits lower anomaly derivatives and misnormalizes the BV Laplacian; the later higher brackets omit the $-i\hbar$ factors inherited from $\kappa^{(n)}$. Proposition 3.39 is already false at one insertion and, in general, must be replaced by the full nonempty-subset expansion. The final claim $\Delta_V^{\rm ren}(1)=0\iff\kappa(V)=0$ is also false: the unit terms cancel identically, while the valid equivalence is $\kappa(V)=0\iff\widehat Q_V(1)=0\iff Q_{0,\mathcal T}(e^{iV/\hbar})=0$.
4. **Møller maps:** the advanced abstract map is labeled retarded in its definition; a proof of presentation independence drops an inverse Møller map.
5. **Descent:** the proposition claims $Q\mathbb L=+J^{\rm std}$, while its own definitions and proof produce $-J^{\rm std}$.
6. **mQME normalization:** the source alternates among $\kappa=-J$, $\kappa=-(i/\hbar)J$, $\kappa=+J$, and $\kappa=(i/\hbar)J$. It also moves $i/\hbar$ in and out of the abstract current $\mathcal J$.
7. **BV Laplacian:** one definition writes $\Delta=Q_{0,\mathcal T}-Q_0$, contradicting $Q_{0,\mathcal T}=Q_0-i\hbar\Delta$; another line inserts an extra $i$ into $\Delta_V^{\rm ren}=\langle A'(V),\cdot\rangle$.
8. **State/observable formula:** the proof's $+J\cdot F$ has the wrong sign and cannot yield the stated advanced correction.
9. **Curved AMWI:** the expanded unary, binary, and higher brackets omit the anomaly's $-i\hbar$ factors and mix dummy variables.
10. **CMR ordering:** several star products contain inverse powers of $\hbar$ and therefore do not approach the ordinary product as $\hbar\to0$; one Moyal product is renamed without definition.
11. **Abelian-YM complex:** field degrees are inconsistent; $Q_{YM}^2b^\ddagger\ne0$; source and standard currents reverse the general sign convention; the later minimal $L_0$ changes coefficients and inserts a new $i$; the boundary primitive, polarization vector, polarized wavefunction, and prequantization sign do not agree.
12. **CMR comparison theorem:** the text promotes an “up to a sign” leading-order match to an equality, changes $\Omega$ to an undefined $\widehat\Omega$, and omits the causal support needed for the commutator form.
13. **Hollands comparison:** the nilpotence lemma needs a graded commutator although an earlier ungraded one is used; the descent sign flips again; equality of two cohomologies is asserted without the needed quasi-isomorphism; the splitting changes without notice.
14. **Appendix A:** the statement and proof disagree on the first boundary-term sign, graded antisymmetry, and $F/G$ exchange; decisive steps are left “up to signs,” so the appendix does not establish the exact identity used by Section 4.

The correct takeaway is therefore conditional: the smoothened-boundary architecture and the invariant $\kappa\to J\to\Omega_J^{R/A}$ route are technically valuable, but the v1 component formulas do not yet prove a consistent quantum BV--BFV model.
