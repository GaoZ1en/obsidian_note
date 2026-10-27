---
paper id: 2610.28719v1
title: De Sitter Observers and an Effective Field Theory of Horizon Edge Modes
authors:
  - James Bonifacio
  - Kurt Hinterbichler
  - Y. T. Albert Law
  - Varun Lochab
publication date: 2026-10-20T18:00
abstract: |-
  We show that choosing a test observer in $dS_D$, specified by the framed embedding of their horizon $S^{D-2}$, spontaneously breaks the de Sitter and internal sphere isometries to diagonal rotations. We identify gravitational edge modes, described by low diffeomorphism jet fluctuations near the horizon sphere, as the associated Goldstone modes. We construct their membrane-like effective theory, organized in a small-gradient expansion. We find a class of nonlinear actions that at the quadratic order reproduce the edge-mode spectrum previously found in the one-loop gravitational $S^D$ path integral.
comments: "13 pages + appendices, 2 figures"
url: https://arxiv.org/abs/2610.28719v1
summary: "Framed horizon embeddings organize nonlinear edge EFTs, with tuned spectral matching and a conditional linear CPS interpretation."
tags: []
---

# De Sitter Observers and an Effective Field Theory of Horizon Edge Modes

The useful result is a nonlinear geometric parametrization of horizon low jets by an embedding and a normal boost. The resulting invariant EFT can reproduce the known quadratic edge operators after a coefficient tuning. This does **not** yet derive that EFT from Einstein gravity with specified corner boundary conditions, nor identify its inverse partition function as a Hilbert-space trace.

Immediate use: keep the embedding, normal-frame data and linear corner pairings as a concrete test case for regional CPS. In particular, this separates the question “which geometric variables transform correctly?” from the further calculation “which variables survive the boundary conditions and carry an integrable symplectic structure?”

## How to read this long paper

The official PDF has 30 pages, including references; the comments count 13 main-text pages plus appendices. This note uses monograph mode because the coset appendix is part of the construction.

| Source cluster | Purpose and later dependency |
|---|---|
| §1 Introduction | One-loop edge determinant motivates the target spectrum; supplies a matching condition, not the nonlinear action. |
| §2 Horizon coordinates and linear edge modes | Tubular de Sitter coordinates, Killing fields, low jets and their linear shifts. Needed for all normalizations. |
| §3 Observer and spontaneous symmetry breaking | Framed horizon embedding defines the test observer and the external/internal symmetry action. |
| §4 Nonlinear geometric EFT | Normal-frame constraints, induced geometry, invariant building blocks and derivative expansion. |
| §5 Parametrization; §5.1 small amplitudes | Explicit fields, cubic strain, quadratic action and the tuning needed for spectral matching. |
| §6 Discussion | Nonlinear coefficient selection and possible elementary-symmetric potentials; interpretation remains open. |
| Appendix A | Preliminary Einstein-Hilbert CPS calculation: low jets pair with area, twist and mean curvature. Boundary conditions and corner ambiguities are deferred. |
| Appendix B; B.1 Maurer–Cartan construction; B.2 inverse Higgs constraints; B.3 geometry | Independent organization of the same invariant tensors, including the normal connection. |

Essential reading: §§2–5 and Appendix A. Appendix B is the technical reference for why the geometric list follows from the symmetry breaking pattern. §1 and §6 explain motivation and limitations. Every section is included below; references are background rather than additional verified inputs.

## Tubular coordinates and the low-jet dictionary

Write $n=D-2\geq2$, with de Sitter radius $\ell>0$ and $G_N$ the $D$-dimensional Newton constant. Normal indices $a,b\in\{0,D\}$ have $\eta_{ab}=\operatorname{diag}(-1,+1)$; $i,j$ are tangent to a round $S^n$ of radius $\ell$, with metric $\gamma_{ij}$ and connection $\nabla_i$. The background is
$$
ds_0^2=\eta_{ab}d\sigma^a d\sigma^b+
\frac{(\sigma_a d\sigma^a)^2}{\ell^2-\sigma^2}
+\left(1-\frac{\sigma^2}{\ell^2}\right)\gamma_{ij}dx^i dx^j,
\qquad \sigma^2=\eta_{ab}\sigma^a\sigma^b.
$$
The bifurcation sphere is $\sigma^a=0$. This is a local tubular description; the expansion is not asserted across a coordinate singularity. The transformation $\sigma^0=\sqrt{\ell^2-r^2}\sinh(t/\ell)$, $\sigma^D=\sqrt{\ell^2-r^2}\cosh(t/\ell)$ gives the static-patch metric: its normal part is $-(1-r^2/\ell^2)dt^2+(1-r^2/\ell^2)^{-1}dr^2$ and its sphere factor is $r^2/\ell^2$.

For a diffeomorphism near the sphere,
$$
\Phi^\mu(\sigma,x)=\Phi_0^\mu(x)+\sigma^aJ_a{}^\mu(x)+O(\sigma^2),
$$
retain the embedding zero jet and the transverse first jet. At linear order the selected variables are the tangent displacement $A^i=\xi^i|_0$, bending modes $\phi^a=\xi^a|_0$, and the antisymmetric normal derivative $\chi=\frac12\epsilon^{(\perp)}_{ab}\partial^a\xi^b|_0$. Use the source orientation consistently: the normal boost matrix is
$$
\Lambda(\chi)=\begin{pmatrix}\cosh\chi&-\sinh\chi\\-\sinh\chi&\cosh\chi\end{pmatrix}.
$$
Rotational Killing vectors shift $A_i$; broken de Sitter transformations shift $\phi^a$ by degree-one sphere harmonics; the normal boost shifts $\chi$ by a constant. These shifts will become the zero modes of the quadratic operators.

## The observer selects a framed embedding

The observer data consist of an isometric, totally geodesic embedding of the internal round sphere into de Sitter space, together with a parallel ordered orthonormal normal frame. The observer is a test object: its stress tensor and backreaction are absent from this construction. External $SO(1,D)$ acts on the target and internal $SO(D-1)$ on the reference sphere. The reference framed embedding preserves their diagonal sphere rotations:
$$
SO(1,D)_{\rm ext}\times SO(D-1)_{\rm int}
\longrightarrow SO(D-1)_{\rm diag}.
$$
There are $D(D+1)/2$ broken generators, but fewer independent Goldstone fields after the inverse Higgs constraints. The field content is $n$ components of $A_i$, two $\phi^a$ and one $\chi$: $D+1$ functions in total. A count of broken generators is therefore not a count of independent propagating fields.

The left external-isometry/right internal-rotation action closes on the chosen low jets. This restricted group action is the symmetry being implemented by the EFT. It does not by itself establish that arbitrary local normal boosts are gauge redundancies to quotient out.

## Induced geometry, normal-frame constraints and invariant action

Set $y^i=\Phi_0^i$ and $\phi^a=\Phi_0^a$. The exact induced metric, source (4.2), is
$$
h_{ij}=\left(\eta_{ab}+\frac{\phi_a\phi_b}{\ell^2-\phi^2}\right)
\partial_i\phi^a\partial_j\phi^b+
\left(1-\frac{\phi^2}{\ell^2}\right)\gamma_{kl}(y)\partial_i y^k\partial_jy^l.
$$
Define the Biot strain on the branch connected to the reference embedding,
$$
S^i{}_j=\left(\sqrt{\gamma^{-1}h}\right)^i{}_j-\delta^i{}_j.
$$
Consequently $h^{-1}=(1+S)^{-2}\gamma^{-1}$ and $\sqrt h=\sqrt\gamma\det(1+S)$. The square root requires the local spacelike, nondegenerate branch; neither arbitrary global embeddings nor a change of square-root branch is included.

The first jets are constrained by $(\Phi^*g_0)_{ai}|_0=0$ and $(\Phi^*g_0)_{ab}|_0=\eta_{ab}$. The first condition imposes $2n$ equations and the second three, fixing $2D-1$ of the $2D$ transverse first-jet components. The one remaining component is a normal $SO(1,1)$ boost. For the resulting adapted frame $n_a$, define
$$
K^a{}_{ij}=g_0(n^a,\nabla^{dS}_{t_i}t_j),\qquad
\mathcal A_i=\frac12\epsilon^{(\perp)ab}g_0(n_a,\nabla^{dS}_{t_i}n_b).
$$
Here $t_i=\partial_i\Phi_0$; $K^a{}_{ij}$ is symmetric. The EFT consists of scalar densities built from $\gamma$, $S$, $K$, $\mathcal A$ and their covariant derivatives. Although $\mathcal A$ is geometrically a normal connection, its components are allowed in this action: the prescribed global symmetry does not identify all local changes of the physical frame. Imposing an additional local boost gauge symmetry would change the allowed action.

The gradient counting is $N=n_K+n_{\mathcal A}+n_\nabla+2n_R$. With amplitudes fixed while $M_{\rm Pl}\ell$ becomes large,
$$
I=\sum_N(M_{\rm Pl}\ell)^{-N}I^{(N)},\qquad
I^{(0)}=\frac1{8\pi G_N}\int_{S^n}\sqrt\gamma\,B(S).
$$
Arbitrary powers of $S$ belong to the same gradient order. This expansion must not be confused with the later small-amplitude expansion. Strictly invariant local terms are covered; possible Wess–Zumino terms are left open by the source.

## Explicit fields and the cubic strain calculation

Choose $y=\exp(A^i\partial_i)x$ and $\Phi_0^a=\phi^a$. Project coordinate normal vectors onto the normal plane:
$$
\widetilde m_a{}^\mu=\delta_a{}^\mu-
\left(\eta_{ab}+\frac{\phi_a\phi_b}{\ell^2-\phi^2}\right)
\partial_i\phi^b h^{ij}\partial_j\Phi_0^\mu.
$$
If $\mathcal G_{ab}=g_0(\widetilde m_a,\widetilde m_b)$, the normalized reference frame is $m_a=\widetilde m_b[(\eta^{-1}\mathcal G)^{-1/2}]^b{}_a$, again on the identity branch. The full first jet is $J_a{}^\mu=m_b{}^\mu\Lambda^b{}_a(\chi)$. Then
$$
S[A,\phi,\chi]=S[A,\phi],\quad
K^a{}_{ij}[\chi]=(\Lambda^{-1})^a{}_bK^b{}_{ij}[0],\quad
\mathcal A_i[\chi]=\mathcal A_i[0]-\nabla_i\chi.
$$
The last relation explains both the constant shift symmetry and the first kinetic term of $\chi$.

To reconstruct (5.12), use mixed-index matrices $L_k=\gamma^{-1}\mathcal L_A^k\gamma$, $P^i{}_j=\eta_{ab}\nabla^i\phi^a\nabla_j\phi^b$ and $r=\phi^2/\ell^2$. With $A,\phi=O(\varepsilon)$,
$$
\gamma^{-1}h=1+L_1+\frac12L_2+P-r1+\frac16L_3-rL_1+O(\varepsilon^4).
$$
Solving $(1+S)^2=\gamma^{-1}h$ order by order, without commuting the matrices, gives
$$
\begin{aligned}
S={}&\frac12L_1+\frac14L_2-\frac18L_1^2+\frac12(P-r1)\\
&+\frac1{12}L_3-\frac1{16}\{L_1,L_2\}+\frac1{16}L_1^3
-\frac18\{L_1,P\}-\frac14rL_1+O(\varepsilon^4).
\end{aligned}
$$
This supplies the main nonlinear expansion rather than treating (5.12) as a quoted result. Mathematica verified all coefficients through cubic order for generic symmetric $2\times2$ matrices, including the noncommuting products. This is an exact algebraic finite-matrix check of the polynomial; it does not check every global embedding or the field-redefinition Jacobian.

## Quadratic action, longitudinal sector and determinant matching

Expand $B=c_0+c_1\operatorname{tr}S+c_2(\operatorname{tr}S)^2+c_3\operatorname{tr}S^2+\cdots$. On the closed round sphere the needed integrated identity is
$$
\int\sqrt\gamma\,\nabla_{(i}A_{j)}\nabla^{(i}A^{j)}
=\int\sqrt\gamma\left[\frac14F_{ij}F^{ij}+(\nabla\cdot A)^2-
\frac{n-1}{\ell^2}A_iA^i\right],\quad F_{ij}=2\nabla_{[i}A_{j]}.
$$
It follows by integration by parts and $R_{ij}=(n-1)\gamma_{ij}/\ell^2$. No boundary term remains because the sphere is closed and the fields are smooth. Also $\int\operatorname{tr}S|_{A^2}=\frac12\int[\nabla_{(i}A_{j)}\nabla^{(i}A^{j)}-(\nabla\cdot A)^2]$. Substitution yields source (5.13):
$$
\begin{aligned}
I^{(0)}=\frac1{8\pi G_N}\int\sqrt\gamma\bigg[&c_0+
\left(\frac{c_1}2+c_3\right)\left(\frac14F^2-\frac{n-1}{\ell^2}A^2\right)
+(c_2+c_3)(\nabla\cdot A)^2\\
&+\frac{c_1}2\eta_{ab}\left(\nabla_i\phi^a\nabla^i\phi^b-\frac n{\ell^2}\phi^a\phi^b\right)\bigg]+O(\varepsilon^3).
\end{aligned}
$$
The desired longitudinal structure requires $c_3=-c_2$ and nonzero $c_1$, $c_1/2-c_2$. This is an additional matching condition; the symmetry alone permits $c_2+c_3\ne0$.

The first $\chi$ kinetic term belongs to $I^{(2)}$, not $I^{(0)}$:
$$
I^{(2)}\supset\frac{\ell^2b_\chi}{8\pi G_N}\int\sqrt\gamma\left[
(\nabla\chi)^2-\epsilon^{(\perp)}_{ab}\nabla^i\chi\nabla^k\phi^a
\left(\nabla_i\nabla_k\phi^b+\frac{\gamma_{ik}}{\ell^2}\phi^b\right)
+O(\varepsilon^4/\ell^2)\right].
$$
The full action multiplies this by $(M_{\rm Pl}\ell)^{-2}$. The displayed cubic normal-connection coupling is **Source-derived**; the exact boost transformation and the leading kinetic term are independently checked, but the complete curved-embedding cubic coefficient is not separately reproduced here.

For scalar harmonics, $-\Delta_0$ has eigenvalues $l(l+n-1)/\ell^2$. Thus each bending operator $-\Delta_0-n/\ell^2$ has eigenvalues $(l-1)(l+n)/\ell^2$. The two bending fields have opposite quadratic signs from $\eta_{ab}$. The transverse vector operator is $-\Delta_{1,\rm rough}-(n-1)/\ell^2$, with the same eigenvalue polynomial using the rough-vector eigenvalues $[l(l+n-1)-1]/\ell^2$. The boost scalar has $-\Delta_0$.

The zero modes are the $l=1$ Killing vectors, two sets of $l=1$ scalar harmonics, and the constant boost:
$$
\frac{n(n+1)}2+2(n+1)+1=\frac{D(D+1)}2.
$$
The $l=0$ bending negative modes remain present; removing zero modes with a prime does not remove them. The source's formal vector product extended to $l=-1$ is part of its determinant representation, not an ordinary extra vector harmonic.

Keep a finite harmonic cutoff $L_{\max}$ before discussing determinants. In $A=A^T+\nabla\psi$, the tuned action still contains the longitudinal mass term. Per nonconstant scalar mode its Gaussian eigenvalue is proportional to $k\lambda_l$, while the Hodge-measure Jacobian is $\sqrt{\lambda_l}$. Formally their ratio is $k^{-1/2}$; cancellation of the $\lambda_l$ dependence does not fix the cutoff-dependent normalization, contour, phase or zero-mode volume. A finite-cutoff positive-Gaussian check establishes only this cancellation. The actual indefinite action requires a contour prescription.

The source's target is explicitly $Z_{\rm edge}=1/\mathcal W_{\rm edge}|_{1\text{-loop}}$ with $\mathcal W_{\rm edge}=\int DA\,D\phi\,D\chi\,e^{-I}$. Consequently positive determinant powers are inverse Gaussian factors. No Hilbert-space interpretation or regulator-independent equality of full interacting partition functions follows from quadratic spectral matching. Keep $L_{\max}$ and the measure/phase convention explicit before any limit or subtraction. Potentials built from elementary symmetric polynomials of $S$ can implement the quadratic tuning, but their nonlinear ghost freedom is not established by the source.

## Appendix A: the precise CPS claim

Use the Einstein-Hilbert potential
$$
\theta^\mu(g;\delta g)=\frac1{16\pi G_N}\left[\nabla_\nu(g^{\mu\rho}g^{\nu\sigma}\delta g_{\rho\sigma})-
\nabla^\mu(g^{\rho\sigma}\delta g_{\rho\sigma})\right].
$$
The slice embedding is fixed while $g$ varies; $d\Sigma_\mu$ is metric dependent and must also be varied. For field-independent $\zeta$, on-shell reduction gives source (A.2):
$$
\Omega_\Sigma(\delta g,\mathcal L_\zeta g)=
-\frac1{8\pi G_N}\delta\int_{\mathcal B}\sqrt h\,
 n_{0[\mu}n_{D\nu]}\nabla^\mu\zeta^\nu
+2\int_{\mathcal B}\sqrt h\,n_{0[\mu}n_{D\nu]}\zeta^\mu\theta^\nu.
$$
The source uses future $n_0$ and inward $n_D$. Reversing the corner orientation changes signs. Vary first, then set $g=g_0$. For the chosen low jets,
$$
\Omega_\Sigma|_{g_0}=\frac1{16\pi G_N}\int_{\mathcal B}
\left[2\chi\,\delta\sqrt h+A^i\delta\mathcal F_i
-2\sqrt\gamma\,\phi^a\epsilon^{(\perp)}_{ab}\delta K^b\right],
$$
where $\mathcal F_i=\sqrt h\,g_{i\mu}[n_0,n_D]^\mu$ and $K^a$ is the mean-curvature vector with the source's normal-index convention. The frame extension for $\mathcal F_i$ is orthonormal to the constant-$\sigma^a$ surfaces. Hence the linear pairings are $\chi\leftrightarrow\sqrt h/(8\pi G_N)$, $A^i\leftrightarrow\mathcal F_i/(16\pi G_N)$ and $\phi^a\leftrightarrow-\sqrt\gamma\epsilon^{(\perp)}_{ab}K^b/(8\pi G_N)$.

A local xAct check uses coordinates $(t,z,x,y)$, background $\operatorname{diag}(-1,1,1,1)$, $\delta g_{tx}=fz$ and $\delta g_{xx}=\delta g_{yy}=b+kz+jt$. Take $\zeta=(-\chi z+p,-\chi t+q,A,0)$. Evaluating (A.2) at the corner gives its density times $16\pi G_N$ equal to
$$
2b\chi+Af+2kp+2jq.
$$
This independently checks the area, twist and both bending coefficients in a linear local sector. These perturbations have zero linearized flat curvature; the calculation checks the local corner algebra, not global de Sitter constraints or boundary admissibility.

Mixed first jets drop out for the chosen potential. The larger traceless normal first-jet algebra is $\mathfrak{sl}(2,\mathbb R)$; keeping only $\mathfrak{so}(1,1)$ needs an additional normal-metric boundary restriction. The authors explicitly leave the corner-potential ambiguity, complete boundary conditions, quantization and nonlinear normal-translation integrability unresolved. These are necessary inputs to a regional phase-space construction, not consequences of the displayed linear pairing.

## Appendix B: coset, inverse Higgs constraints and geometry

Use $L_{AB}$ for $\mathfrak{so}(1,D)$ with the fundamental representation $(L_{AB})^C{}_D=\delta_A^C\eta_{BD}-\delta_B^C\eta_{AD}$. Set $S_i=L_{i,D-1}/\ell$, $Z_a=L_{a,D-1}/\ell$, $H=L_{0D}$ and $T_i=S_i+\bar S_i$. The local stability group is diagonal $SO(D-2)$; sphere position coordinates belong to the coset as well as the Goldstone fields. The important brackets are
$$
[T_i,L_{aj}]=-\delta_{ij}Z_a,\qquad
[T_i,J_{jk}]=\delta_{ij}S_k-\delta_{ik}S_j,\qquad
[T_i,Z_a]=L_{ai}/\ell^2.
$$
Sage checked the full fundamental commutator rule and these inverse-Higgs brackets in $D=4,5,6$ at $\ell=1$. This finite-dimensional exact check supports the algebraic signs; the general-$D$ formulas follow directly from the displayed representation.

The Maurer–Cartan form separates the reference sphere coframe $\bar\Theta^i$, its spin connection, relative tangent forms $\Delta\omega_S,\Delta\omega_J$, and $\omega_Z,\omega^{ai},\omega_H$. Impose $\omega_Z^a=0$: the moving normals become orthogonal to the embedded surface. Write the induced tangent coframe as $\Theta^i=M^i{}_j\bar\Theta^j$. Its Gram matrix obeys $M^TM=\gamma^{-1}h$ in a reference orthonormal frame. The second inverse-Higgs condition $M_{[ij]}=0$ fixes the tangent rotation; on the identity branch $M=\sqrt{\gamma^{-1}h}$.

It follows that $\Delta\omega_S=S\bar\Theta$, $\Delta\omega_J$ is the spin-connection difference in the polar frame, $\omega^{ai}=K^{ai}{}_jM^j{}_k\bar\Theta^k$, and $\omega_H=\mathcal A_iM^i{}_j\bar\Theta^j$. Differentiating the ambient normals gives the Gauss–Weingarten decomposition into an embedding-position term, a tangent extrinsic-curvature term and a normal-connection term. After $\omega_Z=0$, the position term vanishes. This identifies the coset building blocks with the geometric tensors used in §4. The full nonlinear Maurer–Cartan differential system is reconstructed from the source but not independently solved for arbitrary fields.

## Equation ledger and verification boundary

| Source equation or chain | Status | Exact scope |
|---|---|---|
| Tubular metric to static coordinates | Checked | Mathematica exact two-coordinate pullback; $\ell>0$, static-patch branch. |
| Normal boost and remaining-jet count | Checked | Exact Lorentz matrix and $2D-(2D-1)=1$; identity branch assumed. |
| (4.2)–(4.6), (5.3)–(5.8) geometric construction | Source-derived; partial Checked | Induced metric and projection reconstructed; boost matrix checked; arbitrary embedding/frame normalization not exhaustively computed. |
| (5.12) cubic strain | Checked | Exact generic symmetric $2\times2$ polynomial through degree three, all residuals zero. |
| (5.13) integration and coefficient tuning | Checked, with scope | Algebraic coefficient substitution exact; xAct on round $S^2$ gives $R=2/\ell^2$ and zero integrated identity residual for a smooth mixed vector field $A^\theta=\sin\theta$, $A^\varphi=1+\cos\theta$. General-dimensional integration-by-parts derivation given above. |
| (5.11) normal-connection interaction | Source-derived | Leading boost kinetic term follows from the checked boost transform; full cubic curved-embedding coefficient not independently reproduced. |
| Quadratic eigenvalue polynomial and zero count | Checked | Exact symbolic factorization and count; source harmonic spectra and determinant prescription remain inputs. |
| Longitudinal determinant cancellation | Checked, finite cutoff | One positive Gaussian mode and its Hodge Jacobian; actual contour, phase, measure and limit not determined. |
| (A.2)–(A.5) CPS pairings | Checked, local linear sector | xAct residual zero for independent area, twist and bending perturbations described above. Full nonlinear and global on-shell statement remains Source-derived. |
| (B.18), algebra and inverse-Higgs count | Checked | Exact fundamental matrices in three dimensions $D=4,5,6$; geometry after constraints is Source-derived. |
| Complete physical edge phase space and partition function | Blocked by missing physical input | Full boundary conditions, corner-ambiguity prescription, measure/contours, coefficient matching and nonlinear integrability are not specified. |

**Verified:** the specific finite algebra, local tensor and spectrum/count checks listed as Checked; PDF pages 9, 11, 12, 15, 18, 20 and 21 visually confirmed for the central formulas and labels. Full technical TeX, including both appendices, inspected.

**Assumptions:** smooth closed sphere, $D\geq4$, local spacelike embedding and identity square-root branch, source normal orientation, fixed slice embedding and field-independent generators, separate small-gradient and small-amplitude expansions. Harmonic cutoff and indefinite Gaussian contour must remain explicit.

**Not verified:** full nonlinear CPS reduction, all invariant/Wess–Zumino terms, nonlinear ghost freedom, gravity-derived coefficients, functional measure and a regulator-independent interacting equality with the gravitational path integral. No failed source equation was established by the checks in this note. Initial symbolic-series output retaining quartic remainders was replaced by explicit coefficient extraction through degree three; it was a test-implementation issue, not a contradiction of (5.12).

The reusable sequence is therefore: constrained low jets → framed embedding → invariant geometric EFT → tuned quadratic operators, together with a separately qualified linear CPS pairing. To use this in regional sewing, boundary data and corner potential must be fixed before importing the phase-space interpretation.
