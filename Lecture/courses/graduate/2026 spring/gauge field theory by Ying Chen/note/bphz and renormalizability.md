---
title: BPHZ And Renormalizability
date: 2026-06-21
summary: "Power-counting notes on BPHZ subtractions, superficial degree of divergence, and the relevant or marginal interactions allowed in four-dimensional scalar, fermion, and gauge theories."
---

# BPHZ And Renormalizability

## Main Point

For a local perturbative QFT, the BPHZ forest formula subtracts the Taylor polynomial of every superficially divergent 1PI subgraph. The subtraction is local in external momenta, hence it has the form of a local counterterm in the Lagrangian.

For a power-counting renormalizable theory in four dimensions, all such local counterterms can be chosen from a finite list of operators with canonical dimension at most $4$, subject to the symmetries of the theory. The useful practical statement is therefore:

- first classify the allowed local operators by canonical dimension and symmetry;
- then classify the superficially divergent 1PI amplitudes by external legs;
- finally check that the local counterterm required by each divergent amplitude is already present, or is allowed and must be added.

If a counterterm is not forbidden by a symmetry, it should be included from the beginning. Setting it to zero is not stable under renormalization.

## Power Counting In Four Dimensions

Use units with $\hbar=c=1$. In four spacetime dimensions the Lagrangian density has mass dimension $4$. The canonical dimensions are

$$\begin{align}
[\phi]&=1,& [A_{\mu}]&=1,& [\psi]&=\frac{3}{2},& [\partial_{\mu}]&=1.
\end{align}$$

For an interaction term

$$\begin{align}
\mathcal{L}_{\mathrm{int}} &\supset g_{\mathcal{O}}\mathcal{O},
\end{align}$$

where $\mathcal{O}$ has canonical dimension $d_{\mathcal{O}}$, the coupling has dimension

$$\begin{align}
[g_{\mathcal{O}}]&=4-d_{\mathcal{O}}.
\end{align}$$

The power-counting classification is:

| operator dimension | coupling dimension | name | consequence |
|---|---:|---|---|
| $d_{\mathcal{O}}<4$ | $[g_{\mathcal{O}}]>0$ | relevant, super-renormalizable | more insertions improve UV behavior |
| $d_{\mathcal{O}}=4$ | $[g_{\mathcal{O}}]=0$ | marginal, power-counting renormalizable | infinitely many loop orders, but a finite operator basis |
| $d_{\mathcal{O}}>4$ | $[g_{\mathcal{O}}]<0$ | irrelevant, non-renormalizable by power counting | higher orders require new higher-dimensional counterterms |

A theory is usually called super-renormalizable when all genuine interaction couplings have positive mass dimension. A theory with both relevant and marginal interactions is still power-counting renormalizable.

## Superficial Degree Of Divergence

For a graph $\Gamma$ in four dimensions, let

- $L$ be the number of loops;
- $I_B$ be the number of internal bosonic lines, including scalars, gauge fields, and ghosts;
- $I_F$ be the number of internal fermion lines;
- $\delta_v$ be the number of derivatives at a vertex $v$.

With bosonic propagators behaving as $k^{-2}$ and fermion propagators as $k^{-1}$, the superficial degree of divergence is

$$\begin{align}
D(\Gamma) &=4L-2I_B-I_F+\sum_v\delta_v.
\end{align}$$

Equivalently, let $E_B$ be the number of external bosonic legs and $E_F$ the number of external fermion legs. If the coupling at vertex $v$ has mass dimension $[g_v]$, then

$$\begin{align}
D(\Gamma) &=4-E_B-\frac{3}{2}E_F-\sum_v [g_v].
\end{align}$$

This form makes the renormalizability criterion transparent.

- For marginal vertices, $[g_v]=0$, so $D$ depends only on the external legs.
- For relevant vertices, $[g_v]>0$, so adding such vertices lowers $D$.
- For irrelevant vertices, $[g_v]<0$, so adding such vertices raises $D$ and produces new divergent structures at higher orders.

The word "superficial" is important. If $D(\Gamma)<0$, the graph has no overall UV divergence by power counting, but it may still contain divergent subgraphs. If $D(\Gamma)\geq 0$, the possible overall divergence is a local polynomial in the external momenta of degree at most $D(\Gamma)$, after subdivergences have been subtracted.

## Allowed Four-Dimensional Interactions

The following list is a power-counting list. The actual terms of a theory must also be invariant under Lorentz symmetry, gauge symmetry, global symmetries, and any imposed discrete symmetries.

### Scalar Sector

For real scalar fields $\phi_i$, the relevant and marginal local terms are

$$\begin{align}
\mathcal{L}_{\phi,\mathrm{rel}} &\supset a_i\phi_i-\frac{1}{2}(m^2)_{ij}\phi_i\phi_j-\frac{1}{3!}\kappa_{ijk}\phi_i\phi_j\phi_k,\\
\mathcal{L}_{\phi,\mathrm{marg}} &\supset -\frac{1}{4!}\lambda_{ijkl}\phi_i\phi_j\phi_k\phi_l.
\end{align}$$

The tadpole and mass terms are often not called interactions, but they are relevant counterterms. The cubic scalar coupling is super-renormalizable in four dimensions. The quartic scalar coupling is marginal.

Pure scalar derivative interactions beyond the kinetic term are usually non-renormalizable in four dimensions. For example,

$$\begin{align}
\phi^2(\partial_{\mu}\phi)(\partial^{\mu}\phi)
\end{align}$$

has dimension $6$.

### Fermions And Yukawa Couplings

For Dirac or Majorana fermions, the relevant fermion bilinear is the mass term

$$\begin{align}
\mathcal{L}_{m} &\supset -m_{ij}\bar{\psi}_i\psi_j.
\end{align}$$

The renormalizable scalar-fermion interactions are Yukawa couplings,

$$\begin{align}
\mathcal{L}_{Y} &\supset -y_{aij}\phi_a\bar{\psi}_i\psi_j -iy^5_{aij}\phi_a\bar{\psi}_i\gamma^5\psi_j.
\end{align}$$

Equivalently, in chiral notation one writes gauge-invariant combinations such as

$$\begin{align}
\mathcal{L}_{Y} &\supset -y_{aij}\phi_a\bar{\psi}_{Li}\psi_{Rj}+\mathrm{h.c.}
\end{align}$$

Four-fermion interactions such as $(\bar{\psi}\Gamma\psi)^2$ have dimension $6$ and are non-renormalizable by power counting in four dimensions.

### Gauge Fields And Matter

For spin-one fields, power counting must be combined with gauge symmetry or an equivalent constraint on the longitudinal modes. A renormalizable interacting vector theory is normally organized as a gauge theory, possibly after spontaneous symmetry breaking.

If one only counts Lorentz invariance and canonical dimensions for a vector $A_{\mu}$, the dimension-at-most-four interaction monomials include

$$\begin{align}
A_{\mu}\bar{\psi}\gamma^{\mu}\psi,\qquad
A_{\mu}\phi\,\partial^{\mu}\phi,\qquad
A_{\mu}A^{\mu}\phi,\qquad
A_{\mu}A^{\mu}\phi^2,\qquad
(\partial A)AA,\qquad
A^4.
\end{align}$$

The gauge-theory statement is stronger: these terms, when allowed, are not independent arbitrary couplings. They are packaged by $F^2$, covariant derivatives, and the scalar potential.

The gauge kinetic term is marginal:

$$\begin{align}
\mathcal{L}_{\mathrm{gauge}} &\supset -\frac{1}{4}F^a_{\mu\nu}F^{a\mu\nu} +\frac{\theta}{32\pi^2}F^a_{\mu\nu}\widetilde{F}^{a\mu\nu}.
\end{align}$$

The non-Abelian part of $F^a_{\mu\nu}$ generates the cubic and quartic gauge vertices,

$$\begin{align}
F^a_{\mu\nu} &=\partial_{\mu}A^a_{\nu}-\partial_{\nu}A^a_{\mu} +gf^{abc}A^b_{\mu}A^c_{\nu}.
\end{align}$$

Matter couplings are generated by covariant derivatives:

$$\begin{align}
(D_{\mu}\phi)^{\dagger}(D^{\mu}\phi) &\supset A_{\mu}\phi\,\partial^{\mu}\phi,\quad A_{\mu}A^{\mu}\phi^2,\\
\bar{\psi}i\gamma^{\mu}D_{\mu}\psi &\supset A_{\mu}\bar{\psi}\gamma^{\mu}\psi.
\end{align}$$

Gauge fixing and ghosts are part of the renormalized perturbation theory. In a non-Abelian gauge theory,

$$\begin{align}
\mathcal{L}_{\mathrm{gh}} &\supset -\bar{c}^a\partial^{\mu}(D_{\mu}c)^a,
\end{align}$$

which gives a marginal ghost-gluon interaction.

After spontaneous symmetry breaking, the same gauge-invariant terms also generate relevant vertices such as $m_A^2A_{\mu}A^{\mu}$ and $hA_{\mu}A^{\mu}$, but their coefficients are tied to the Higgs expectation value and the gauge coupling. A generic Proca theory with arbitrary vector self-interactions is not certified as renormalizable by the naive assignment $[A_{\mu}]=1$ alone; the high-energy behavior of longitudinal polarizations must be controlled by gauge symmetry, Stueckelberg symmetry, or an equivalent UV completion.

### Common Non-Renormalizable Examples

Some useful dimension-counting examples are

$$\begin{align}
\phi^6,\qquad
(\bar{\psi}\Gamma\psi)^2,\qquad
\phi F_{\mu\nu}F^{\mu\nu},\qquad
\bar{\psi}\sigma^{\mu\nu}\psi F_{\mu\nu},\qquad
F_{\mu}{}^{\nu}F_{\nu}{}^{\rho}F_{\rho}{}^{\mu}.
\end{align}$$

Their dimensions are respectively $6,6,5,5,6$. They can be included in an effective field theory, but then one must include all symmetry-allowed operators needed at the desired order in the cutoff expansion.

## From A Graph To A Counterterm

Given a 1PI graph, the practical procedure is:

1. Count its external fields and compute $D(\Gamma)$.
1. Repeat the same computation for every 1PI subgraph.
1. If a subgraph has $D\geq 0$, BPHZ subtracts its Taylor polynomial in the subgraph external momenta up to degree $D$.
1. Match the resulting local polynomial to a local operator with the same Lorentz and internal quantum numbers.
1. Impose Ward identities, Slavnov-Taylor identities, global symmetries, and discrete symmetries. These can remove candidate divergences or relate several counterterms.

Typical matches are:

| 1PI amplitude | superficial divergence | local counterterm |
|---|---|---|
| scalar two-point | polynomial $a+b p^2$ | $\phi^2$, $(\partial_{\mu}\phi)^2$ |
| scalar four-point | constant | $\phi^4$ |
| fermion two-point | $a\slashed{p}+b m$ | $\bar{\psi}i\slashed{\partial}\psi$, $\bar{\psi}\psi$ |
| Yukawa vertex | constant | $\phi\bar{\psi}\psi$ or $i\phi\bar{\psi}\gamma^5\psi$ |
| gauge two-point | transverse $p^2g_{\mu\nu}-p_{\mu}p_{\nu}$ after Ward identities | $F_{\mu\nu}F^{\mu\nu}$ |
| gauge or ghost vertices | derivative structures constrained by BRST symmetry | the same $F^2$, $\bar{c}\partial Dc$, and covariant matter terms |

The counterterm is attached to the amplitude, not to a particular drawing style. Many different loop diagrams can renormalize the same local operator.

## Examples

### Scalar $\phi^4$ Theory

For a pure marginal $\phi^4$ theory in four dimensions,

$$\begin{align}
D&=4-E_{\phi}.
\end{align}$$

Thus the non-vacuum superficially divergent amplitudes are $E_{\phi}=2$ and $E_{\phi}=4$. The two-point function renormalizes the mass and wave function; the four-point function renormalizes $\lambda$. Vacuum graphs renormalize the vacuum energy if it is included.

### Scalar $\phi^3$ Theory In Four Dimensions

For a scalar cubic coupling, $[\kappa]=1$. A graph with $V_3$ cubic vertices has

$$\begin{align}
D&=4-E_{\phi}-V_3.
\end{align}$$

The positive mass dimension of $\kappa$ means that increasing the number of cubic vertices lowers the superficial degree of divergence. This is the typical super-renormalizable pattern.

### Yukawa Plus Scalar Potential

For a theory with marginal Yukawa and scalar quartic vertices,

$$\begin{align}
D&=4-E_{\phi}-\frac{3}{2}E_{\psi}.
\end{align}$$

The possible non-vacuum divergent amplitudes are therefore

$$
\begin{array}{c|c|c}
E_{\phi} & E_{\psi} & \text{possible counterterm}\\
\hline
1 & 0 & \phi\ \text{tadpole, if allowed}\\
2 & 0 & \phi^2,\;(\partial\phi)^2\\
3 & 0 & \phi^3,\ \text{if allowed}\\
4 & 0 & \phi^4\\
0 & 2 & \bar{\psi}\psi,\;\bar{\psi}i\slashed{\partial}\psi\\
1 & 2 & \phi\bar{\psi}\psi,\;i\phi\bar{\psi}\gamma^5\psi
\end{array}
$$

A symmetry can remove rows from this table. For example, a $\phi\to-\phi$ symmetry forbids odd scalar amplitudes, while the pseudoscalar parity assignment in the past-exam Yukawa example forbids odd pseudoscalar counterterms. If $\phi^4$ is allowed by the symmetries, it must be included: fermion boxes with four Yukawa vertices generate a divergent four-scalar 1PI amplitude.

### QED

Naive power counting gives

$$\begin{align}
D&=4-E_A-\frac{3}{2}E_{\psi}.
\end{align}$$

The relevant 1PI functions are the electron self-energy, photon vacuum polarization, and electron-photon vertex. Gauge invariance improves the naive counting and forbids a photon mass counterterm. The Ward identity relates the vertex and electron wave-function counterterms, usually written as $Z_1=Z_2$.

Pure multi-photon amplitudes are constrained by gauge invariance and charge conjugation. For example, odd-photon amplitudes vanish in ordinary QED by Furry's theorem. A gauge-invariant regularization and subtraction scheme leaves only the gauge-invariant counterterm $F_{\mu\nu}F^{\mu\nu}$ in the photon sector.

### Non-Abelian Gauge Theory

For Yang-Mills theory with matter and ghosts, power counting again lists only finitely many external structures: gauge, ghost, matter two-point functions and the marginal three- and four-point vertices. The Slavnov-Taylor identities then tie the corresponding renormalization constants to a gauge-invariant counterterm basis:

$$\begin{align}
F^a_{\mu\nu}F^{a\mu\nu},\qquad
\bar{\psi}i\gamma^{\mu}D_{\mu}\psi,\qquad
(D_{\mu}\phi)^{\dagger}(D^{\mu}\phi),\qquad
V(\phi),\qquad
\text{gauge fixing and ghost terms}.
\end{align}$$

This is the gauge-theory version of the BPHZ statement: many diagrams are divergent, but the allowed local subtractions are organized by a finite symmetry-preserving set of operators.

## Useful Caveats

- BPHZ deals with UV divergences. IR and collinear divergences in massless theories are separate and are not removed by UV counterterms.
- A regulator or subtraction prescription should preserve the symmetries needed for the counterterm classification. If a regulator breaks a symmetry, extra finite or divergent restoring counterterms may be needed.
- Gauge anomalies are not ordinary counterterms. If a gauge symmetry is anomalous, the Ward or Slavnov-Taylor identities needed for renormalizability and unitarity fail.
- Power counting is necessary but not sufficient for vectors unless the longitudinal sector is controlled.
- In dimensional regularization, power divergences may not appear as explicit poles, but the relevant operators are still part of the renormalized Lagrangian and can mix with other operators allowed by the symmetries.
- Composite operator insertions have their own renormalization problem. Their counterterms are classified by the dimension and quantum numbers of the inserted operator, not only by the original Lagrangian.

## Checklist For A New Interaction

To decide whether a proposed interaction is super-renormalizable, renormalizable, or non-renormalizable in four dimensions:

1. Compute the canonical dimension $d_{\mathcal{O}}$ of the operator.
1. Check Lorentz, gauge, global, and discrete symmetries.
1. Classify $[g_{\mathcal{O}}]=4-d_{\mathcal{O}}$.
1. Compute the superficial degree of divergence for the affected 1PI amplitudes.
1. List all local counterterms with the same quantum numbers and dimension at most $4$.
1. If loops generate an allowed counterterm that was omitted, add it.
1. For gauge theories, verify the Ward or Slavnov-Taylor identities that relate the counterterms.
1. If $d_{\mathcal{O}}>4$, treat the theory as an EFT and specify the truncation order.
