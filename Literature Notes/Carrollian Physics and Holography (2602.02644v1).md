---
paper id: 2602.02644v1
title: Carrollian Physics and Holography
authors: [Romain Ruzziconi]
publication date: 2026-02-02T19:00
abstract: "This report reviews key developments in Carrollian physics with an emphasis on their role in the emerging framework of holography in asymptotically flat spacetimes. We begin by introducing the Carrollian limit, understood as the non-relativistic contraction of the Poincaré group obtained by formally taking the speed of light to zero. The geometric structures associated with this limit are described and argued to arise naturally on null hypersurfaces, most notably on null infinity, as well as black hole and cosmological horizons. Building on this, we examine the relation between the Bondi-Metzner-Sachs symmetries governing asymptotically flat gravity and the conformal Carrollian symmetries. Explicit examples of Carrollian field theories are constructed by implementing the limit on well-known relativistic field theories, with particular attention to Carrollian CFTs. We then present the Carrollian holography proposal, according to which gravity in asymptotically flat spacetimes is dual to a Carrollian CFT living at null infinity in one lower dimension. In this framework, the massless $\\mathcal{S}$-matrix written in position space at null infinity is naturally reinterpreted in terms of boundary Carrollian CFT correlators, called Carrollian amplitudes. We highlight their relation to celestial amplitudes and show how they naturally emerge from holographic CFT correlators through a correspondence between the flat space limit in the bulk and the Carrollian limit at the boundary. Using this correspondence, we provide strong evidence that flat space holography arises from a controlled and consistent limiting procedure applied to both sides of the AdS/CFT duality. We conclude by outlining future directions and open questions in the program."
comments: "158 pages, 15 figures. Comments are welcome"
pdf: "[[Attachments/Assets/Carrollian Physics and Holography (2602.02644v1).pdf]]"
url: https://arxiv.org/abs/2602.02644v1
tags: []
---

# one-sentence summary

This review argues that flat-space holography can be organized as a Carrollian boundary theory at null infinity: Carrollian geometry supplies the boundary kinematics, conformal Carrollian symmetries reproduce BMS symmetries, and massless scattering amplitudes become Carrollian correlators related by integral transforms to celestial amplitudes and by flat limits to AdS/CFT correlators.

Source status: this note was prepared from the local 158-page PDF, with the arXiv page used only for metadata. Equation entries below are marked $Source-transcribed$ when copied or structurally transcribed from the paper/PDF extraction, and $Checked$ only when an independent calculation has been performed. No entry below is machine-verified unless explicitly stated.

# core problem

The paper asks for a coherent boundary language for quantum gravity in asymptotically flat spacetimes. The technical tension is that the natural boundary of flat spacetime is null infinity rather than a timelike conformal boundary. A null boundary carries a degenerate metric and a preferred null direction, so the right boundary geometry is Carrollian rather than Lorentzian.

The review therefore has two intertwined tasks:

- Build the Carrollian kinematical and geometrical toolkit: Carrollian limits, Carrollian/conformal Carrollian algebras, Carrollian geometry, null hypersurfaces, and BMS symmetries.
- Use that toolkit as a holographic interface: Carrollian field theories, CCFT Ward identities, Carrollian amplitudes, soft/collinear limits, celestial transforms, and flat limits of AdS/CFT.

# main claim

The main claim is that a substantial part of flat-space holography is naturally described by conformal Carrollian physics on null infinity:

- the geometry of null infinity is conformal Carrollian;
- BMS symmetry is the conformal Carrollian symmetry of that geometry;
- massless bulk scattering data can be encoded in boundary Carrollian operators and Carrollian amplitudes;
- celestial holography is an integral transform of this Carrollian description rather than an unrelated framework;
- the flat-space limit of AdS/CFT produces the same Carrollian structures on the boundary, at least for the classes of correlators and Witten diagrams reviewed in the paper.

# section map

| Section | PDF page in TOC | Main role in the paper |
|---|---:|---|
| 1. Introduction | 4 | Motivates Carrollian physics as the boundary language for flat-space holography. |
| 2. Carrollian limit | 9 | Constructs Carrollian kinematics by contraction of relativistic groups/algebras and introduces conformal Carrollian symmetry. |
| 3. Carrollian geometry and symmetries | 17 | Develops intrinsic Carrollian geometry, connection data, and symmetry notions. |
| 4. Geometry of null hypersurfaces | 29 | Shows that null hypersurfaces and null infinity naturally induce Carrollian/conformal Carrollian structures and BMS symmetries. |
| 5. Carrollian field theories | 45 | Reviews Carrollian stress tensors and Lagrangian/Hamiltonian limits of fields. |
| 6. Elements of Carrollian CFTs | 62 | Develops Carrollian primaries, Ward identities, correlator branches, and OPE constraints. |
| 7. Carrollian holography | 76 | Defines boundary operators and Carrollian amplitudes from massless scattering, including soft and collinear limits. |
| 8. From Carrollian to celestial holography | 98 | Relates Carrollian amplitudes to celestial amplitudes by integral/Mellin transforms. |
| 9. Flat space/Carrollian limit of AdS/CFT | 108 | Shows how flat limits of AdS Witten diagrams and CFT correlators produce Carrollian amplitudes/correlators. |
| 10. Through the looking glass | 128 | Summarizes lessons and lists open problems. |

# notation and conventions

- Spacetime dimensions in the review are usually written so that a Carrollian boundary has dimension $d$, with spatial slices of dimension $d - 1$. Four-dimensional asymptotically flat spacetime corresponds to a three-dimensional Carrollian boundary with coordinates $(u,z,\bar z)$.
- A Carrollian structure is built from a degenerate spatial metric $q_{ab}$ and a vector $n^a$ in its kernel:

$$\begin{align}
q_{ab} n^b = 0.
\end{align}$$

  The vector $n^a$ is the Carrollian time/fiber direction.
- An Ehresmann connection $k_a$ satisfies

$$\begin{align}
k_a n^a = -1,
\end{align}$$

  and splits the tangent bundle into vertical and horizontal parts.
- A convenient projector is

$$\begin{align}
q^a{}_b = \delta^a{}_b + n^a k_b.
\end{align}$$

- On flat Carrollian space one usually takes

$$\begin{align}
n = \partial_u,\qquad q = \delta_{AB}\,dx^A dx^B,\qquad k = -du.
\end{align}$$

- The conformal Carrollian level $N$ convention used in the paper writes conformal transformations as

$$\begin{align}
\mathcal L_\xi q_{ab}=2\alpha q_{ab},\qquad \mathcal L_\xi n^a=-\frac{2\alpha}{N}n^a.
\end{align}$$

  The level most directly tied to standard BMS/CCFT discussions is $N=2$.
- In four bulk dimensions, null infinity uses complex stereographic coordinates $(z,\bar z)$ on the celestial sphere and retarded time $u$.
- Momentum directions for massless scattering are written using null vectors $q^\mu(z,\bar z)$ and energy/frequency variables $\omega$, with incoming/outgoing sign $\epsilon$.
- Formula status labels in this note:
  - $Source-transcribed$: copied or structurally transcribed from the PDF/paper text.
  - PDF rendering notes are recorded separately in comments; they do not change the formula status label.
  - $Checked$: independently verified by calculation. This note currently has no machine-verified $Checked$ formulas.
  - Conceptual claims may include comments such as "not independently derived here", but formulas are not promoted to $Checked$ without an actual independent calculation.

# section-by-section deep notes

## 1. Introduction

**Role.** The introduction sets the physical problem: flat-space holography should be formulated at null infinity, and null infinity carries Carrollian rather than Lorentzian geometry.

**Subsection jobs.**

- Motivate why AdS/CFT intuition does not directly transfer to asymptotically flat spacetimes.
- Explain why BMS symmetry and soft theorems are central clues.
- Present Carrollian geometry as the natural boundary structure of null hypersurfaces.
- Preview the relation among Carrollian holography, celestial holography, and flat limits of AdS/CFT.

**Key objects.**

- Null infinity $\mathscr I^\pm$.
- BMS group and its conformal Carrollian interpretation.
- Carrollian field theories and Carrollian conformal field theories.
- Scattering amplitudes as boundary correlators.
- Celestial amplitudes as Mellin/integral transforms of Carrollian amplitudes.

**Assumptions.**

- The boundary of an asymptotically flat spacetime is null, not timelike.
- Boundary symmetries should preserve the universal null/conformal Carrollian structure.
- The holographic data should include scattering information, not only local boundary dynamics.

**Central formulas.**

- No single formula dominates the introduction. Its central structural statement is the identification of null infinity with a conformal Carrollian manifold and of BMS transformations with conformal Carrollian transformations.

**Argument chain.**

1. In AdS/CFT the timelike boundary supports a Lorentzian CFT.
2. In flat space the boundary is null infinity, whose induced metric is degenerate.
3. Degenerate boundary geometry is Carrollian geometry.
4. BMS symmetries are the symmetry transformations of that Carrollian boundary geometry.
5. This suggests that the flat-space hologram is a Carrollian theory, and that scattering amplitudes should be expressible as Carrollian correlators.

**Likely sticking points.**

- The word "Carrollian" is not just a limit of particle kinematics; it is a geometric structure on null hypersurfaces.
- The Carrollian boundary theory is not expected to look like an ordinary local Lorentzian QFT.
- Celestial holography and Carrollian holography are different bases/representations of related scattering data.

**What to learn.**

- Read the introduction as a roadmap: every later section either builds the Carrollian boundary geometry, constructs its field-theory consequences, or connects it to amplitudes and AdS/CFT limits.

## 2. Carrollian limit

**Role.** This section provides the kinematical foundation: the Carrollian limit is the ultra-relativistic $c -> 0$ contraction complementary to the Galilean $c -> infinity$ contraction.

**Subsection jobs.**

- 2.1 compares Galilean and Carrollian limits of Lorentz transformations.
- 2.2 constructs Galilean and Carrollian groups from Poincare transformations.
- 2.3 derives Galilean and Carrollian algebras by contraction.
- 2.4 extends the contraction to conformal algebras and introduces global and infinite conformal Carrollian algebras.

**Key objects.**

- Poincare group $ISO(d,1)$.
- Galilei group and algebra.
- Carroll group $Carr_d$ and Carroll algebra.
- Conformal Carrollian algebra $CCarr_d$.
- Supertranslations $M_T$.

**Assumptions.**

- The speed of light $c$ is restored explicitly before taking limits.
- The Galilean limit holds temporal separations fixed and sends $c -> infinity$.
- The Carrollian limit holds the appropriate rescaled time coordinate fixed and sends $c -> 0$.
- Algebra contractions are performed after rescaling boost/time generators.

**Central formulas.**

- Galilean interval transformation in the non-relativistic regime:

$$\begin{align}
\Delta t'=\Delta t,\qquad \Delta x'=\Delta x+v\Delta t.
\end{align}$$

  Status: $Source-transcribed$.
- Carrollian interval transformation in the ultra-relativistic regime:

$$\begin{align}
\Delta t'=\Delta t+v\,\Delta x,\qquad \Delta x'=\Delta x.
\end{align}$$

  Status: $Source-transcribed$.
- Finite Carrollian transformations:

$$\begin{align}
u'=u+v\cdot R x+b,\qquad x'=Rx+a.
\end{align}$$

  Status: $Source-transcribed$.
- Carroll algebra commutator:

$$\begin{align}
[B_A,P_B]=i\delta_{AB}H,\qquad [B_A,H]=0.
\end{align}$$

  Status: $Source-transcribed$.
- Standard vector-field realization on flat Carrollian space:

$$\begin{align}
B_A=-ix_A\partial_u,\qquad H=-i\partial_u,\qquad P_A=-i\partial_A.
\end{align}$$

  Status: $Source-transcribed$.
- Global conformal Carrollian enhancement includes

$$\begin{align}
D=-i(u\partial_u+x^A\partial_A),\qquad K=-i x^A x_A\partial_u,
\end{align}$$

$$\begin{align}
K_A=i(2x_Au\partial_u+2x_Ax^B\partial_B-x^Bx_B\partial_A).
\end{align}$$

  Status: $Source-transcribed$. Rendering note: the relevant PDF page around equations (2.21)-(2.27) was inspected.
- Key algebraic identification:

$$\begin{align}
CCarr_d^{\mathrm{glob}}\simeq iso(d,1).
\end{align}$$

  Status: $Source-transcribed$. Rendering note: the relevant PDF page was inspected.
- Infinite supertranslations:

$$\begin{align}
M_T=-iT(x)\partial_u.
\end{align}$$

  Status: $Source-transcribed$.

**Argument chain.**

1. Start from Lorentz/Poincare transformations with explicit $c$.
2. Taking $c -> infinity$ gives Galilean kinematics where simultaneity is absolute and space shifts under boosts.
3. Taking $c -> 0$ gives Carrollian kinematics where spatial position is invariant under boosts and time shifts by a boost-dependent spatial function.
4. Contracting Poincare generators yields the Carroll algebra, with $H$ becoming central in the boost-translation sector.
5. Contracting the relativistic conformal algebra yields a global conformal Carrollian algebra isomorphic to one-higher-dimensional Poincare.
6. Allowing arbitrary spatial functions in the time translation generator gives the infinite supertranslation enhancement that will later match BMS symmetry.

**Likely sticking points.**

- The Carrollian limit is not "slow motion"; it is the opposite causal limit where light cones collapse toward the time direction and spatial propagation becomes constrained.
- The same word "conformal" appears in relativistic conformal algebra and conformal Carrollian algebra, but the contraction changes the representation and physical interpretation.
- The isomorphism $CCarr_d^{glob} \simeq iso(d,1)$ is algebraic; it does not mean the boundary geometry is ordinary Minkowski spacetime.

**What to learn.**

- Be able to derive the finite Carroll transformation from a rescaled Poincare transformation.
- Be able to reproduce the generator contraction giving $[B_A,P_B]=i\delta_{AB}H$.
- Understand why arbitrary $T(x)$ supertranslations are natural once the Carrollian time direction is fibered over space.

## 3. Carrollian geometry and symmetries

**Role.** This section upgrades Carrollian kinematics to intrinsic differential geometry: it defines the data living on a Carrollian manifold, the ambiguity of Carrollian connections, and the relevant symmetry groups.

**Subsection jobs.**

- 3.1 defines Carrollian geometry through $(q_{ab},n^a)$.
- 3.2 introduces the Ehresmann connection $k_a$ and horizontal/vertical splitting.
- 3.3 describes Carrollian frames and coframes.
- 3.4 defines curvature, acceleration, vorticity, expansion, and shear.
- 3.5 studies Carrollian connections and the absence of a unique Levi-Civita analogue.
- 3.6 defines isometries, conformal Carrollian symmetries, Newman-Unti transformations, and Carrollian diffeomorphisms.

**Key objects.**

- Degenerate spatial metric $q_{ab}$.
- Kernel vector $n^a$.
- Ehresmann connection $k_a$.
- Projector $q^a{}_b$.
- Spatial frame $m_I{}^a$ and coframe $m^I{}_a$.
- Extrinsic curvature $\theta_{ab}$.
- Acceleration $\varphi_a$, vorticity $\varpi_{ab}$, shear $\sigma_{ab}$.
- Carrollian connection $D_a$.

**Assumptions.**

- $q_{ab}$ has rank $d-1$ on a $d$-dimensional Carrollian manifold.
- $n^a$ spans the kernel of $q_{ab}$.
- Choosing $k_a$ is extra splitting data, not part of the minimal Carrollian pair unless specified.
- There is no canonical torsion-free, metric-compatible Levi-Civita connection for a degenerate metric.

**Central formulas.**

- Carrollian structure:

$$\begin{align}
q_{ab}n^b=0.
\end{align}$$

  Status: $Source-transcribed$.
- Ehresmann normalization and projector:

$$\begin{align}
k_an^a=-1,\qquad q^a{}_b=\delta^a{}_b+n^ak_b.
\end{align}$$

  Status: $Source-transcribed$.
- Partial inverse:

$$\begin{align}
q^{ab}q_{bc}=\delta^a{}_c+n^ak_c.
\end{align}$$

  Status: $Source-transcribed$.
- Connection curvature decomposition:

$$\begin{align}
dk=\varphi\wedge k+\varpi.
\end{align}$$

  Status: $Source-transcribed$.
- Frobenius condition:

$$\begin{align}
k\wedge dk=0\quad \Longleftrightarrow\quad \varpi=0.
\end{align}$$

  Status: $Source-transcribed$.
- Extrinsic curvature, expansion, and shear:

$$\begin{align}
\theta_{ab}=\frac12\mathcal L_nq_{ab},\qquad \theta=q^{ab}\theta_{ab},\qquad \sigma_{ab}=\theta_{ab}-\frac{1}{d-1}q_{ab}\theta.
\end{align}$$

  Status: $Source-transcribed$.
- Compatible connection condition:

$$\begin{align}
D_aq_{bc}=0,\qquad D_an^b=0,
\end{align}$$

  with torsion component constrained by $T_{(I|0|J)}=\theta_{IJ}$ in the frame notation used by the paper.
  Status: $Source-transcribed$.
- Unconditionally torsion-free connection in the special choice highlighted in the paper:

$$\begin{align}
(D_a-\omega_a)n^b=\theta_a{}^b,\qquad D_aq_{bc}=-k_b\theta_{ac}-k_c\theta_{ab}.
\end{align}$$

  Status: $Source-transcribed$. Rendering note: the relevant PDF page around equations (3.41)-(3.47) was inspected.
- Level-$N$ conformal Carrollian conditions:

$$\begin{align}
\mathcal L_\xi q_{ab}=2\alpha q_{ab},\qquad \mathcal L_\xi n^a=-\frac{2\alpha}{N}n^a.
\end{align}$$

  Status: $Source-transcribed$.

**Argument chain.**

1. A Carrollian manifold is a fibered geometry: the degenerate direction $n^a$ plays the role of Carrollian time.
2. To compute horizontal derivatives and define spatial inverse data, one introduces an Ehresmann connection $k_a$.
3. The choice of $k_a$ is not unique; Carrollian boosts shift the horizontal splitting.
4. Since $q_{ab}$ is degenerate, the Levi-Civita theorem fails. Different connection choices preserve different subsets of torsion, metricity, and boost covariance.
5. The intrinsic symmetry problem depends on which data are held fixed: preserving only $(q,n)$ gives a larger group than preserving $(q,n,k,D)$.
6. Conformal Carrollian symmetries scale $q$ and $n$ with linked weights controlled by level $N$; this structure will later reproduce BMS.

**Likely sticking points.**

- Do not treat $q^{ab}$ as a full inverse metric. It is only a spatial inverse after choosing $k_a$.
- The Ehresmann connection is not an ordinary gauge field added for decoration; it is the choice that separates horizontal spatial slices from the Carrollian fiber.
- There are several possible Carrollian connections. When a later formula says "the" Carrollian connection, check which compatibility/torsion conditions are being used.
- Isometries of $(q,n)$ are not automatically the finite Carroll group unless extra connection data are fixed.

**What to learn.**

- Be able to translate between the coordinate-free data $(q,n,k)$ and flat coordinates $(u,x^A)$.
- Track which geometric objects transform under Carrollian boosts.
- Understand why null hypersurface geometry in Section 4 naturally selects one of the torsion-free but non-metric Carrollian connections.

## 4. Geometry of null hypersurfaces

**Role.** This section is the bridge from abstract Carrollian geometry to spacetime geometry: a null hypersurface inherits a Carrollian structure, and null infinity inherits a conformal Carrollian structure whose symmetries are BMS.

**Subsection jobs.**

- 4.1 derives induced Carrollian data on null hypersurfaces.
- 4.2 introduces the null Brown-York stress tensor.
- 4.3 relates the construction to membrane paradigm, black hole horizons, and cosmological horizons.
- 4.4 reviews asymptotically flat spacetimes and BMS symmetries.
- 4.5 identifies BMS and conformal Carrollian algebras.

**Key objects.**

- Null hypersurface $\mathcal N$ defined by $f=0$.
- Null normal $n_\mu=\partial_\mu f$, which is also tangent when the hypersurface is null.
- Null rigging vector $\ell^\mu$ with $n\cdot\ell=-1$.
- Induced degenerate metric $q_{ab}$.
- Induced Carrollian vector $n^a$.
- Induced Ehresmann connection $k_a$.
- Weingarten map $W^a{}_b$.
- Null Brown-York stress tensor $T^a{}_b$.
- Bondi data $M$, $N_A$, $C_{AB}$, and news $N_{AB}$.
- BMS vector fields and supertranslations.

**Assumptions.**

- The hypersurface is null, so its normal is tangent.
- A rigging vector is chosen to project ambient tensors onto the hypersurface.
- At null infinity, one works with conformal compactification and equivalence under conformal rescalings.
- Bondi gauge and standard asymptotic flatness conditions are used in the BMS review.

**Central formulas.**

- Null hypersurface normal and rigging:

$$\begin{align}
n_\mu=\partial_\mu f,\qquad n^2=0,\qquad n\cdot\ell=-1.
\end{align}$$

  Status: $Source-transcribed$.
- Ambient projector:

$$\begin{align}
\Pi^\mu{}_\nu=\delta^\mu{}_\nu+\ell^\mu n_\nu.
\end{align}$$

  Status: $Source-transcribed$.
- Induced Carrollian data:

$$\begin{align}
q_{ab}=g_{\mu\nu}\Pi^\mu{}_a\Pi^\nu{}_b,\qquad n^a=\Pi^a{}_\mu n^\mu,\qquad k_a=\ell_\mu\Pi^\mu{}_a.
\end{align}$$

  Status: $Source-transcribed$.
- Induced connection equations:

$$\begin{align}
D_aq_{bc}=-k_b\theta_{ac}-k_c\theta_{ab},\qquad D_an^b=\omega_an^b+\theta_a{}^b.
\end{align}$$

  Status: $Source-transcribed$.
- Weingarten map and null Brown-York tensor:

$$\begin{align}
W^a{}_b=D_bn^a=n^a\omega_b+\theta^a{}_b,
\end{align}$$

$$\begin{align}
T^a{}_b=\frac{1}{8\pi G}\left(W^a{}_b-\delta^a{}_bW\right).
\end{align}$$

  Status: $Source-transcribed$.
- Bondi news:

$$\begin{align}
N_{AB}=\partial_u C_{AB}.
\end{align}$$

  Status: $Source-transcribed$.
- Null-infinity Carrollian data in standard coordinates:

$$\begin{align}
q_{ab}dx^adx^b=2\,dz\,d\bar z,\qquad n=\partial_u,\qquad k=-du.
\end{align}$$

  Status: $Source-transcribed$.
- Conformal compactification rescaling:

$$\begin{align}
q\mapsto \omega^2q,\qquad n\mapsto \omega^{-1}n.
\end{align}$$

  Status: $Source-transcribed$.
- BMS/conformal Carrollian vector on $\mathscr I$:

$$\begin{align}
\xi=\left(T+\frac{u}{2}(\partial Y+\bar\partial\bar Y)\right)\partial_u +Y\partial+\bar Y\bar\partial.
\end{align}$$

  Status: $Source-transcribed$.
- Algebraic identifications:

$$\begin{align}
\mathfrak{bms}_{d+1}\simeq CCarr_d,\qquad \mathfrak{ebms}_4\simeq eCCarr_3.
\end{align}$$

  Status: $Source-transcribed$.

**Argument chain.**

1. A null hypersurface has a degenerate induced metric because the normal vector lies inside the tangent bundle.
2. Choosing a rigging vector provides the Ehresmann connection and completes the intrinsic Carrollian data.
3. The ambient Levi-Civita connection induces a natural Carrollian connection on the hypersurface, with torsion-free but non-metric behavior matching Section 3.
4. Null extrinsic geometry produces a Brown-York-like tensor, whose conservation laws encode Raychaudhuri and Damour-type equations.
5. For asymptotically flat spacetimes, Bondi gauge isolates the universal asymptotic data at null infinity.
6. BMS vector fields preserve the universal conformal Carrollian structure of null infinity.
7. Therefore BMS symmetry is not an accidental asymptotic group but the conformal Carrollian symmetry of the boundary geometry.

**Likely sticking points.**

- A null hypersurface has no canonical unit normal; the normal is also tangent, so extrinsic geometry differs from spacelike/timelike hypersurfaces.
- The rigging vector is auxiliary, but changing it changes the splitting and must be tracked.
- The null Brown-York tensor is not the same object as the usual timelike Brown-York tensor, although it is structurally analogous.
- BMS at null infinity is tied to conformal Carrollian geometry, not merely to a coordinate ansatz.

**What to learn.**

- Re-derive the induced Carrollian data from the projector.
- Check how the asymptotic Bondi vector field restricts to the boundary vector $\xi$.
- Understand how Bondi news, mass loss, and soft flux data become boundary Carrollian stress-tensor statements.

## 5. Carrollian field theories

**Role.** This section reviews candidate Carrollian dynamics. It explains how stress tensors are defined on Carrollian backgrounds and how electric/magnetic Carrollian theories arise from relativistic field theories.

**Subsection jobs.**

- 5.1 defines the Carrollian stress tensor and its Ward identities.
- 5.2 analyzes scalar field limits.
- 5.3 reviews Maxwell, Yang-Mills, and gravity limits.
- 5.4 surveys fermions, swiftons, strings, and other models.
- 5.5 discusses quantization and the limitations of purely Lagrangian models.

**Key objects.**

- Carrollian background fields $n^a$, $q^{ab}$, frames, and possibly connection data.
- Carrollian stress tensor $T^a{}_b$.
- Electric and magnetic Carrollian limits.
- Scalar canonical pair $(\phi,\pi)$.
- Maxwell/Yang-Mills electric and magnetic sectors.
- Electric Carrollian gravity and magnetic Carrollian gravity.
- Hypermomenta from variations of connection-like data.

**Assumptions.**

- Relativistic actions are rewritten with explicit $c$ before taking limits.
- Different field scalings produce inequivalent Carrollian theories.
- Couplings may also have to scale with $c$ to obtain finite interacting limits.
- The stress tensor depends on which Carrollian background data are treated as sources.

**Central formulas.**

- Stress tensor variation in one common convention:

$$\begin{align}
\delta S=\int\epsilon\left(T_a^{(n)}\delta n^a+\frac12T_{ab}^{(q)}\delta q^{ab}\right).
\end{align}$$

  Status: $Source-transcribed$.
- Mixed stress tensor:

$$\begin{align}
T^a{}_b=n^aT_b^{(n)}+q^{ac}T_{cb}^{(q)}.
\end{align}$$

  Status: $Source-transcribed$.
- Flat-space Ward constraints:

$$\begin{align}
\partial_aT^a{}_b=0,\qquad T^A{}_B=T^B{}_A,\qquad T^A{}_u=0.
\end{align}$$

  Status: $Source-transcribed$.
- Weyl constraint:

$$\begin{align}
T^a{}_a=0.
\end{align}$$

  Status: $Source-transcribed$.
- Carrollian current for a symmetry vector:

$$\begin{align}
j^a_\xi=T^a{}_b\xi^b.
\end{align}$$

  Status: $Source-transcribed$.
- Electric scalar action:

$$\begin{align}
S_E=\frac12\int\epsilon\,(n^a\partial_a\phi)^2.
\end{align}$$

  Status: $Source-transcribed$.
- Magnetic scalar first-order action:

$$\begin{align}
S_M=\int\epsilon\left(\pi n^a\partial_a\phi-\frac12q^{ab}\partial_a\phi\partial_b\phi\right).
\end{align}$$

  Status: $Source-transcribed$.
- Hamiltonian magnetic/electric scalar limits:

$$\begin{align}
S_H^M=\int\left(\pi\dot\phi-\frac12\partial_A\phi\,\partial^A\phi\right),\qquad S_H^E=\int\left(\pi\dot\phi-\frac12\pi^2\right).
\end{align}$$

  Status: $Source-transcribed$.

**Argument chain.**

1. A field theory on a Carrollian background is defined by coupling matter to Carrollian sources and varying with respect to those sources.
2. The resulting stress tensor obeys conservation, symmetry, and trace conditions associated with Carrollian diffeomorphism, local rotations/boosts, and Weyl invariance.
3. Relativistic scalar theory admits different Carrollian limits depending on field and momentum scaling:
   - electric limit: time/fiber kinetic term dominates;
   - magnetic limit: spatial gradient term survives with first-order time evolution.
4. Maxwell and Yang-Mills theories similarly split into electric and magnetic limits, with coupling scalings required for nontrivial interactions.
5. Gravity has electric and magnetic Carrollian limits in Hamiltonian variables; the electric limit connects to strong-coupling or ultralocal gravity.
6. Quantization of simple electric/magnetic limits often gives Gaussian or lower-dimensional behavior, suggesting that the holographic CCFT relevant for scattering is not exhausted by naive Lagrangian Carrollian theories.

**Likely sticking points.**

- Electric and magnetic limits are not gauge choices; they are inequivalent Carrollian contractions/scalings.
- A finite Carrollian interaction may require scaling the coupling, not only the fields.
- Carrollian stress tensors can include hypermomentum terms if the background source set is enlarged.
- The Lagrangian examples are useful but do not yet give a complete quantum CCFT for flat-space holography.

**What to learn.**

- For each relativistic theory, identify which terms survive under electric and magnetic scaling.
- Track which Ward identity follows from which background-source symmetry.
- Compare the field-theory limits in this section with the distributional/electric branches of CCFT correlators in Section 6 and amplitudes in Section 7.

## 6. Elements of Carrollian CFTs

**Role.** This section develops the representation-theoretic and correlator constraints of Carrollian conformal field theory, especially in the $d=3$ boundary case relevant to four-dimensional scattering.

**Subsection jobs.**

- 6.1 defines Carrollian primary multiplets and their transformation laws.
- 6.2 derives stress-tensor Ward identities.
- 6.3 studies consequences for two-, three-, and four-point functions.
- 6.4 discusses OPEs and the absence of a fully standard state-operator framework.

**Key objects.**

- Carrollian primaries $\Phi$.
- Scaling dimension $\Delta$.
- Spin/weights $(k,\bar k)$ in $d=3$.
- Boost representation matrices $B_A$.
- Supertranslation generators $M_T$.
- Stress-tensor multiplet components.
- Magnetic, electric, and split-signature correlator branches.
- Carrollian OPEs.

**Assumptions.**

- Primary fields are representations of the stabilizer generated by rotations, boosts, special conformal transformations, and dilatations.
- In the extended $d=3$ case, holomorphic and antiholomorphic vector fields generate the extended BMS/conformal Carrollian algebra.
- Correlators are treated as distributions; delta-function support is allowed and physically important.
- Standard Euclidean CFT state-operator intuition is not assumed.

**Central formulas.**

- General supertranslation action on a primary multiplet:

$$\begin{align}
[M_T,\Phi]=\left(-iT\partial_u+\partial^AT\,B_A\right)\Phi.
\end{align}$$

  Status: $Source-transcribed$.
- In $d=3$, the extended BMS vector field is

$$\begin{align}
\xi=\left(T+\frac{u}{2}(\partial Y+\bar\partial\bar Y)\right)\partial_u +Y\partial+\bar Y\bar\partial.
\end{align}$$

  Status: $Source-transcribed$.
- Primary transformation in weights $(k,\bar k)$ has the schematic form

$$\begin{align}
\delta_\xi\Phi= \left[ \xi^u\partial_u+Y\partial+\bar Y\bar\partial +k\partial Y+\bar k\bar\partial\bar Y \right]\Phi
\end{align}$$

  for the scalar/diagonal case.
  Status: $Source-transcribed$.
- Carrollian time descendants shift weights:

$$\begin{align}
\partial_u^m\Phi\quad\text{has}\quad (k,\bar k)\mapsto \left(k+\frac m2,\bar k+\frac m2\right).
\end{align}$$

  Status: $Source-transcribed$.
- Stress-tensor Ward identities appear as local conservation/trace/rotation/boost equations for the Carrollian stress-tensor multiplet.
  Status: $Source-transcribed$; not independently re-derived here.

**Argument chain.**

1. Carrollian primary fields are classified by dimension, spin, and boost representation data.
2. Supertranslations act not only by $T\partial_u$ but also through boost matrices when $T$ has spatial gradients.
3. In three Carrollian dimensions the algebra becomes the extended BMS algebra with holomorphic generators.
4. Ward identities constrain correlators but allow multiple distributional branches.
5. Magnetic branches resemble ordinary two-dimensional CFT correlators on the celestial sphere.
6. Electric branches are supported on coincident angular/celestial positions and carry nontrivial $u$ dependence.
7. Four-point functions reveal cross-ratio dependence and distributional support similar to amplitudes.
8. OPEs are subtler than in ordinary CFT because a standard state-operator correspondence is not established.

**Likely sticking points.**

- The electric branch is not a pathology; it is essential for matching flat-space scattering amplitudes.
- Delta functions in angular variables are part of the correct distributional structure.
- The Ward identities do not fully fix all correlators, especially higher-point functions.
- OPEs can be holomorphic in special regimes but the general Carrollian OPE is more distributional and less settled than in 2d CFT.

**What to learn.**

- Work through how $(k,\bar k)$ encode conformal dimension and spin:

$$\begin{align}
\Delta=k+\bar k,\qquad s=k-\bar k.
\end{align}$$

- Derive the two-point magnetic and electric branch structures from Ward identities.
- Compare the four-point electric branch here with the four-point amplitude formulas in Section 7 and the CFT flat-limit formulas in Section 9.

## 7. Carrollian holography

**Role.** This is the central holographic section. It defines boundary Carrollian operators from massless bulk fields and rewrites flat-space scattering amplitudes as Carrollian correlators.

**Subsection jobs.**

- 7.1 constructs boundary operators from massless fields near null infinity.
- 7.2 defines Carrollian amplitudes from momentum-space S-matrix elements.
- 7.3 computes examples.
- 7.4 relates soft limits to Ward identities.
- 7.5 relates collinear limits to OPEs.
- 7.6 gives Feynman rules for Carrollian amplitudes.
- 7.7 discusses differential equations satisfied by the amplitudes.

**Key objects.**

- Massless spin-$J$ field modes.
- Null momentum direction $q^\mu(z,\bar z)$.
- Boundary field $\Phi_J^\epsilon(u,z,\bar z)$.
- Momentum-space amplitude $\mathcal A_n$.
- Carrollian amplitude/correlator.
- Modified Mellin transform.
- Soft graviton/gluon operators.
- Collinear splitting functions and Carrollian OPE.
- Bulk-to-boundary propagators in flat space.

**Assumptions.**

- The discussion focuses on massless external states.
- Asymptotic fields are evaluated at null infinity by large-$r$ stationary phase.
- The S-matrix is interpreted distributionally; IR subtleties can require regulators.
- Boundary operators have Carrollian conformal weights fixed by helicity/sign in the basic massless dictionary.

**Central formulas.**

- Boundary operator weights for massless helicity $J$ and sign $\epsilon$:

$$\begin{align}
k=\frac{1+\epsilon J}{2},\qquad \bar k=\frac{1-\epsilon J}{2},\qquad \Delta=1.
\end{align}$$

  Status: $Source-transcribed$.
- Position-space Carrollian amplitudes are Fourier transforms of momentum-space amplitudes in external energies:

$$\begin{align}
\left\langle\prod_{i=1}^n \Phi_{J_i}^{\epsilon_i}(u_i,z_i,\bar z_i)\right\rangle = \int_0^\infty \prod_{i=1}^n d\omega_i\, e^{-i\sum_i\epsilon_i\omega_i u_i} \mathcal A_n(\omega_i,z_i,\bar z_i,J_i,\epsilon_i),
\end{align}$$

  up to the paper's normalization conventions.
  Status: $Source-transcribed$. Rendering note: the relevant PDF page around equations (7.29)-(7.32) was inspected.
- Carrollian amplitudes as boundary correlators:

$$\begin{align}
\mathcal C_n= \left\langle\Phi_{J_1}^{\epsilon_1}(u_1,z_1,\bar z_1)\cdots \Phi_{J_n}^{\epsilon_n}(u_n,z_n,\bar z_n)\right\rangle.
\end{align}$$

  Status: $Source-transcribed$. Rendering note: the relevant PDF page was inspected.
- Modified Mellin transform introduces arbitrary dimension:

$$\begin{align}
\Phi_{\Delta,J}^{\epsilon}(u,z,\bar z) = \int_0^\infty d\omega\,\omega^{\Delta-1}e^{-i\epsilon\omega u} a_J^\epsilon(\omega,z,\bar z),
\end{align}$$

  schematically in the paper's convention.
  Status: $Source-transcribed$. Rendering note: the relevant PDF page was inspected.

**Argument chain.**

1. Start with a massless field in the bulk and expand it in momentum modes.
2. Parameterize null momenta by energy and celestial coordinates.
3. Take the large-radius limit at null infinity; stationary phase localizes the boundary insertion at the same celestial direction as the bulk momentum.
4. Define boundary Carrollian operators from these asymptotic modes.
5. Fourier transform the momentum-space S-matrix in the energies to obtain position-space correlators in retarded/advanced times $u_i$.
6. These correlators transform as Carrollian amplitudes and match the electric distributional branches anticipated in Section 6.
7. Soft limits become Ward identities for boundary currents/stress tensors.
8. Collinear limits become OPE statements in the Carrollian boundary theory.
9. Flat-space Feynman rules can be rewritten with bulk-to-boundary propagators ending on null infinity.

**Likely sticking points.**

- The basic massless Carrollian operator has $\Delta=1$; other dimensions in the modified Mellin basis are descendants/transforms, not extra independent scattering data.
- The $u$ coordinate is not a small detail: it is the variable conjugate to energy and carries the difference between Carrollian and celestial representations.
- Soft $\omega -> 0$ translates into large-$u$ behavior at fixed Mellin dimension in the Carrollian picture.
- Collinear/OPE statements are distributional and depend on signature/analytic continuation.

**What to learn.**

- Derive the Fourier dictionary between $\mathcal A_n$ and the Carrollian correlator.
- Work through the two-point example and understand the IR divergence at the special dimension.
- Compare the four-point MHV examples with the electric four-point CCFT branch in Section 6.
- Translate a standard soft theorem into the corresponding boundary Ward identity.

## 8. From Carrollian to celestial holography

**Role.** This section explains that celestial holography is obtained from Carrollian holography by an integral transform in the Carrollian time coordinate.

**Subsection jobs.**

- 8.1 reviews celestial conformal primary wavefunctions and celestial amplitudes.
- 8.2 gives the transform from Carrollian to celestial amplitudes.
- 8.3 discusses celestial symmetries, currents, and OPEs in relation to the Carrollian picture.

**Key objects.**

- Celestial operators $\mathcal O_{\Delta,J}^{\epsilon}(z,\bar z)$.
- Principal continuous series $\Delta=1+i\nu$.
- Mellin transform in energy.
- Integral transform in $u$.
- Conformally soft modes.
- Kac-Moody currents and celestial stress tensors.
- Symmetry algebras such as the Yang-Mills $S$-algebra and gravitational $Lw_{1+\infty}$-type structures.

**Assumptions.**

- External states are massless.
- Celestial amplitudes are Mellin transforms of momentum-space amplitudes.
- Carrollian amplitudes already encode the same energy dependence through the $u$ coordinate.
- Integral transforms may be distributional and require prescriptions.

**Central formulas.**

- Celestial transform of a Carrollian primary:

$$\begin{align}
\mathcal O_{\Delta,J}^{\epsilon}(z,\bar z) = \kappa_\Delta^\epsilon \int_{-\infty}^{+\infty} \frac{du}{(u+i\epsilon 0)^\Delta} \Phi_J^\epsilon(u,z,\bar z),
\end{align}$$

  in the paper's prescription-dependent normalization.
  Status: $Source-transcribed$.
- Correlator transform:

$$\begin{align}
\left\langle\prod_i\mathcal O_{\Delta_i,J_i}^{\epsilon_i}(z_i,\bar z_i)\right\rangle = \prod_i\kappa_{\Delta_i}^{\epsilon_i} \int \prod_i \frac{du_i}{(u_i+i\epsilon_i0)^{\Delta_i}} \left\langle\prod_i\Phi_{J_i}^{\epsilon_i}(u_i,z_i,\bar z_i)\right\rangle.
\end{align}$$

  Status: $Source-transcribed$.
- Modified Mellin relation:

$$\begin{align}
\mathcal O_{\Delta,J}^{\epsilon}(z,\bar z) = 2\pi\,\Phi_{\Delta,J}^{\epsilon}(u=0,z,\bar z),
\end{align}$$

  in the convention highlighted by the paper.
  Status: $Source-transcribed$.

**Argument chain.**

1. Celestial amplitudes Mellin-transform energy variables into conformal dimensions.
2. Carrollian amplitudes Fourier-transform energy variables into retarded/advanced times.
3. Since Fourier and Mellin descriptions are related by an integral transform, celestial operators are transforms of Carrollian operators in $u$.
4. The celestial basis diagonalizes Lorentz/conformal transformations on the sphere, while the Carrollian basis keeps time dependence local at null infinity.
5. Soft currents and celestial OPEs can be obtained by transforming the corresponding Carrollian soft/OPE data.

**Likely sticking points.**

- Celestial and Carrollian descriptions are not competing boundary locations; they are different bases for the same asymptotic scattering data.
- The celestial operator dimension is continuous in the principal series, while the basic Carrollian scattering operator has fixed $\Delta=1$.
- Translation symmetry acts nontrivially in the celestial basis by shifting dimensions; this is simpler in the Carrollian $u$ representation.

**What to learn.**

- Starting from the Carrollian amplitude definition, perform the $u$-integral formally and recover the Mellin transform of the momentum-space amplitude.
- Track how soft operators behave under the transform.
- Compare which symmetries are manifest in the Carrollian basis and which are manifest in the celestial basis.

## 9. Flat space/Carrollian limit of AdS/CFT

**Role.** This section connects Carrollian holography to AdS/CFT by taking the flat-space limit in the bulk and the Carrollian limit on the boundary.

**Subsection jobs.**

- 9.1 reviews useful AdS coordinate systems and their flat limits.
- 9.2 studies Witten diagrams in the flat limit.
- 9.3 takes the Carrollian limit of holographic CFT correlators.
- 9.4 discusses top-down flat-space holography, especially ABJM/M-theory examples.

**Key objects.**

- AdS radius $\ell$.
- Boundary speed-of-light parameter related schematically to $1/\ell$.
- AdS Bondi coordinates.
- Bulk-to-bulk and bulk-to-boundary propagators.
- Witten diagrams.
- CFT correlators with $x=(cu,z,\bar z)$.
- Electric and magnetic Carrollian branches.
- ABJM theory and M-theory on $AdS_4\times S^7/\mathbb Z_k$.

**Assumptions.**

- The flat limit is $\ell -> infinity$.
- Boundary coordinates are scaled so that the CFT speed of light goes to zero, producing a Carrollian boundary limit.
- Lorentzian or Kleinian analytic continuation may be required before taking distributional limits.
- The paper focuses on classes of correlators/diagrams where the flat limit can be controlled.

**Central formulas.**

- AdS Bondi metric:

$$\begin{align}
ds^2=-\frac{r^2}{\ell^2}du^2-2\,du\,dr+2r^2dz\,d\bar z.
\end{align}$$

  Status: $Source-transcribed$.
- Boundary metric:

$$\begin{align}
ds^2_{\partial AdS}=-\frac{du^2}{\ell^2}+2\,dz\,d\bar z.
\end{align}$$

  Status: $Source-transcribed$.
- Boundary Carrollian limit:

$$\begin{align}
\ell\to\infty\quad\Longleftrightarrow\quad c_{\partial}\to0.
\end{align}$$

  Status: $Source-transcribed$ as a structural identification.
- AdS chordal-distance flat-limit structure:

$$\begin{align}
\xi^{AdS}_{12}=\xi^{Flat}_{12}-\frac{r_1r_2u_{12}^2}{\ell^2},
\end{align}$$

  in the notation of the paper.
  Status: $Source-transcribed$.
- Electric boundary scaling for CFT operators:

$$\begin{align}
\Phi_\Delta\sim c^{\Delta-1}\mathcal O_\Delta,
\end{align}$$

  and correlator limit schematically

$$\begin{align}
\lim_{c\to0}c^{\sum_i\Delta_i-n} \left\langle\mathcal O_{\Delta_1}\cdots\mathcal O_{\Delta_n}\right\rangle.
\end{align}$$

  Status: $Source-transcribed$.
- Two-point Carrollian limit contains magnetic and electric branches; the electric branch is supported at coincident celestial position.
  Status: $Source-transcribed$. Rendering note: the relevant PDF page around equations (9.36)-(9.38) was inspected.

**Argument chain.**

1. In AdS Bondi-like coordinates, sending $\ell -> infinity$ turns the AdS metric into flat Bondi form.
2. The same limit sends the boundary Lorentzian metric into a Carrollian degenerate metric.
3. AdS bulk-to-bulk propagators reduce to flat Feynman propagators, and AdS bulk-to-boundary propagators reduce to flat bulk-to-boundary propagators with appropriate powers of $\ell$.
4. Therefore Witten diagrams have flat limits matching the Feynman-rule construction of Carrollian amplitudes.
5. Boundary CFT correlators, after analytic continuation and explicit speed-of-light scaling, have Carrollian limits with magnetic/electric branches.
6. The electric branches match the Carrollian amplitude structures found in Sections 6 and 7.
7. In top-down examples such as ABJM/M-theory, taking the flat limit raises additional questions about internal-space decompactification and which lower-dimensional kinematics are being isolated.

**Likely sticking points.**

- The flat-space limit of the bulk and the Carrollian limit of the boundary are the same limiting operation viewed from opposite sides of AdS/CFT.
- Magnetic branches are often time-independent and resemble lower-dimensional CFT correlators; electric branches carry the amplitude-like distributional support.
- The top-down limit is not simply "ABJM becomes the flat-space hologram"; the internal $S^7$ decompactifies, so one must specify restricted kinematics or seek a higher-dimensional Carrollian theory.
- Distributional limits of CFT correlators can be subtle; analytic continuation and regulator choices matter.

**What to learn.**

- Derive how the AdS boundary metric degenerates as $\ell -> infinity$.
- Check a simple scalar Witten diagram limit against the flat bulk-to-boundary propagator.
- Work through the two-point CFT Carrollian limit and identify magnetic versus electric scaling.
- Understand why bulk-point singularities in CFT four-point functions become the delta-function support of flat scattering amplitudes.

## 10. Through the looking glass

**Role.** The final section synthesizes the review and lays out open problems for Carrollian holography and Carrollian physics more broadly.

**Subsection jobs.**

- Summarize the Carrollian route to flat-space holography.
- Emphasize unresolved conceptual issues in defining quantum CCFTs.
- Identify directions in scattering, AdS limits, internal spaces, massive states, and nonlocality.
- Point to broader Carrollian applications beyond holography.

**Key objects.**

- Intrinsic quantum definition of CCFT.
- Electric versus magnetic sectors.
- Massive states.
- Soft sectors and hard scattering sectors.
- State-operator correspondence.
- Carrollian conformal blocks.
- Top-down decompactification.

**Assumptions.**

- The reviewed correspondences are strong evidence but not a complete nonperturbative definition.
- The Carrollian boundary theory relevant for flat-space quantum gravity may be nonlocal and distributional.
- Existing Lagrangian Carrollian field theories are not yet enough to define the full holographic dual.

**Central formulas.**

- No new central formula dominates this section; it functions as a conceptual ledger.

**Argument chain.**

1. Carrollian geometry explains why null infinity is the right boundary structure.
2. Conformal Carrollian symmetry explains the BMS symmetry of flat spacetime.
3. Carrollian amplitudes encode massless scattering data in boundary correlators.
4. Celestial holography and AdS flat limits fit into this same structure.
5. A full intrinsic CCFT remains to be constructed, especially at the quantum/nonperturbative level.

**Likely sticking points.**

- The review is not claiming that every problem of flat-space holography is solved.
- The intrinsic CCFT is still under construction; much evidence comes from symmetry, amplitudes, and limits.
- Massive states, internal spaces, and nonperturbative definitions remain major gaps.

**What to learn.**

- Use this section to convert the review into a research agenda.
- Identify which parts are established kinematics, which parts are perturbative amplitude dictionaries, and which parts are open definitions.

# equation and claim ledger

| Item                                                                                                               | Location                                  | Status               | Comment                                                                                 |
| ------------------------------------------------------------------------------------------------------------------ | ----------------------------------------- | -------------------- | --------------------------------------------------------------------------------------- |
| Carrollian finite transformation $u'=u+v\cdot Rx+b$, $x'=Rx+a$                                                     | Section 2                                 | $Source-transcribed$ | Core kinematical contraction from Poincare.                                             |
| Carroll algebra $[B_A,P_B]=i\delta_{AB}H$, $[B_A,H]=0$                                                             | Section 2                                 | $Source-transcribed$ | No independent algebra check performed here.                                            |
| Global conformal Carrollian vector fields and $CCarr_d^{glob}\simeq iso(d,1)$                                      | Section 2, around equations (2.21)-(2.27) | $Source-transcribed$ | Rendered PDF page was inspected for layout and signs.                                   |
| Carrollian geometry $q_{ab}n^b=0$ and Ehresmann split $k_an^a=-1$                                                  | Section 3                                 | $Source-transcribed$ | Basic definitions.                                                                      |
| Curvature split $dk=\varphi\wedge k+\varpi$ and Frobenius equivalence                                              | Section 3                                 | $Source-transcribed$ | Not independently derived here.                                                         |
| Torsion-free induced-style connection $(D_a-\omega_a)n^b=\theta_a{}^b$, $D_aq_{bc}=-k_b\theta_{ac}-k_c\theta_{ab}$ | Section 3, around equations (3.41)-(3.47) | $Source-transcribed$ | Rendered PDF page was inspected; important for matching null hypersurface geometry.     |
| Null induced Carrollian data from rigging/projection                                                               | Section 4                                 | $Source-transcribed$ | Not independently checked by component calculation here.                                |
| Null Brown-York tensor $T^a{}_b=(8\pi G)^{-1}(W^a{}_b-\delta^a{}_bW)$                                              | Section 4                                 | $Source-transcribed$ | Normalization depends on the paper's convention.                                        |
| BMS/CCarr identification $bms_{d+1}\simeq CCarr_d$                                                                 | Section 4                                 | $Source-transcribed$ | Algebraic statement; not rederived mode-by-mode here.                                   |
| Carrollian stress-tensor variation and Ward identities                                                             | Section 5                                 | $Source-transcribed$ | Source-dependent; hypermomentum terms may appear for larger source sets.                |
| Electric and magnetic scalar actions                                                                               | Section 5                                 | $Source-transcribed$ | No Hamiltonian re-derivation performed here.                                            |
| Primary transformation and supertranslation action                                                                 | Section 6                                 | $Source-transcribed$ | Boost representation dependence should be checked for non-scalar multiplets before use. |
| Electric/magnetic CCFT correlator branches                                                                         | Section 6                                 | $Source-transcribed$ | Treated as distributional claims; no full Ward-identity derivation here.                |
| Carrollian amplitude dictionary equations around (7.29)-(7.32)                                                     | Section 7                                 | $Source-transcribed$ | Rendered PDF page was inspected; key Fourier/Mellin dictionary.                         |
| Soft theorem to Carrollian Ward identity                                                                           | Section 7                                 | $Source-transcribed$ | Detailed normalization not checked here.                                                |
| Collinear limit to Carrollian OPE                                                                                  | Section 7                                 | $Source-transcribed$ | Signature and analytic-continuation assumptions must be tracked.                        |
| Carrollian-celestial transform                                                                                     | Section 8                                 | $Source-transcribed$ | Kernel prescription is important; not independently checked here.                       |
| AdS boundary metric degenerating to Carrollian metric                                                              | Section 9                                 | $Source-transcribed$ | Directly follows from $\ell -> infinity$ in the displayed metric.                       |
| Electric/magnetic two-point CFT limit around (9.36)-(9.38)                                                         | Section 9                                 | $Source-transcribed$ | Rendered PDF page was inspected for branch structure.                                   |
| Top-down ABJM flat-limit claims                                                                                    | Section 9                                 | $Source-transcribed$ | Conceptual claim; requires separate study of internal-space kinematics.                 |

# hidden steps and learning checkpoints

1. **Redo the Carroll contraction.** Start with the Poincare generators, insert the paper's $c$ rescalings, and explicitly compute the $c -> 0$ commutators. Target: reproduce $[B_A,P_B]=i\delta_{AB}H$ and the central role of $H$.

2. **Connect Carroll boosts to Ehresmann shifts.** Show how changing $k_a$ by a horizontal one-form corresponds to changing the horizontal/vertical split. Target: understand why $k_a$ is auxiliary but unavoidable for calculations.

3. **Derive the null induced connection.** Starting from ambient Levi-Civita compatibility $\nabla g=0$, project onto a null hypersurface and recover

$$\begin{align}
D_aq_{bc}=-k_b\theta_{ac}-k_c\theta_{ab},\qquad D_an^b=\omega_an^b+\theta_a{}^b.
\end{align}$$

   This is a good candidate for a separate xAct/component verification.

4. **Check BMS equals conformal Carrollian symmetry.** Insert the standard boundary data at $\mathscr I$ into the level-2 conformal Carrollian equations and solve for $\xi$. Target: recover $T(z,\bar z)$ and conformal Killing vectors $Y,\bar Y$.

5. **Work through scalar electric/magnetic limits.** Restore $c$ in the relativistic scalar action and in the Hamiltonian form. Target: see exactly why the electric limit keeps the time derivative and the magnetic limit keeps spatial gradients.

6. **Derive two-point CCFT branches from Ward identities.** Use the $d=3$ primary transformation law to solve for two-point functions. Target: separate magnetic sphere-CFT behavior from electric delta-function support.

7. **Derive the Carrollian amplitude dictionary.** Starting from a massless plane-wave expansion, perform the large-$r$ stationary-phase limit and then the energy Fourier transform. Target: understand why the basic operator has $\Delta=1$.

8. **Soft theorem translation.** Take a standard leading soft graviton theorem and Fourier-transform the soft energy dependence to $u$. Target: reproduce the boundary Ward identity structure and the large-$u$ soft mode.

9. **Collinear/OPE translation.** Start from a simple gluon splitting function and convert it into the holomorphic Carrollian OPE kernel. Target: identify where beta functions and descendants enter.

10. **Celestial transform as $u$-integral.** Apply the Carrollian-to-celestial kernel to the Carrollian two-point amplitude. Target: recover the corresponding celestial two-point distribution.

11. **AdS boundary Carrollian limit.** Take

$$\begin{align}
ds^2_{\partial AdS}=-du^2/\ell^2+2dz\,d\bar z
\end{align}$$

   and explicitly identify the limiting $q$ and $n$. Target: make the bulk flat limit/boundary Carroll limit equivalence concrete.

12. **Bulk-point singularity to amplitude support.** For a known CFT four-point function, track the singularity that becomes $\delta(z-\bar z)$ in the Carrollian limit. Target: understand why flat scattering support appears as a boundary distribution.

# relation to prior work

- **Carrollian geometry.** The review builds on the modern formulation of Carrollian manifolds as degenerate metric structures with a preferred kernel vector and optional Ehresmann connection. This is the geometric language for null hypersurfaces and horizons.
- **BMS symmetry.** The identification of BMS with conformal Carrollian symmetry is the central bridge from asymptotic symmetry to boundary geometry.
- **Membrane paradigm and horizon physics.** Null Brown-York tensors and Damour/Raychaudhuri equations connect Carrollian geometry to older fluid/membrane viewpoints on horizons.
- **Carrollian field theory.** Electric and magnetic limits of scalar, gauge, and gravitational theories connect to older ultra-relativistic limits, strong-coupling gravity, and tensionless/ultralocal dynamics.
- **Celestial holography.** Celestial amplitudes arise as Mellin transforms of scattering amplitudes. This review reframes them as transforms of Carrollian amplitudes, clarifying the role of null time $u$.
- **Soft theorem program.** Soft graviton/gluon theorems and memory effects become Ward identities of boundary Carrollian operators.
- **Flat limit of AdS/CFT.** The paper connects perturbative flat-space holography to AdS Witten diagrams and CFT correlator limits, with the boundary limit interpreted as Carrollian.
- **Top-down string/M-theory examples.** The ABJM/M-theory discussion points toward embedding Carrollian holography in known AdS/CFT dual pairs, while emphasizing the unresolved internal-space/decompactification issue.

# open questions and follow-up calculations

- What is the intrinsic, nonperturbative definition of the Carrollian CFT whose correlators are flat-space S-matrix elements?
- How should one combine the electric sector relevant for hard scattering with the magnetic sector suggested by soft modes and celestial-sphere dynamics?
- Is there a useful state-operator correspondence for Carrollian CFTs, or should the theory be formulated directly in terms of distributional correlators and asymptotic operator algebras?
- What are the correct Carrollian conformal blocks, and how do they encode flat-space factorization/unitarity?
- How should massive external states be included in the Carrollian boundary dictionary?
- Can the null-hypersurface Brown-York tensor be used to derive all BMS flux-balance laws in a compact Carrollian stress-tensor language?
- Which Carrollian field theories have nontrivial quantum dynamics beyond Gaussian/effectively lower-dimensional behavior?
- How does one formulate a top-down flat-space hologram when the internal space decompactifies in the flat limit?
- Are the $Lw_{1+\infty}$ and related celestial symmetry algebras best understood as transformed Carrollian current algebras?
- Can the AdS flat-limit analysis be extended systematically beyond tree-level Witten diagrams?
- Which statements in the paper survive unchanged in higher dimensions, and which depend essentially on four-dimensional celestial-sphere complex geometry?
- Follow-up verification candidates:
  - machine-check the Carroll algebra contraction;
  - component-check the null induced Carrollian connection;
  - rederive the scalar electric/magnetic Hamiltonian limits;
  - solve the two-point CCFT Ward identities directly;
  - reproduce the Carrollian transform of a simple two- or three-point amplitude;
  - compare a simple AdS contact Witten diagram limit with the corresponding flat Carrollian amplitude.
