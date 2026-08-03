---
paper id: 2607.29635v1
title: A Holographic Map from AdS3 to CFT2
authors:
  - Manish Ramchander
  - Ronak M Soni
publication date: 2026-07-31T17:10
abstract: |-
  The paper proposes a map from a semiclassically quantized fixed-area-network description of pure AdS3 gravity to a single CFT2 Hilbert space. Complex geodesic lengths are matched to primary weights and pair-of-pants vertices to normalized OPE coefficients; agreement of bulk and boundary inner products is argued only for suitably smeared semiclassical states under conjectural OPE-statistics assumptions.
comments: "67 pages"
url: https://arxiv.org/abs/2607.29635v1
summary: "A conditional fixed-area/OPE-network map that makes the domain and failure of bulk-to-boundary isometry unusually explicit."
tags: []
---

Back to [[2026_08_03_overview]].

# Claim tier and use

The result is a proposed saddle-level holographic map, not an exact Hilbert-space equivalence. Its strongest claim is approximate preservation of inner products on a smeared semiclassical domain, assuming a suitable definition of the gravitational topology sum and conjectural statistics of OPE networks in a single holographic CFT. This is useful for the AdS quantization project because it makes fixed-area polarization, rigging-map inner products, topology change, and relational interior observables part of one explicit construction.

It remains medium priority because the isometry and reconstruction steps are conditional, the boundary OPE statistics are not derived from a specific CFT, and the source has two unresolved normalization/scaling inconsistencies described below.

# Pure AdS3 gravity with an ETW boundary

With the AdS radius set to one, the Euclidean action is

$$
I_0=-\frac1{16\pi G_N}\int_M\!\sqrt g\,(R+2)
-\frac1{8\pi G_N}\int_{\bar\partial M}\!\sqrt h\,(K-1)
-\frac1{8\pi G_N}\int_{\partial_BM}\!\sqrt h\,(K-T).
$$

Here $\bar\partial M$ is the regulated asymptotic boundary and $\partial_BM$ an ETW brane. Its boundary equation is

$$
K_{ab}=(K-T)h_{ab}.
$$

Taking the trace in two brane dimensions gives

$$
K=2(K-T)\quad\Longrightarrow\quad K=2T,\qquad K_{ab}=Th_{ab}.
$$

The presentation assumes equal positive tension and uses

$$
\log g=\frac c6\operatorname{arctanh}T
$$

for the BCFT boundary entropy. Matter and loop corrections are excluded, except for later massive probes treated as conical defects.

# Mess variables and fixed-area phase space

A maximal slice is described by its complex structure and holomorphic quadratic differential. The Mess map packages a Lorentzian phase-space point into two hyperbolic metrics,

$$
h^\pm_{ij}=h_{kl}
(\delta^k{}_i\pm J^k{}_mK^m{}_i)
(\delta^l{}_j\pm J^l{}_nK^n{}_j),
$$

with closed-geodesic lengths

$$
\ell_\gamma^\pm=2\pi(r_+\pm r_-).
$$

Consequently

$$
L_\gamma=2\pi r_+=\frac{\ell_\gamma^++\ell_\gamma^-}{2},
\qquad
\frac{r_-}{r_+}=\frac{\ell_\gamma^+-\ell_\gamma^-}
{\ell_\gamma^++\ell_\gamma^-}.
$$

For a maximal nonintersecting network, the proposed Darboux form is

$$
\Omega=
\sum_{\gamma\,\mathrm{closed}}\sum_{s=\pm}
\delta\ell_\gamma^s\wedge\delta\vartheta_\gamma^s
+\sum_{\gamma\,\mathrm{open}}
\delta\ell_\gamma^+\wedge\delta\tau_\gamma^+
+\Omega_{\partial\Sigma}.
$$

Closed curves carry two chiral length/twist pairs; open curves ending on ETW branes carry one length and no independent twist. The full phase space is a disjoint union over slice topologies and ETW connectivities, but the later physical inner product need not preserve orthogonality between those components.

# Fixed-area Wheeler--DeWitt basis and corner data

A basis state records the slice topology, maximal geodesic network, complex lengths, and a framing graph. In Euclidean conventions,

$$
L_{\rm open}=\pi\mathsf r,\qquad
L_{\rm closed}=2\pi\mathsf r_+,\qquad
K_{\rho\phi}=i\mathsf r_-,\qquad K_{\phi\phi}=0.
$$

The zero-loop WdW wavefunction is a constrained saddle sum,

$$
\Psi[h]=(h|\Psi)=\int^*_{\rm bd\,conds}Dg\,e^{-I[g]}.
$$

Fixing complex lengths and angular momenta requires the slice term

$$
\begin{aligned}
8\pi G_N I_\Sigma={}&
-\int_{\Sigma_{\rm sm}}\sqrt h\,K\\
&-\frac12\sum_\gamma
\left[(\pi-\vartheta_\gamma)\ell_\gamma
+(\pi-\bar\vartheta_\gamma)\bar\ell_\gamma\right]
-\int_{\partial\Sigma}\left(\frac\pi2-\theta\right).
\end{aligned}
$$

The Hayward-type contribution changes an $r_+\delta\theta$ variation into $\theta\delta r_+$; the framing/twist term performs the analogous Legendre transform for angular momentum. This is the most directly reusable boundary-term lesson: the chosen fixed-area polarization is not obtained by imposing length data alone; it requires the matching corner and twist terms in the action.

# Three levels of inner product

The kinematical kernel is diagonal in topology, marked homotopy classes, and complex lengths,

$$
(\Sigma',\ell'|\Sigma,\ell)
=\delta_{\Sigma_\gamma,\Sigma'_{\gamma'}}
\prod_\gamma\delta^{(2)}(\ell_\gamma-\ell'_\gamma).
$$

The perturbative rigging map sums fillings through which the two slices remain homotopic and preserves a same-topology delta. The physical rigging map instead sums all allowed fillings,

$$
(\Sigma',\ell'|\eta|\Sigma,\ell)
=\int^*_{\partial M=\Sigma\cup\Sigma'}Dg\,
e^{-(I_0+I_\Sigma+I_{\Sigma'})}.
$$

Different classical slice topologies can therefore acquire nonzero overlap. The authors call these additional identifications “nonperturbative gauge transformations,” but do not claim they are ordinary gauge transformations generated by first-class constraints. External homotopy classes yield exact length deltas on a fixed hyperbolic saddle; internal networks require $6j$ kernels, braiding phases, modular kernels, Dehn-twist sums, and topology-changing saddles.

# Complex lengths become primary and OPE networks

The CFT momentum convention is

$$
h=\frac{c-1}{24}+P^2,\qquad
b\simeq\sqrt{\frac6{c-1}}\simeq\sqrt{4G_N}.
$$

Every network edge is projected onto the CFT primary spectrum and normalized by the square root of the primary density. Every pair-of-pants vertex becomes a normalized OPE coefficient. Schematically,

$$
V|\Gamma,\ell,\bar\ell;\psi_{\rm bdgrav})
=\sum_{\rm prim}
\left[\prod_e\frac{\widetilde\delta_e^{(2)}}{\sqrt{\rho_p(P_e,\bar P_e)}}\right]
\left[\prod_v\frac{C_{i_vj_vk_v}}{\sqrt{\mathfrak C_{i_vj_vk_v}}}\right]
\bigotimes_{e\,\mathrm{external}}|P_e,\bar P_e\rangle
\otimes|\psi\rangle_{\rm desc},
$$

where

$$
\widetilde\delta^{(2)}=
\delta\!\left[(\ell+\bar\ell)-2\pi b(P+\bar P)\right]
\delta\!\left[-i(\ell-\bar\ell)-2\pi b(P-\bar P)\right].
$$

Only external primary labels appear in the tensor-product boundary state; internal labels live inside its OPE-contraction wavefunction. The external length/primary relation has an argument from deforming a geodesic Wilson loop to a self-adjoint Verlinde loop. The internal rule and vertex rule do not: they rely on the conditional matching between gravitational saddles and averaged OPE networks.

# Where approximate isometry can hold

The map is not isometric on sharp fixed-area distributions. It can annihilate lengths absent from the discrete primary spectrum, and different internal-length eigenstates can map to proportional vectors. The proposed semiclassical domain therefore requires every length to be smeared over at least a microcanonical window and the phases to vary slowly.

On that domain, sums over primaries are replaced by density-weighted integrals and rapidly fluctuating products of OPE coefficients by microcanonical averages. The decisive conjecture is schematically

$$
\mathbb E_{\mu c}[\text{contracted OPE network}]
=\left(\prod_v\mathfrak C_v\right)^{1/2}
\times[\text{matching GPI/topological network}].
$$

Then, and only then, $(V\phi,V\psi)$ is argued to reproduce the transseries of $(\phi|\eta|\psi)$. The failure modes are distinct:

1. a sharp length misses the primary spectrum;
2. an unsmeared state resolves atypical OPE fluctuations;
3. a light bulk field spoils identity-block dominance, so pure GR is the wrong EFT;
4. non-handlebody terms required by a single CFT are not controlled by standard averaged formulas;
5. OPE statistics can encode off-shell topologies absent from a saddle-only path integral;
6. the topology sum, loops, matter, and the extension of asymptotic density formulas down to $h\sim c$ are not controlled.

# Emergent bases and relational interior lengths

Changing the maximal nonintersecting geodesic network is a Hamiltonian gauge change in the bulk. Its kernel contains a generalized tetrahedron/Virasoro $6j$ factor and the semiclassical exponential

$$
e^{(\ell_s-\ell_t)/(8G_N)}.
$$

Sharp $s$- and $t$-channel states do not become two exact boundary bases: their internal labels are only wavefunction data, so their images may be proportional or vanish. After microcanonical smearing, averaged OPE contractions can make them approximately orthogonal overcomplete bases. “Bulk gauge” therefore appears as a change among emergent semiclassical bases, not an exact change among sharply labeled CFT bases.

An interior length operator is likewise reconstructed only on the approximate-isometry domain. The bulk insertion is defined with the rigging map,

$$
\hat\ell_s=\int d^5\ell\,\ell_s
|\Sigma_{4,s},\ell)(\Sigma_{4,s},\ell|\eta,
$$

and the desired boundary relation is

$$
(\phi|\eta\hat F|\psi)
\simeq
(\phi|V^\dagger\mathcal R^*_{g,n}(\hat F)V|\psi).
$$

The proposed $\mathcal R^*$ is primary-diagonal and uses a positive microcanonical partition of unity. Matching its matrix elements requires a further single-CFT typicality assumption for repeated OPE indices. No boundary reconstruction of the conjugate relative boost is given.

# Closed universes and why a massive probe helps

A closed fixed-area network maps to a number, hence to a one-dimensional boundary Hilbert space. The leading pure-gravity inner product factorizes,

$$
(\phi|\eta|\psi)=
\left(\int d^3\ell\,e^{\sum_i\ell_i/(8G_N)}\phi(\ell)\right)^*
\left(\int d^3\ell\,e^{\sum_i\ell_i/(8G_N)}\psi(\ell)\right)+\cdots.
$$

After normalization, generic pure closed-universe states become nearly parallel instead of providing an approximately orthogonal coherent-state manifold. A generic massive probe can remove the disconnected self-identification saddle: for a once-punctured torus, the unique puncture has no matching point on the same surface. Its conical parameter maps to

$$
h=\frac c{24}\left(1-\frac{\Delta\phi^2}{4\pi^2}\right),
$$

and a diagonal covariance of the corresponding $C_{112}$ coefficients restores the kinematical overlap at leading order. This is a partial saddle argument; equal masses and multi-copy exchanges can reintroduce competing identifications.

# Verification and source inconsistencies

## Independently checked

- Mathematica traced the two-dimensional ETW equation and reproduced $K=2T$ and $K_{ab}=Th_{ab}$.
- Solving the two chiral length equations reproduced $L=(\ell^++\ell^-)/2$ and $r_-/r_+=(\ell^+-\ell^-)/(\ell^++\ell^-)$.
- Specializing the displayed spectral delta function to real $\ell=\bar\ell$ and $P=\bar P$ gives $P=\ell/(2\pi b)$.

## Blocked

- The introduction and reconstruction partition use $P=\ell/(4\pi b)$, while the displayed defining delta function gives $P=\ell/(2\pi b)$ on the real slice. The source does not reconcile this factor of two, so no correction is chosen here.
- The prose calls the microcanonical standard deviation $O(G_N)$, while the displayed second moment is $O(G_N)$, which would make the standard deviation $O(\sqrt{G_N})$. The source's surrounding discussion relies on distinguishing those two widths.

## Source-derived boundary

The Einstein saddle classification, Hayward/twist variational analysis, Virasoro kernels and $6j$ identities, OPE-network statistics, single-CFT typicality, topology-sum completion, closed-universe dominance, and massive-probe repair were not independently derived. The detailed note therefore preserves the paper's conditional claim tier rather than calling $V$ an established isometry.

