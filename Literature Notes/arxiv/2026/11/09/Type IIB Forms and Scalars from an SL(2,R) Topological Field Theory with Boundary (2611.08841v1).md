---
paper id: 2611.08841v1
title: Type IIB Forms and Scalars from an SL(2,R) Topological Field Theory with Boundary
authors:
  - Euihun Joung
  - J. A. Rosabal
publication date: 2026-11-06T00:57:51Z
abstract: |-
  Constructs an eleven-dimensional topological action whose ten-dimensional boundary equations reproduce the scalar/form sector of type IIB, including five-form self-duality. Breaking the local SL(2,R) boundary symmetry to SO(2) makes the axion–dilaton a coset edge field, while flat-connection holonomies encode duality monodromies.
comments: "6 pages; primary hep-th"
url: https://arxiv.org/abs/2611.08841v1
summary: "A concrete boundary generating function selects a duality/Kähler polarization; this combines coset edge scalars and democratic form fields, but the AdS corner term and quantum flux lattice are not yet constructed."
tags: []
---

# Result and Immediate Use

**The classical scalar/form equations and their duality conditions arise from a genuine higher-dimensional variational principle, rather than imposing five-form self-duality after varying a ten-dimensional pseudo-action.** The particularly useful object for koishi is the boundary action as a generating function for a Lagrangian polarization of a bulk boundary phase space. This makes an excellent finite model for the question “which boundary data are dynamical, which transformations remain redundant, and which boundary conditions are polarizations?”

This is not a complete action for gravity, fermions and quantum type IIB string theory. The metric is supplied to the ten-dimensional boundary Hodge star; the paper treats the scalar/form sector. Flux quantization, charged branes, the quantum partition function, and the holographic corner term are proposed next steps.

Source: [official v1](https://arxiv.org/html/2611.08841v1). The PDF is six pages in two columns; pp.2–5 were visually checked for the Gauss laws, duality relations, reduction, holonomy, algebra and polarization discussion. All substantive sections, including the discussion, are reconstructed here. The arXiv abstract title omits the word “invariant” that appears in the PDF heading; these are the same v1, not two papers.

# Degrees, Representations and the Euclidean Duality Convention

Let $\partial M_{11}=M_{10}$, with the induced orientation and initially no corners. Wedge products are implicit. There is one field in each odd degree:

| field | SL(2,R) representation | boundary interpretation |
|---|---|---|
| $A_1$ | traceless 2 by 2 connection | coset scalar current plus SO(2) connection |
| $A_3$ | row doublet | dressed NSNS/RR three-form |
| $A_5$ | singlet | five-form |
| $A_7$ | column doublet | dual three-form sector |
| $A_9$ | traceless adjoint/dual matrix | dual scalar current |

Write $X^{\mathbb S}=(X+X^t)/2$, $X^{\mathbb A}=(X-X^t)/2$, and $(X)_0=X-\tfrac12\operatorname{tr}(X)\mathbf1$. Take $\epsilon=\left(\begin{smallmatrix}0&1\\-1&0\end{smallmatrix}\right)$. Every $A_p$ is an odd spacetime form, so interchanging scalar-valued components produces a minus sign, even though the internal graded Lie algebra below has only *even* degrees.

The source's factors of $i$ and $*F_5=-iF_5$ are the Euclidean convention: on odd forms in ten Euclidean dimensions,

$$\begin{align}
*^2=(-1)^{p(10-p)}=-1.
\end{align}$$

This was checked for all five degrees. The boundary fields and duality polarization are complexified; one cannot demand a nonzero real Euclidean five-form satisfying this equation. In one-time Lorentzian signature $*^2=+1$ on these degrees and the physical duality condition becomes real after a consistent continuation. The source does not provide a full continuation prescription for every field; none is silently substituted here.

# The Eleven-Dimensional Action and Its Gauss Laws

The main construction, (2–3), is

$$\begin{align}
S_{\rm TFT}=\frac i2\int_{M_{11}}\Big\{ \operatorname{tr}(A_1dA_9+A_9dA_1+2A_1^2A_9) +A_3dA_7+dA_3A_7+2A_3A_1A_7 +A_5dA_5+A_3\epsilon A_3^tA_5\Big\},
\end{align}$$

$$\begin{align}
S_b=\frac14\int_{M_{10}}\Big\{ \operatorname{tr}[2A_1^{\mathbb S}*A_1^{\mathbb S}+\tfrac12 A_9^{\mathbb S}*A_9^{\mathbb S}] +A_3*A_3^t+A_7^t*A_7+A_5*A_5\Big\}.
\end{align}$$

All terms in the first integral have degree eleven; those in the second have degree ten. The relative factor of two in the scalar pair will become the factor of two in its duality relation. The bulk needs no metric; the boundary term supplies it.

Variation of the paired fields gives

$$\begin{aligned}
dA_1+A_1A_1&=0,\\
dA_3+A_3A_1&=0,\\
dA_5+\tfrac12 A_3\epsilon A_3^t&=0,\\
dA_7+A_1A_7+\epsilon A_3^tA_5&=0,\\
dA_9+A_1A_9+A_9A_1+(A_7A_3)_0&=0. \tag{7}
\end{aligned}$$

For example $\delta\int A_5dA_5=2\int\delta A_5dA_5-\int_{M_{10}}A_5\delta A_5$. The cubic term then yields the one-half in its Gauss law. Varying the traceless $A_1$ projects the $A_7A_3$ source to its traceless part. Variation with respect to $A_9$, not a kinematical identity, imposes flatness of $A_1$.

A useful rewriting is the nonsymmetric BF kinetic action plus

$$\begin{align}
-\frac i2\int_{M_{10}}[\operatorname{tr}(A_1A_9)+A_3A_7].
\end{align}$$

Indeed $d(A_1A_9)=dA_1A_9-A_1dA_9$, and likewise for the three/seven pair. This explains why a bulk gauge transformation can leave a boundary term even though its BF partner is invariant.

Under local $g\in\mathrm{SL}(2,\mathbb R)$,

$$\begin{align}
A_1\mapsto g^{-1}(d+A_1)g,\quad A_3\mapsto A_3g, \quad A_7\mapsto g^{-1}A_7,\quad A_9\mapsto g^{-1}A_9g.
\end{align}$$

The induced change of the symmetric kinetic action is $\tfrac i2\int\operatorname{tr}(A_9dg\,g^{-1})$. Thus transformations with boundary support cannot all be quotiented as redundancies.

## Integrability Reproduced in an Exterior Algebra

I encoded $A_1=\left(\begin{smallmatrix}x&y\\z&-x\end{smallmatrix}\right)$, $A_3=(q_0,q_1)$, $A_5=f$, $A_7=(p_0,p_1)^t$, $A_9=\left(\begin{smallmatrix}u&v\\w&-u\end{smallmatrix}\right)$ in Sage's exterior algebra on eleven independent odd generators. Define $d$ on each generator by the right-hand sides of (7), with $d(ab)=da\,b-a\,db$ for odd generators. Every one of the eleven $d^2$ residuals vanishes, and both matrix equations preserve zero trace. This directly checks signs and integrability of the printed Gauss laws, not just dimensional counting. The first attempt exposed Sage's generic matrix-multiplication limitation over this algebra; explicit ordered component multiplication resolved it and the successful calculation has no residual error.

# Why Only SO(2) Remains Redundant at the Boundary

The doublet has an invariant antisymmetric $\epsilon$, but no positive symmetric SL(2,R)-invariant tensor. Choosing $\delta_{\alpha\beta}$ in $S_b$ therefore leaves its stabilizer SO(2). For $h=e^{\theta\epsilon}$, the symmetric part $A_1^{\mathbb S}$ transforms covariantly, whereas $A_1^{\mathbb A}=a\epsilon$ shifts as $a\mapsto a+d\theta$. A quadratic boundary term in $a$ would break this residual local symmetry.

The source consequently imposes

$$\begin{align}
A_9^{\mathbb A}|_{M_{10}}=0
\end{align}$$

and leaves the antisymmetric connection out of the boundary kinetic term. It is the momentum/polarization condition that removes the SO(2) boundary charge. Flatness still constrains the composite connection by $dA_1^{\mathbb A}+A_1^{\mathbb S}A_1^{\mathbb S}=0$. There are two coset scalar directions, not three independent SL(2,R) scalar modes.

# Duality from the Boundary Variation, Not a Postulate

For a scalar-pair component the boundary variation is, in a form ordering with the varied field first,

$$\begin{align}
\delta A_1^{\mathbb S}(*A_1^{\mathbb S}+\tfrac i2A_9^{\mathbb S}) +\delta A_9^{\mathbb S}(\tfrac14 *A_9^{\mathbb S}+\tfrac i2A_1^{\mathbb S}).
\end{align}$$

Thus the two variations are equivalent under $*^2=-1$, rather than overconstraining both members:

$$\begin{align}
*A_1^{\mathbb S}=-\tfrac i2A_9^{\mathbb S},\qquad A_9^{\mathbb S}=2i*A_1^{\mathbb S}.
\end{align}$$

The doublet variation similarly gives $*A_3^t=-iA_7$. For the five-form the entire coefficient is $\tfrac12\delta A_5(*A_5+iA_5)$, giving

$$\begin{align}
*A_5=-iA_5. \tag{9}
\end{align}$$

These follow by ordinary graded integration by parts from the displayed action. They were reconstructed analytically, while the matrix and free-differential-algebra parts were machine checked.

There is no contradiction between $S_b$ vanishing on these relations and its determining the dynamics. For instance $A_9* A_9=-4A_1*A_1$ on the scalar graph, so the two scalar boundary terms cancel; likewise the three/seven terms cancel, and $A_5*A_5=-iA_5A_5=0$. Substituting these relations *before* varying would discard the boundary equations and metric response. This is the same order-of-operations danger as imposing self-duality inside a pseudo-action.

# Recovering the Ten-Dimensional Scalar and Form Fields

Integrating out the interior multipliers $A_9,A_7$ imposes the first two Gauss laws. Locally,

$$\begin{align}
A_1=\mathcal V^{-1}d\mathcal V,\qquad A_3=H_3\mathcal V,\qquad dH_3=0, \quad M=\mathcal V\mathcal V^t.
\end{align}$$

The sign in $dA_3+A_3A_1=0$ follows because $H_3$ is odd: $d(H_3\mathcal V)=-H_3d\mathcal V$ when $dH_3=0$.

A convenient local representative is

$$
\mathcal V=\begin{pmatrix}e^{-\phi/2}&-C_0e^{\phi/2}\\0&e^{\phi/2}\end{pmatrix},
\quad
M=e^\phi\begin{pmatrix}C_0^2+e^{-2\phi}&-C_0\\-C_0&1\end{pmatrix}.
$$

Mathematica reproduces $\det M=1$,

$$
A_1=\begin{pmatrix}-\tfrac12d\phi&-e^\phi dC_0\\0&\tfrac12d\phi\end{pmatrix},\quad
\operatorname{tr}(A_1^{\mathbb S}*A_1^{\mathbb S})
 =\tfrac12[d\phi*d\phi+e^{2\phi}dC_0*dC_0],
$$

and the identity

$$\begin{align}
\Omega=M^{-1}dM=2(\mathcal V^t)^{-1}A_1^{\mathbb S}\mathcal V^t.
\end{align}$$

Therefore the scalar kinetic term is $\tfrac14\operatorname{tr}(\Omega*\Omega)$, with exactly the source's normalization. The doublet becomes $\tfrac12H_3M*H_3^t$. The frame $\mathcal V$ maps IIB doublet indices to those of the topological fields; they should not be silently identified without this dressing.

Keeping $A_5$ independent gives the intermediate action (11):

$$\begin{aligned}
S={}&\int_{M_{10}}[\operatorname{tr}(A_1^{\mathbb S}*A_1^{\mathbb S}) +\tfrac12H_3M*H_3^t+\tfrac14A_5*A_5]\\
&+\tfrac i2\int_{M_{11}}A_5(dA_5+H_3\epsilon H_3^t).
\end{aligned}$$

This still has a boundary self-duality equation. Only *on shell* can one set

$$\begin{align}
A_5=F_5=dD_4-\tfrac12B_2\epsilon dB_2,\qquad dF_5=-\tfrac12H_3\epsilon H_3^t.
\end{align}$$

The remaining bulk term then becomes $\tfrac i4\int F_5H_3\epsilon H_3^t$. The possible term with three $H_3$'s vanishes for a doublet of odd three-forms, so Stokes gives $\tfrac i4\int_{M_{10}}D_4H_3\epsilon H_3^t$, the pseudo-action CS coupling. This reduced pseudo-action no longer derives self-duality; on-shell substitution is not an off-shell equivalence of variational principles.

On shell the other fields are $A_7=\mathcal V^{-1}H_7$, $A_9=\mathcal V^{-1}F_9\mathcal V$. Conjugating their Gauss laws removes $A_1$ and yields the IIB Bianchi equations; $A_9^{\mathbb A}=0$ becomes the two-component coset constraint on the dual scalar current. Together with (9), these Bianchi equations encode the scalar/form field equations. The full ten-dimensional Einstein and fermion equations are not derived by this note.

# Monodromy as Global Flat-Connection Data

S-duality acts from the left, $\mathcal V\mapsto\gamma\mathcal V$, while $H_3\mapsto H_3\gamma^{-1}$. Hence $A_3=H_3\mathcal V$ is unchanged, as are the other dressed fields. A local representative may be multivalued while the connection/associated fields have consistent global gluing. In a nontrivial bundle, “globally defined connection” need not mean a single matrix-valued one-form in a global trivialization.

For the J-fold example, $A_1=\tfrac12\operatorname{diag}(-a_1,a_1)$, $da_1=0$ and $\oint a_1=-2T$, giving

$$\begin{align}
\mathfrak M=\operatorname{Pexp}\oint A_1=\operatorname{diag}(e^T,e^{-T}).
\end{align}$$

Locally $a_1=d\phi$ with $\phi=\phi_0-2\eta$; globally it is not exact on the circle. A charge-lattice-preserving hyperbolic monodromy can be conjugated to $J_n=\left(\begin{smallmatrix}n&1\\-1&0\end{smallmatrix}\right)$, with $2\cosh T=n\geq3$. Its characteristic polynomial $\lambda^2-n\lambda+1$, determinant one and the holonomy trace were checked. Trace fixes the continuous hyperbolic conjugacy data, not all integral conjugacy/lattice data; the lattice still matters. If the circle bounds a smooth disc carrying the same flat connection without defects, holonomy must be trivial.

Flatness permits monodromy sectors; it does **not** dynamically select a particular $T$ or construct the quantum SL(2,Z) charge lattice. The authors expect branes/flux quantization to do the latter. Classically the formulation identifies global SL(2,R)-related configurations, so recovering the usual quantum asymptotic axion–dilaton parameter requires additional global information.

# The Finite Algebra and What Was Checked

The internal degrees are $0,-2,-4,-6,-8$ for generators $X,Q,Z,P,Y$, respectively; adding form degree makes $\Psi=A_1\oplus A_3\oplus A_5\oplus A_7\oplus A_9$ total degree one. Besides the SL(2,R) action, the brackets are

$$\begin{align}
[Q_\alpha,Q_\beta]=\epsilon_{\alpha\beta}Z,\quad [Z,Q_\alpha]=\epsilon_{\alpha\beta}P^\beta,\quad [P^\alpha,Q_\beta]=Y^\alpha{}_\beta.
\end{align}$$

The last symbol is traceless and denotes the doublet moment map. With invariant pairings between $X,Y$, between $Q,P$, and $\langle Z,Z\rangle=1$, this is an ordinary eleven-dimensional Lie algebra when the internal grading is forgotten. The action is higher CS for this quadratic algebra; its Maurer–Cartan equation is (7).

I independently built the eleven-dimensional rational structure constants in Sage with an $\mathfrak{sl}_2$ basis $(H,E,F)$, fundamental $Q$, dual $P$, and coadjoint $Y$. To make the moment-map convention explicit, $\langle[P^a,Q_b],X\rangle=-X_{ab}$ in this basis. All 1331 ordered Jacobi triples and all 1331 pairing-invariance triples pass; the pairing is nondegenerate (determinant $-1$ in that chosen basis). This agrees with, and is more informative than, merely recognizing the first bracket as Heisenberg. The separate exterior-algebra calculation above checks the *printed field-equation* signs without relying on this representation convention.

The Heisenberg quotient explains why NSNS/RR three-form gauge transformations can generate a five-form transformation. Turning this into a quantized Page-charge/brane-creation statement needs large-gauge and lattice data not constructed here.

# The Polarization and the CPS Translation

The source's boundary-value symplectic form is

$$\begin{align}
\omega_{10}(\delta_1,\delta_2)=i\int_{M_{10}} [\operatorname{tr}(\delta_1A_1\delta_2A_9)+\delta_1A_3\delta_2A_7+ \tfrac12\delta_1A_5\delta_2A_5]-(1\leftrightarrow2).
\end{align}$$

For a scalar symmetric component the graph $\delta A_9=2i*\delta A_1$ is isotropic: the wedge/Hodge inner product of two one-forms is symmetric, so the two terms cancel. It is half-dimensional in the doubled pair. For $v=(a,2i*a)$, the same formula yields

$$\begin{align}
\omega_{10}(v,\bar v)=4\int\operatorname{tr}(a*\bar a)>0
\end{align}$$

for nonzero Euclidean coset data. The doublet graph gives twice the positive three-form norm. In the five-form eigenspace, $*a=-ia$ and $*\bar a=+i\bar a$, so $i\int a\bar a=\int a*\bar a>0$. These analytic checks reproduce isotropy/positivity in the local linearized boundary fibers. The antisymmetric condition $A_9^{\mathbb A}=0$, by contrast, is a real metric-independent polarization, not a Kähler graph.

Compare with [the vault formalism](<../../../../../Articles/Quantization%20in%20AdS/perturbation/formalism.md#Covariant%20Phase%20Space%20Formalism>): both use $\omega=\delta\theta$ and retain boundary actions because they choose the variational problem. But $\omega_{10}$ integrates over the *whole ten-dimensional boundary* of an auxiliary eleven-dimensional theory; it is not yet the Lorentzian physical CPS form integrated over a nine-dimensional Cauchy surface of IIB. Obtaining the latter requires the physical-time reduction, continuation and corner terms. No sign/normalization identification between those two different integrations is assumed.

The most immediate reuse is the scalar pair as a toy model: a choice of boundary metric and symmetric doublet tensor selects the graph and leaves a real SO(2) polarization. One can compare alternate graphs before attempting the full IIB system.

# What Remains Genuinely Open

The local classical variational/duality chain, scalar normalization, finite algebra and free-differential-algebra integrability are well supported by the explicit checks above. No contradiction was found in these tested sectors. The complete stress-tensor equivalence was not recomputed by metric variation, nor were the quantum measure, global differential-cohomology action, flux lattice, BV–BFV construction or noncovariant/PST reductions worked out. The latter reductions and quantum partition-function claims are proposals in the discussion, not completed results.

Most relevant for AdS sewing: when $M_{10}$ itself has conformal boundary, $M_{11}$ has a corner $M_9$. The paper proposes that its required corner term supplies the missing topological five-form contribution to the AdS5 × S5 on-shell action. **It does not calculate that term.** A sharp follow-up is to vary the reduced five-form action with a corner, identify the residual nine-dimensional variation, and solve for a compatible generating functional. That is a concrete research gap, not evidence that the holographic action has already been reproduced. No independent-agent review was used under the serial daily-reading rule.
