---
paper id: 2609.30964v1
title: "Dyonic edge modes in Abelian gauge theory"
authors:
  - "Shimizu, Keito"
  - "Sugishita, Sotaro"
publication date: 2026-09-25T08:15
abstract: |-
  We find new boundary conditions in four-dimensional Abelian gauge theory with general Chern--Simons boundary couplings. The boundary conditions allow dyonic edge modes and physical boundary symmetries. In particular, one of the new boundary conditions makes both electric and magnetic charges physical. We also study how our boundary conditions and charges transform under the $\mathrm{SL}(2,\mathbb Z)$ duality.
comments: "20 pages, 1 figure"
url: https://arxiv.org/abs/2609.30964v1
summary: "Temporal boundary prescriptions retain dressed electric and magnetic charge families; smooth central terms vanish and duality transports the prescription."
tags: []
---

# Boundary conditions that retain both charge families

The usable result is an explicit regional Maxwell action with boundary Chern–Simons fields and a choice of temporal boundary data for which both an electric-type charge and a magnetic charge have nonzero variations. The electric-type charge includes a boundary Chern–Simons flux. This is a concrete test of how a regional action and its allowed variations determine the physical edge algebra; it is not a construction of the full sewing map between two independent regions.

**Source-derived:** [version 1](https://arxiv.org/abs/2609.30964v1), complete official PDF and TeX. **Checked:** the local variational chain below, boundary wedge/conservation identities, duality block algebra, and the stated smooth-parameter central-term argument. General global sectors and a quantum sewing theorem are not established by these checks.

# Source map and conventions

| Source | Content and dependency |
|---|---|
| §1, pp. 2–3 | Why ordinary conductor conditions remove physical shifts; separates physical charges from singular central extensions. |
| §2, pp. 3–4, (2.1)–(2.11) | Maxwell–theta bulk theory, dressed S/T walls, integer boundary coupling matrix. |
| §3, pp. 5–9, (3.1)–(3.29) | Variational principle, presymplectic form, temporal conditions, charges, charge algebra and the two-charge example. |
| §4.1, pp. 9–12, (4.1)–(4.14) | S-wall matching and the extra redundant boundary field. |
| §4.2, pp. 12–13, (4.15)–(4.26) | T transformation and compensation of bulk displacement-charge mixing. |
| §5, pp. 13–14 | Singular transformations and charged matter remain qualified extensions. |
| Appendix A, pp. 14–16 | Two S transformations reduce to charge conjugation in the off-diagonal two-field example. |

Here page numbers are the printed numbers, one less than PDF page numbers. The theory is on a four-dimensional flat cylinder, with timelike face $\Delta\simeq\mathbb R_t\times S^2$ at $r=R$ and Cauchy surface $\Sigma$. Its corner is $S=\partial\Sigma$. The metric is $-dt^2+dr^2+r^2\gamma_{ab}d\Omega^a d\Omega^b$. The source fixes the bulk orientation by $dt\wedge dr\wedge\mathrm{vol}_{S^2}$ and the face orientation by $dt\wedge\mathrm{vol}_{S^2}$; outward Stokes signs must be carried consistently, since these are separately specified orientations. Caps are handled through the Cauchy potential; they are not additional timelike boundary equations.

The Hodge star on bulk two-forms satisfies $*^2=-1$. Write

$$
F=dA,\qquad G=\frac{2\pi}{e^2}*F-\frac{\theta}{2\pi}F,
\qquad \tau=\frac{\theta}{2\pi}+\frac{2\pi i}{e^2}.
$$

$e,\theta$ are fixed couplings. The bulk equation is $dG=0$, together with $dF=0$. Boundary fields are $a^0=A|_\Delta+d\phi^0$ and $a^j=A^j+d\phi^j$, $j=1,\ldots,n$. The compact scalars dress the potentials. Indices $J,L$ run from $0$ through $n$; $a,b$ instead denote sphere coordinates. $d$ is the spacetime exterior derivative and $\delta$ the field-space derivative. Wedges involving two variations carry both gradings.

# Action, variations and the corner symplectic structure

The source action (2.8)–(2.10) is

$$
S=-\frac1{2e^2}\int_M F\wedge *F
+\frac\theta{8\pi^2}\int_M F\wedge F
+\frac1{4\pi}\int_\Delta a^J\wedge K_{JL}da^L,
\qquad
K=\begin{pmatrix}p&v^T\\v&k\end{pmatrix}.
$$

$K$ is symmetric integral, $p\in\mathbb Z$, and $\ker(v^T)\cap\ker k=0$. The spin/global quantization assumptions behind the theta periodicity are part of the model, not a consequence of the local variation. Local gauge transformations shift $(A,\phi^0)$ by $(d\alpha,-\alpha)$, and similarly for $(A^j,\phi^j)$, leaving every $a^J$ unchanged. An independent shift $\phi^J\mapsto\phi^J+\alpha^J$ with the potentials held fixed is a different vector field on the extended configuration space.

The first variation can be reconstructed locally using

$$
\delta L_M=-\frac1{2\pi}\delta F\wedge G
=-\frac1{2\pi}\delta A\wedge dG
-\frac1{2\pi}d(\delta A\wedge G),
$$

$$
\delta(a^J K_{JL}da^L)
=2\delta a^J K_{JL}da^L-d(a^J K_{JL}\delta a^L).
$$

The second equality uses $K=K^T$ and the graded Leibniz rule. With the source's face orientation, the boundary variational two-forms are

$$
B_J=\delta_{J0}G+K_{JL}da^L.
$$

Only the sum $\sum_J\delta a^J\wedge B_J/(2\pi)$ must be a face total derivative for a variational principle. The paper imposes the **stronger, componentwise** condition

$$
\frac1{2\pi}\delta a^J\wedge B_J\big|_\Delta=dc^J
\quad\text{for each }J.
$$

Thus the analysis is a useful family of admissible boundary prescriptions, not a classification of all possible boundary conditions. Most of the paper then sets $c^J=0$.

Equation (3.8) gives

$$
\Omega_\Sigma=\frac1{2\pi}\int_\Sigma\delta A\wedge\delta G
-\frac1{4\pi}\int_S\delta a^J\wedge K_{JL}\delta a^L
+\frac1{2\pi}\int_S\delta\phi^0\,\delta G
+\int_S\sum_J\delta c^J.
$$

The bulk potential follows from the preceding variation; replacing boundary $A$ by $a-d\phi$ supplies the edge corner term after integration by parts and $dG=0$. The boundary Chern–Simons potential supplies the quadratic corner term. These terms must be kept together when testing degeneracy. The charge convention is $\delta Q=I_X\Omega$, as in (3.10); switching the vault's Hamiltonian convention can reverse the named generator's sign.

# Which shifts are physical?

For $B_J=0$, charge variations vanish. Fixed-curvature Dirichlet conditions also remove the charge variations in the setting considered by the paper. A dressed field by itself does not prove the presence of a physical edge degree of freedom.

Instead impose (3.13)

$$
\delta a^J_t=0,\qquad (B_J)_{at}=0,
\qquad J=0,\ldots,n.
$$

The prescribed temporal component is held fixed under variations; it need not be zero as a field. The spatial two-form $(B_J)_{ab}$ remains free. The face variation vanishes: in $(t,x,y)$ coordinates its coefficient is

$$
\delta a_t B_{xy}-\delta a_x B_{ty}+\delta a_y B_{tx}=0.
$$

This explicit zero is independently checked. The allowed shift parameters are field-independent, smooth and time-independent, $\alpha^J=\alpha^J(\Omega)$. Contracting the source symplectic form and integrating by parts on closed $S$ gives

$$
\delta Q_J[\alpha^J]=\frac1{2\pi}\delta\int_S\alpha^J B_J,
\qquad Q_J[\alpha^J]=\frac1{2\pi}\int_S\alpha^J B_J,
$$

up to a field-independent constant. The boundary equations do not force these functionals to be constant. Conservation follows from $dB_J=0$ on shell and

$$
d(\alpha^J B_J)=d\alpha^J\wedge B_J+\alpha^JdB_J=0:
$$

both $d\alpha^J$ and $B_J$ are spatial forms on a two-dimensional slice. This is a boundary conservation statement under the selected prescription, not a claim of independently conserved bare electric and magnetic fluxes in arbitrary boundary theories.

With

$$
Q_e[\alpha]=e^{-2}\int_S\alpha *F,\quad
Q_m[\alpha]=(2\pi)^{-1}\int_S\alpha F,\quad
Q^l_{CS}[\alpha]=(2\pi)^{-1}\int_S\alpha da^l,
$$

the charges decompose as

$$
Q_0=Q_e+\left(p-\frac\theta{2\pi}\right)Q_m+v_lQ^l_{CS},
\qquad Q_j=v_jQ_m+k_{jl}Q^l_{CS}.
$$

These combinations are conserved; individual displayed constituents generally are not. In mixed prescriptions, impose temporal conditions on selected labels and $B_J=0$ on the rest. Only the selected shift families remain physical. The paper's count is a count of local charge/edge-field families, not a proof that every globally constant smearing has a nonzero charge. In a smooth, source-free trivial-bundle ball, Gauss/Stokes constraints can remove integrated zero modes.

# Two-charge example and the central term

At $\theta=0$ and $K=\left(\begin{smallmatrix}0&1\\1&0\end{smallmatrix}\right)$, impose temporal conditions for both labels. Then

$$
Q_0=Q_e+Q^1_{CS},\qquad Q_1=Q_m.
$$

This differs from the earlier prescription (3.26), which allowed $\delta a^0=\delta\Lambda_a d\Omega^a+d\delta\lambda$ and needed a nonzero face potential $c$. That enlargement of allowed variations rendered the $\phi^0$ shift redundant. The change of admissible variations, rather than the mere addition of an edge scalar, accounts for the new physical electric-type family.

The formal charge bracket (3.21) is

$$
\{Q_I[\alpha],Q_J[\beta]\}
=\frac{K_{IJ}}{2\pi}\int_S d\alpha\wedge d\beta.
$$

For globally defined smooth parameters on closed $S$, $d\alpha\wedge d\beta=d(\alpha d\beta)$, so Stokes' theorem makes this zero. A spherical-harmonic example was also integrated explicitly. Singular parameters require excisions or operator insertions and can change the action; the paper explicitly leaves their physical interpretation open. The result does **not** establish a nonzero central extension of the smooth physical charge algebra.

Wilson and 't Hooft endpoints motivate the dyonic interpretation of the edge variables. Turning that interpretation into a regional observable map requires specifying admissible line endpoints and dressing, not just reading off a charge vector.

# S and T walls: transporting the boundary prescription

An S wall separates $M_-$ from $M_+$ and has action $(2\pi)^{-1}\int_W a_-\wedge da_+$. Its independent potential variations give (4.5)

$$
G_-+F_+=0,\qquad G_+-F_-=0.
$$

Thus $(F_-,G_-)=(G_+,-F_+)$ and $\tau_-=-1/\tau_+$. After fusion, the new boundary vector is $(\widetilde a^0,\widetilde a^1,\widetilde a^{j+1})=(a_-,a_+,a^j)$ and

$$
\widetilde K=\begin{pmatrix}0&1&0\\1&p&v^T\\0&v&k\end{pmatrix},
\qquad \widetilde B_0=0,\qquad \widetilde B_{J+1}=B_J.
$$

The old temporal conditions are transported to labels $1,\ldots,n+1$. Label $0$ instead has $\widetilde B_0=0$; its shift is redundant. The S transformation therefore increases the number of presented fields without increasing the number of physical charge families. With matched smearings $\widetilde Q_{J+1}=Q_J$. A symbolic arbitrary-coefficient block example with two auxiliary fields verifies every component of this relation; the block proof is dimension-independent.

Under T,

$$
\widetilde\theta=\theta+2\pi,\quad\widetilde p=p+1,
\quad\widetilde F=F,\quad\widetilde G=G-F.
$$

Using $da^0=F|_\Delta$ gives $\widetilde B_J=B_J$ and hence invariant physical boundary charges. The bulk displacement flux alone changes by $-Q_m$. There is no contradiction: the boundary level shift compensates it, and $p-\theta/(2\pi)$ is invariant.

# Appendix A: reduction after two S transformations

For the two-charge example the successive matrices are

$$
K^{(1)}=\begin{pmatrix}0&1&0\\1&0&1\\0&1&0\end{pmatrix},
\qquad
K^{(2)}=\begin{pmatrix}0&1&0&0\\1&0&1&0\\0&1&0&1\\0&0&1&0\end{pmatrix}.
$$

The first two new $B$'s vanish. In particular $d(a^0_{(2)}+a^2_{(2)})=0$. Since $H^1(\mathbb R\times S^2)=0$ for ordinary smooth real one-forms, the closed combination is exact and a redundant shift removes it. Set $a_C^0=a^0_{(2)}=-a^0_{(0)}$ and $a_C^1=-a^3_{(2)}=-a^1_{(0)}$. The remaining coupling is the original off-diagonal $K$ and $B_C=-B_{(0)}$, so $Q_C=-Q_{(0)}$.

The matrix reduction was independently checked by inserting $(a_C^0,0,-a_C^0,-a_C^1)$ into $K^{(2)}$. This computes the surviving quadratic coupling: terms containing $a^1_{(2)}$ cancel when $a^2_{(2)}=-a^0_{(2)}$, so setting its coefficient to zero in this algebraic embedding is not an extra physical gauge fixing. Nontrivial first cohomology and bundle sectors need additional flat data; the paper's spherical reduction must not be transported unchanged to a torus or a punctured face.

# Reusable regional data and limits

The concrete package to borrow is $(S_M,S_\Delta,K,a^J,B_J,\delta a_t^J,(B_J)_{at},\Omega,Q_J)$. It independently supplies the action and allowed face variations before charge reduction. A possible two-region construction still has to choose orientations, interface sources, matching constraints and the common gauge quotient. Matching charge values alone does not construct the regional configuration or solution space. The paper does not provide a quantum state pairing or show that these boundary symmetries survive arbitrary sewing.

The derivation dependencies are

$$
(S_M,S_\Delta)\ \longrightarrow\ B_J,\Omega
\ \xrightarrow{\text{temporal prescription}}\ Q_J
\ \xrightarrow{dB_J=0}\ \text{conservation},
$$

with wall matching transporting the entire prescription, and smoothness/topology separately determining whether a central term survives.

# Verification and evidence ledger

| Evidence | Target and result |
|---|---|
| Source-derived | All major sections and Appendix A reconstructed from official TeX/PDF; PDF pages 7 and 9 rendered and visually inspected to confirm corner signs, charge decomposition and central-term caveat. |
| Checked | Bulk and Chern–Simons first variations reconstructed by graded Leibniz/integration by parts; the displayed face variation and on-shell current wedge vanish under the stated temporal data. |
| Checked | Mathematica returned zero residuals for S-wall $B$ matching with arbitrary $p,v_1,v_2,k_{11},k_{12},k_{22}$, T invariance, $S^2=-1$ on $(F,G)$, and $p-\theta/(2\pi)$ invariance. |
| Checked | Appendix A's reduced quadratic coupling equals the original $K$; the Hodge-coupling inverse matrix has identity residual zero. |
| Checked | Stokes proof of zero central term for smooth global smearings on closed $S$; explicit $\alpha=\cos\vartheta$, $\beta=\sin\vartheta\cos\varphi$ integral is zero. The example does not replace the smoothness assumption. |
| Blocked | A nonzero singular-parameter physical central charge needs a specified defect action, admissible singular transformations and corner regularization; those inputs are absent from this construction. |
| Failed | None of the scoped checks above contradicted the source. |
| Not independently verified | Full global charge independence, compact-bundle quantum duality, charged matter reaching the face, a general all-topology S-square reduction, and state/observable sewing are outside these checks. |

**Verified:** the scoped local variation, charge-conservation and duality identities listed above. **Assumptions:** fixed couplings and face temporal data, $c^J=0$ except in the explicitly contrasted earlier prescription, on-shell $dG=0$, smooth fields/parameters and spherical closed corners. **Not verified:** a general boundary-condition classification, nonzero smooth central extension, or a quantum regional sewing theorem.

Retrieval audit: PDF and TeX source both succeeded. `pdftotext` reported a font-type mismatch; rendered pages and TeX resolved the relevant formula presentation. No unresolved retrieval or computation-service blocker remains. Temporary source/check artifacts are outside the vault. The note was completed and validated before the next queued paper was opened.
