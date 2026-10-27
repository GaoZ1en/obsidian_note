---
paper id: 2610.28065v1
title: "Reconstructing the Goldberg-Palatini Action from Noether Identities"
authors:
  - "Brandt, F. T."
  - "Carvalho, Augusto C. B."
publication date: 2026-10-20T11:49:51Z
abstract: |-
  We investigate the reconstruction of the first-order gravitational action from the Noether identities associated with diffeomorphism invariance. The independent fields are a symmetric perturbation $\phi^{\mu\nu}$ of the contravariant metric density and a trace-adjusted connection $G^{\lambda}{}_{\mu\nu}$, whose transformation laws are prescribed. For a local action polynomial in these fields, with the gravitational coupling as its only dimensionful constant and each additional field carrying one power of it, a dilatation, which is a particular diffeomorphism, shows that in any dimension $d>2$ the action terminates at most at cubic order, its only possible cubic term being a derivative-free $\phi GG$ vertex. Expanding the kernels of the resulting Lorentz-covariant ansatz in tensor bases gives 31 coefficients for $d\geq 4$. The Noether identities with general diffeomorphisms, expanded order by order in the fields, yield a linear system that eliminates the $\phi\phi$ kernel and determines the remaining coefficients up to an overall normalization, recovering the Goldberg-Palatini action. Since the connection can be eliminated exactly, this also fixes the complete second-order action, with its infinite set of graviton vertices. The construction requires no choice of energy-momentum tensor, the source of ambiguity in the self-coupling approach. The kernel bases, the identities and the solution are given in appendices, and the symbolic computations are publicly available.
comments: "28 pages, 1 figure"
url: https://arxiv.org/abs/2610.28065v1
summary: "Polynomial Noether reconstruction of first-order Einstein gravity, with explicit closure assumptions, kernel rank checks and boundary-term limits."
tags: []
---

# What the reconstruction fixes

Within a **specified classical polynomial class**, the prescribed diffeomorphism transformations determine the Goldberg–Palatini bulk action up to one overall constant and a total derivative. Polynomial closure is proved for $d>2$; the paper's 31-coefficient uniqueness calculation is stated for $d\geq4$. The action is

$$
S_{\rm GP}=\int d^dx\left[-G^\lambda{}_{\mu\nu}\partial_\lambda\phi^{\mu\nu}
+h^{\mu\nu}\left(-G^\lambda{}_{\mu\sigma}G^\sigma{}_{\nu\lambda}
+\frac{g_\mu g_\nu}{d-1}\right)\right],
\qquad h^{\mu\nu}=\eta^{\mu\nu}+\kappa\phi^{\mu\nu},\quad
g_\mu=G^\sigma{}_{\mu\sigma}.
$$

The concrete use here is an explicit first-order Einstein action whose finite vertices and auxiliary-field elimination can be followed without choosing a gravitational stress tensor. The construction does **not** fix a boundary variational principle, corner potential, charge normalization, or the functional measure after integrating out $G$.

Source: [official v1 abstract](https://arxiv.org/abs/2610.28065v1), [official PDF](https://arxiv.org/pdf/2610.28065v1), and official TeX. This note reconstructs all eight sections and Appendices A–F. Source equations and arguments below are **Source-derived** unless an independent check is explicitly identified. Return to [[2026_10_21_overview]].

## How to read this long paper

This is an appendix-heavy 28-page paper. Read II–III first: the transformation laws and the coupling-power assignment are substantive inputs to the uniqueness statement. Then read V–VI together with Appendix D to see what the finite linear system actually constrains. VII is essential for using the result in metric perturbation theory. IV and Appendices B–E are the technical reference for reproducing the calculation. I and VIII supply motivation and limitations; Appendix F documents the authors' implementation rather than adding a new theorem.

| Section cluster | Purpose and later dependency |
|---|---|
| I, Introduction | Contrasts stress-tensor self-coupling with imposing prescribed off-shell Noether identities; does not derive the transformations from scratch. |
| II, First-order variables and gauge transformations; A | Defines the metric density, independent symmetric connection, trace adjustment, dimensions, and affine-in-fields gauge transformations. |
| III, Allowed sectors of a polynomial action | Uses dimensions and a compactly supported dilation to force $N\leq3$, and only $\phi GG$ at cubic order. |
| IV, The action ansatz; C | Generates the $4+6+5+16$ tensor structures and checks dimension-dependent independence. |
| V, Noether identities; B, D | Decomposes gauge invariance into six homogeneous field sectors and their momentum kernels. |
| VI, Solution; E | Eliminates coefficients in stages and identifies the remaining action with Goldberg–Palatini. |
| VII, Reduction to the metric formulation | Eliminates $G$ algebraically; gives the formal infinite metric-vertex series and CLM comparison. |
| VIII, Conclusions | States the classical, dimensional, derivative-counting and polynomial boundaries. |
| F, Symbolic implementation and reproducibility | Describes FeynCalc bootstrap, exported kernels, xAct reduction, expected checks, and the supplementary archive. |

The dependency chain is: **prescribed transformations + coupling assignment → derivative count → polynomial termination → tensor ansatz → Noether linear system → first-order action → algebraic inverse → metric vertices**. Only the last step introduces an infinite expansion.

## Density and connection conventions — II and Appendix A

The background is flat, with signature $(+,-,\ldots,-)$ and $\hbar=c=1$. Tensor identities polynomial in the metric can be tested in Euclidean signature, but this does not change the source's Lorentzian action convention. Parentheses in the source denote **unnormalized** symmetrization; orbit averages used for the kernel bases are normalized separately.

| Symbol | Definition or role |
|---|---|
| $h^{\mu\nu}$ | $\sqrt{|g|}g^{\mu\nu}$, contravariant density of weight one |
| $\phi^{\mu\nu}$ | $(h^{\mu\nu}-\eta^{\mu\nu})/\kappa$, symmetric, mass dimension $(d-2)/2$ |
| $\Gamma^\lambda{}_{\mu\nu}$ | Independent torsion-free affine connection, not initially Levi-Civita |
| $G^\lambda{}_{\mu\nu}$ | Trace-adjusted connection divided by $\kappa$, symmetric lower pair, dimension $d/2$ |
| $g_\mu$ | Trace $G^\sigma{}_{\mu\sigma}$, not the metric |
| $\kappa$ | Dimension $(2-d)/2$; its final physical normalization requires external input |
| $\omega^\mu$ | Gauge parameter for $x'^\mu=x^\mu-\kappa\omega^\mu$ |
| $M(h)$ | Algebraic symmetric quadratic form on the space of $G$ components, linear in $h$ |

The field redefinition is

$$
\kappa G^\lambda{}_{\mu\nu}
=\Gamma^\lambda{}_{\mu\nu}
-\frac12\left(\delta^\lambda_\mu\Gamma^\sigma{}_{\nu\sigma}
+\delta^\lambda_\nu\Gamma^\sigma{}_{\mu\sigma}\right).
$$

Tracing and inverting gives, for $d\neq1$,

$$
\Gamma^\sigma{}_{\nu\sigma}=\frac{2\kappa}{1-d}g_\nu,
\qquad
\Gamma^\lambda{}_{\mu\nu}=\kappa\left[G^\lambda{}_{\mu\nu}
+\frac{\delta^\lambda_\mu g_\nu+\delta^\lambda_\nu g_\mu}{1-d}\right].
$$

There is no equation identifying $G$ with a derivative of $\phi$ at this stage. Doing so prematurely would remove an independent variation from the bootstrap.

Write $\delta=\delta^{(0)}+\kappa\delta^{(1)}$. The four transformation pieces are

$$
\begin{aligned}
\delta^{(0)}\phi^{\mu\nu}&=\eta^{\mu\nu}\partial_\rho\omega^\rho
-\partial^\mu\omega^\nu-\partial^\nu\omega^\mu,\\
\delta^{(1)}\phi^{\mu\nu}&=\partial_\rho(\phi^{\mu\nu}\omega^\rho)
-\phi^{\nu\rho}\partial_\rho\omega^\mu-\phi^{\mu\rho}\partial_\rho\omega^\nu,\\
\delta^{(0)}G^\lambda{}_{\mu\nu}&=\partial_\mu\partial_\nu\omega^\lambda
-\frac12\left(\delta^\lambda_\mu\partial_\nu+\delta^\lambda_\nu\partial_\mu\right)\partial_\rho\omega^\rho,\\
\delta^{(1)}G^\lambda{}_{\mu\nu}&=\omega^\rho\partial_\rho G^\lambda{}_{\mu\nu}
-G^\rho{}_{\mu\nu}\partial_\rho\omega^\lambda
+G^\lambda{}_{\rho\mu}\partial_\nu\omega^\rho
+G^\lambda{}_{\rho\nu}\partial_\mu\omega^\rho.
\end{aligned}
$$

Appendix A obtains the first pair from the weight-one Lie derivative of $h$. For the connection, the tensor-form Lie derivative has the extra $\partial_\mu\partial_\nu(\kappa\omega^\lambda)$. Its trace transforms with $\partial_\nu\partial\cdot(\kappa\omega)$; applying the trace adjustment produces the displayed $\delta^{(0)}G$. In particular, $\delta^{(0)}g_\nu=(1-d)\partial_\nu\partial\cdot\omega/2$. The background $\eta$ is held fixed in these active field transformations.

## Why polynomiality forces cubic termination — III

The admitted class is

$$
S=\sum_{n=2}^{N}\kappa^{n-2}S_n,
$$

with finite $N$, $S_n$ homogeneous of degree $n$ in $\phi,G$, locality, Lorentz covariance, parity evenness, and no other dimensionful coefficient. $N$ is defined modulo total derivatives. Fixing the power $\kappa^{n-2}$ is stronger than saying that $\kappa$ is the only available coupling.

For a term with $a$ factors of $\phi$, $b$ factors of $G$, and $r$ derivatives,

$$
[\kappa^{a+b-2}\phi^aG^b\partial^r]=d+b+r-2,
\qquad b+r=2.
$$

This alone bounds $b$ but not $a$. The gauge hierarchy supplies the missing restriction:

$$
\delta^{(0)}S_2=0,\qquad
\delta^{(0)}S_{n+1}+\delta^{(1)}S_n=0,\qquad
\delta^{(1)}S_N=0.
$$

Choose $\omega^\mu=\varepsilon\chi(x)x^\mu$, where the fields have compact support and $\chi=1$ on a neighborhood of that support, with $\chi$ itself smooth and compactly supported. This makes every integration by parts legitimate and avoids treating a growing vector field as an allowed asymptotic gauge transformation. On the support,

$$
\delta^{(1)}\phi=\varepsilon(x\cdot\partial+d-2)\phi,
\quad \delta^{(1)}G=\varepsilon(x\cdot\partial+1)G,
\quad \delta^{(0)}\phi^{\mu\nu}=\varepsilon(d-2)\eta^{\mu\nu},
\quad\delta^{(0)}G=0.
$$

Each derivative adds one scaling weight; integration of $x\cdot\partial$ contributes $-d$. Thus

$$
\delta^{(1)}S_{a,b,r}
=\varepsilon[a(d-2)+b+r-d]S_{a,b,r}
=\varepsilon(a-1)(d-2)S_{a,b,r}.
$$

At the top degree, independent rescalings $\phi\mapsto u\phi$, $G\mapsto vG$ separate distinct $(a,b)$ sectors. For $d>2$, a nonzero top sector must have $a=1$. Then $b=N-1$ and $r=3-N\geq0$, hence $N\leq3$. The only cubic sector is $(a,b,r)=(1,2,0)$: $\phi GG$. The next hierarchy relation under this same dilation gives

$$
S_{\phi\phi}=0,\qquad S_{GG}=S_3\big|_{\phi=\eta}.
$$

The scalar dilation cannot determine contractions inside $\phi GG$. General gauge parameters do that. It also explains why a pure density-metric action with nontrivial gravity cannot terminate at a finite field degree within this class. At $d=2$ every displayed integrated weight vanishes, so this proof supplies no restriction. Extra powers of $\kappa$ or another dimensionful scale can admit $b+r=4$ terms; neither higher-curvature gravity nor a cosmological term is ruled out in a larger class.

**Checked:** Mathematica reduces the dimension condition and integrated weight to the same $b+r-2$ residual and solves the nonnegative integer top-sector conditions, leaving $(N,b,r)=(2,1,1)$ or $(3,2,0)$. The separation of homogeneous functionals and compact-support argument remain the explicit proof steps above, not a numerical test.

## Four tensor kernels and dimension-dependent independence — IV, C, E

With $\widetilde\phi(p)=\int e^{ipx}\phi(x)d^dx$, a derivative gives $-ip$. The most general remaining ansatz is

$$
\begin{aligned}
S_2&=\int_p\left[K^{\phi\phi}(\phi_{-p},\phi_p)
+K^{\phi G}(\phi_{-p},G_p)+K^{GG}(G_{-p},G_p)\right],\\
S_3&=\int_p\int_qK^{\phi GG}(\phi_{p+q},G_{-p},G_{-q}).
\end{aligned}
$$

There are no implicit $1/2!$ or $1/3!$ factors. Identical-field variations account for factors of two in the Ward identities. The paper deliberately retains $K^{\phi\phi}$ in this ansatz, so its vanishing is recovered independently by the full identities.

| Kernel | Momentum degree | Raw monomials | Symmetry group order | Orbit basis size |
|---|---:|---:|---:|---:|
| $K^{\phi\phi}_{\mu\nu\rho\sigma}$ | 2 | 9 | 8 | 4 |
| $K^{\phi G}_{\mu\nu\lambda\rho\sigma}$ | 1 | 15 | 4 | 6 |
| $K^{GG}_{\lambda\mu\nu\rho\sigma\tau}$ | 0 | 15 | 8 | 5 |
| $K^{\phi GG}_{\mu\nu\lambda\alpha\beta\rho\sigma\tau}$ | 0 | 105 | 16 | 16 |

Generate raw monomials by pairing index slots into metrics, leaving the prescribed number of momentum slots, including possible scalar $p^2$ factors. Average each monomial over the independent symmetric field pairs and exchange of identical fields. Distinct orbits have disjoint formal monomial content; low-dimensional tensor identities can nevertheless identify their averages. The source's $\mathcal S$ always means the **average**, not the sum.

For example, the four $\phi\phi$ representatives are $p^2\eta_{\mu\nu}\eta_{\rho\sigma}$, $p^2\eta_{\mu\rho}\eta_{\nu\sigma}$, $p_\mu p_\nu\eta_{\rho\sigma}$, and $p_\mu p_\rho\eta_{\nu\sigma}$. The last orbit average contains four terms divided by four. For the 8-slot cubic kernel, all 105 pairings are divided into the 16 orbits of Table IX. This finite prescription fixes every basis element without guessing a preferred contraction.

The Gram determinant checks give, including the constants independently recovered here with orbit-average normalization,

$$
\begin{aligned}
\det\Gamma_{\phi\phi}&=\frac{(p^2)^8}{16}(d-2)(d-1)^3(d+2)(d+4),\\
\det\Gamma_{\phi G}&=\frac{(p^2)^6}{128}(d-2)(d-1)^5(d+2)^5(d+4),\\
\det\Gamma_{GG}&=\frac1{128}d^5(d-2)(d-1)^4(d+2)^4(d+4),\\
\det\Gamma_{\phi GG}&=\frac1{2^{38}}d^{16}(d-3)(d-2)^7(d-1)^{15}
(d+1)^3(d+2)^{15}(d+4)^6(d+6).
\end{aligned}
$$

**Checked:** Sage enumerated the pairing orbits, contracted pairs by counting closed metric loops, and factored the determinants over $\mathbb Q[d]$ at $p^2=1$; homogeneity restores the indicated powers of $p^2$. These agree with Appendix C, which omits the positive numerical factors. The cubic ranks at $d=2,3,4,5$ are $9,15,16,16$. Non-null test momentum is needed for these Gram matrices; a zero at $p^2=0$ is not evidence that the constant-coefficient kernel ansatz has fewer structures at generic momentum.

## The six Noether sectors — V, Appendices B and D

The off-shell identity is $\int[(\delta S/\delta\phi)\delta\phi+(\delta S/\delta G)\delta G]=0$. After the sector restriction, its field content separates as follows:

| Identity | Field coefficient | Origin | Equal-momentum projection basis |
|---|---|---|---:|
| $\mathcal W^\phi$ | $\phi\omega$ | $\delta^{(0)}S_2$ | 3 |
| $\mathcal W^G$ | $G\omega$ | $\delta^{(0)}S_2$ | 6 |
| $\mathcal W^{31}$ | $\phi\phi\omega$ | $\delta^{(1)}S_2$ | 7 |
| $\mathcal W^{32}$ | $\phi G\omega$ | $\delta^{(0)}S_3+\delta^{(1)}S_2$ | 23 |
| $\mathcal W^{33}$ | $GG\omega$ | same | 20 |
| $\mathcal W^{34}$ | $\phi GG\omega$ | $\delta^{(1)}S_3$ | 95 |

To make the momentum and sign content reusable, let $D_{\phi^0}(p)\omega$, $D_{G^0}(p)\omega$ denote the field-independent transformations, and $D_{\phi^1}(p,q)(\phi_{p-q},\omega_q)$, $D_{G^1}(p,q)(G_{p-q},\omega_q)$ the linear transformations. Acting on symmetric fields, Appendix B is equivalently

$$
\begin{aligned}
(D_{\phi^0}\omega)^{\mu\nu}&=-i[\eta^{\mu\nu}p\cdot\omega-p^\mu\omega^\nu-p^\nu\omega^\mu],\\
(D_{G^0}\omega)^\lambda{}_{\mu\nu}&=-p_\mu p_\nu\omega^\lambda
+\tfrac12(\delta^\lambda_\mu p_\nu+\delta^\lambda_\nu p_\mu)p\cdot\omega,\\
(D_{\phi^1}\omega)^{\mu\nu}&=-i[p\cdot\omega\,\phi^{\mu\nu}
-\omega^\mu q_\rho\phi^{\nu\rho}-\omega^\nu q_\rho\phi^{\mu\rho}],\\
(D_{G^1}\omega)^\lambda{}_{\mu\nu}&=-i[(p-q)\cdot\omega\,G^\lambda{}_{\mu\nu}
-\omega^\lambda q_\rho G^\rho{}_{\mu\nu}
+q_\nu\omega^\rho G^\lambda{}_{\rho\mu}+q_\mu\omega^\rho G^\lambda{}_{\rho\nu}].
\end{aligned}
$$

The first two identities are $2K^{\phi\phi}(\phi_{-p},D_{\phi^0}\omega_p)+K^{\phi G}(\phi_{-p},D_{G^0}\omega_p)=0$ and $K^{\phi G}(D_{\phi^0}\omega_p,G_{-p})+2K^{GG}(G_{-p},D_{G^0}\omega_p)=0$. In the second identity the mixed kernel carries momentum **$-p$**, because its second field is $G_{-p}$.

For the nonlinear identities set $P=p_1+p_2$, or $P=p_1+p_2+p_3$ in $\mathcal W^{34}$:

$$
\begin{aligned}
\mathcal W^{31}:\quad&K^{\phi\phi}(\phi_{-p_1},D_{\phi^1}(p_1,P)(\phi_{-p_2},\omega_P))+(1\leftrightarrow2)=0,\\
\mathcal W^{32}:\quad&2K^{\phi GG}(\phi_{-p_2},D_{G^0}(P)\omega_P,G_{-p_1})\\
&+K^{\phi G}(D_{\phi^1}(p_1,P)(\phi_{-p_2},\omega_P),G_{-p_1})\\
&+K^{\phi G}(\phi_{-p_2},D_{G^1}(p_2,P)(G_{-p_1},\omega_P))=0,\\
\mathcal W^{33}:\quad&K^{\phi GG}(D_{\phi^0}(P)\omega_P,G_{-p_1},G_{-p_2})\\
&+K^{GG}(G_{-p_1},D_{G^1}(p_1,P)(G_{-p_2},\omega_P))+(1\leftrightarrow2)=0,\\
\mathcal W^{34}:\quad&K^{\phi GG}(\phi_{-p_3},G_{-p_1},D_{G^1}(p_1+p_3,P)(G_{-p_2},\omega_P))+(1\leftrightarrow2)\\
&+K^{\phi GG}(D_{\phi^1}(p_1+p_2,P)(\phi_{-p_3},\omega_P),G_{-p_1},G_{-p_2})=0.
\end{aligned}
$$

In $\mathcal W^{33}$ the exchange applies only to the immediately preceding $K^{GG}$ term. The momenta carried by mixed kernels are fixed by their $G$ argument, not by a uniform guessed sign.

The source projects at $p_1=p_2=p$ (also $p_3=p$ for the last identity). These are necessary constraints, not by themselves a proof for arbitrary momenta. The logical completion is: this restricted linear system leaves at most one coefficient, and the resulting action is independently identified as invariant for arbitrary gauge parameter. Hence there is an invariant representative and no additional solution in the larger system. The $95$-element projection Gram matrix is degenerate at $d=4$; the source never needs to invert it to find the action. **Checked:** independent orbit generation reproduces all six projection-basis counts. The first five Gram determinants, factored over $\mathbb Q[d]$ at $p^2=1$, reproduce the source’s three displayed factorizations and the claimed positive-integer zeros of the 23- and 20-element cases (only $d=1,2,3$). The 95-element Gram matrix has exact rank **94** at $d=4$, $p^2=1$.

## Solving the coefficients and identifying curvature — VI, E

The source's solution sequence is

$$
31\xrightarrow{\mathcal W^{31}}27
\xrightarrow{\mathcal W^\phi,\mathcal W^G}18
\xrightarrow{\mathcal W^{32}}1,
$$

with $\mathcal W^{33},\mathcal W^{34}$ then imposing no further constraint. The second stage leaves two quadratic coefficients and sixteen cubic ones. A Fierz–Pauli-type pure $\phi\phi$ term could satisfy linearized invariance alone; the field-dependent $\mathcal W^{31}$ removes it.

The final kernels, with all displayed indices lowered, are

$$
\begin{aligned}
K^{\phi\phi}&=0,\\
K^{\phi G}_{\mu\nu\lambda\rho\sigma}(p)
&=-\frac i2p_\lambda(\eta_{\mu\rho}\eta_{\nu\sigma}+\eta_{\mu\sigma}\eta_{\nu\rho}),\\
K^{GG}_{\lambda\mu\nu\rho\sigma\tau}
&=-\mathcal S[\eta_{\lambda\sigma}\eta_{\mu\rho}\eta_{\nu\tau}]
+\frac1{d-1}\mathcal S[\eta_{\lambda\mu}\eta_{\nu\sigma}\eta_{\rho\tau}],\\
K^{\phi GG}_{\mu\nu\lambda\alpha\beta\rho\sigma\tau}
&=-\mathcal S[\eta_{\mu\alpha}\eta_{\nu\sigma}\eta_{\lambda\tau}\eta_{\beta\rho}]
+\frac1{d-1}\mathcal S[\eta_{\mu\alpha}\eta_{\nu\sigma}\eta_{\lambda\beta}\eta_{\rho\tau}].
\end{aligned}
$$

These are elements 4 of Table VII, 5 and 2 of Table VIII, and 16 and 14 of Table IX, with the stated coefficients. Contracting against the symmetric fields removes the orbit averaging and gives the action at the start of this note. The Fourier-space mixed term is $-ip_\lambda\phi^{\mu\nu}(-p)G^\lambda{}_{\mu\nu}(p)$, which is $\phi\partial G$, then $-G\partial\phi$ after integration by parts.

**Checked, exact finite-dimensional constraint calculation:** independent Sage pairing/orbit generation and contractions with 45 integer field/parameter samples at equal momentum give accumulated ranks $4,13,30,30,30$ in **each of $d=4,5$**, corresponding to the sequence above. Arithmetic is over $\mathbb Q$, not a floating-point rank threshold. The one-dimensional nullspace has precisely the displayed mixed, $GG$, and cubic coefficients. For each dimension, another 12 independent unequal-momentum choices give zero in all three nonlinear sectors $\mathcal W^{32},\mathcal W^{33},\mathcal W^{34}$ (36 exact residuals per dimension). A sampled rank 30 establishes at least 30 independent constraints in that dimension; existence of the invariant action provides the matching upper bound. This is not an independently regenerated symbolic-$d$ 31-column elimination.

Use the source curvature convention

$$
R_{\mu\nu}(\Gamma)=\partial_\lambda\Gamma^\lambda{}_{\mu\nu}
-\partial_\nu\Gamma^\lambda{}_{\mu\lambda}
+\Gamma^\lambda{}_{\lambda\rho}\Gamma^\rho{}_{\mu\nu}
-\Gamma^\lambda{}_{\nu\rho}\Gamma^\rho{}_{\mu\lambda}.
$$

Substitution of the trace-adjusted connection gives, **after contraction with symmetric $h$**,

$$
\frac1{\kappa^2}h^{\mu\nu}R_{\mu\nu}
=\frac1\kappa h^{\mu\nu}\partial_\lambda G^\lambda{}_{\mu\nu}
+h^{\mu\nu}\left[-G^\lambda{}_{\mu\sigma}G^\sigma{}_{\nu\lambda}+\frac{g_\mu g_\nu}{d-1}\right]
=\mathcal L_{\rm GP}+\partial_\lambda B^\lambda,
\quad B^\lambda=\frac1\kappa h^{\mu\nu}G^\lambda{}_{\mu\nu}.
$$

The derivative trace cancellation need not hold for the uncontracted nonsymmetric Ricci tensor. **Checked:** xAct canonicalized the contracted curvature-minus-target residual to zero for symbolic dimension, with a symmetric independent $G$ and symmetric $h$. The remaining integration by parts uses $\partial h=\kappa\partial\phi$ and explicitly retains $B$.

## Eliminating the auxiliary connection — VII

Define the bilinear form by polarization of

$$
M(h)(G,G)=2h^{\mu\nu}\left[-G^\lambda{}_{\mu\sigma}G^\sigma{}_{\nu\lambda}+\frac{g_\mu g_\nu}{d-1}\right].
$$

Then $\mathcal L=-G\cdot\partial\phi+\tfrac12M(h)(G,G)$. Variation of $G$ gives $M(h)G=\partial\phi$. For nondegenerate $h$ and $d>2$, substituting its unique solution yields

$$
\mathcal L_{\rm eff}=-\frac12M^{-1}(h)(\partial\phi,\partial\phi).
$$

This is classical algebraic elimination, not a Gaussian functional integral. With $M_0=M(\eta)$, the formal inverse is

$$
M^{-1}(h)=M_0^{-1}-\kappa M_0^{-1}M(\phi)M_0^{-1}
+\kappa^2M_0^{-1}M(\phi)M_0^{-1}M(\phi)M_0^{-1}-\cdots.
$$

It is an identity of formal power series around an invertible $M_0$; analytic convergence at arbitrary finite field amplitude is not claimed. In particular $G_0=M_0^{-1}\partial\phi$ and

$$
\mathcal L^{(2)}=-\frac12G_0\cdot\partial\phi,
\qquad \mathcal L^{(3)}=\frac\kappa2M(\phi)(G_0,G_0).
$$

A useful explicit inverse image, reconstructed here, is

$$
G_0^\lambda{}_{\mu\nu}
=\frac12\left[\partial^\lambda\phi_{\mu\nu}
-\partial_\mu\phi^\lambda{}_{\nu}-\partial_\nu\phi^\lambda{}_{\mu}
-\frac{\eta_{\mu\nu}}{d-2}\partial^\lambda\phi\right],
\qquad \phi=\eta_{\rho\sigma}\phi^{\rho\sigma}.
$$

It can also be obtained by writing the linear metric perturbation as $q_{\mu\nu}=-\phi_{\mu\nu}+\eta_{\mu\nu}\phi/(d-2)$, constructing its linear Levi-Civita connection, and trace-adjusting. It gives

$$
\mathcal L^{(2)}=-\frac14\partial_\lambda\phi_{\mu\nu}\partial^\lambda\phi^{\mu\nu}
+\frac12\partial_\mu\phi^{\lambda\nu}\partial_\lambda\phi^\mu{}_{\nu}
+\frac1{4(d-2)}\partial_\lambda\phi\partial^\lambda\phi.
$$

**Checked:** xAct returned zero for $(M_0G_0-\partial\phi)\cdot V$ with arbitrary symmetric lower-pair test tensor $V$, and separately for the quadratic-density difference above, in symbolic dimension. No integration by parts or field equations for $\phi$ were used in these two checks. The $d=2$ inverse pole is distinct from the $d=3$ cubic-basis dependence.

The paper compares with Capper–Leibbrandt–Ramón Medrano (CLM). Their action uses $2K^{-2}h^{\mu\nu}R^{\rm CLM}_{\mu\nu}$ with $R^{\rm CLM}=-R$. Setting $K=\kappa$, source Eq. (7.3) reports

$$
\mathcal L^{(2)}+\frac12\mathcal L^{\rm CLM}_{(2)}=\partial_\mu J^\mu,
\quad J^\mu=\frac12\left(\phi^{\nu\rho}\partial_\rho\phi^\mu{}_{\nu}-\phi^{\mu\nu}\partial_\rho\phi^\rho{}_{\nu}\right),
\qquad
\mathcal L^{(3)}+\frac\kappa2\mathcal L^{\rm CLM}_{(3)}=0.
$$

The cubic equality is asserted locally; the quadratic **actions** agree only when the boundary integral of $J$ vanishes or is retained consistently. The source explicitly repairs an index contraction when transcribing CLM (2.16): the first term in its second group is read as $\phi_{\mu\tau}\phi_{\mu\sigma,\lambda}\phi_{\lambda\tau,\sigma}$. The archived supplementary notebook supplies the explicit transcriptions of CLM (2.10) and (2.16). **Checked:** inserting the independently constructed $G_0$ above and these transcriptions into xAct gives zero for the cubic local residual. The quadratic residual before imposing flatness is $\tfrac12\phi^{ab}(\nabla_b\nabla_c-\nabla_c\nabla_b)\phi_a{}^c$, which becomes zero after commuting derivatives and setting the background curvature to zero. Thus the source’s flat-background quadratic boundary identity is also reproduced. The repaired CLM index contraction is an input to this comparison; the 1973 printed scan and the full-density (A14) comparison were not independently checked.

The [author supplementary archive](https://doi.org/10.5281/zenodo.22757769) resolved through the Zenodo API to record 22757770. Its README refers to manuscript v2 and retains pre-release wording, whereas the selected arXiv source is `bootstrap_article_v4.tex`; its formula transcriptions were inspected as supplementary input, not substituted for the current paper. The web reader could not open the DOI, but direct API and ZIP retrieval succeeded. The whole frontend-dependent author notebook was not executed; the targeted xAct calculation was rebuilt independently.

## Translation to a boundary and CPS calculation

For the displayed first-order representative, direct variation gives the natural potential density

$$
\theta^\lambda_{\rm GP}(\delta)=-G^\lambda{}_{\mu\nu}\delta\phi^{\mu\nu},
\qquad
\omega^\lambda_{\rm GP}(\delta_1,\delta_2)
=-\delta_1G^\lambda{}_{\mu\nu}\delta_2\phi^{\mu\nu}
+\delta_2G^\lambda{}_{\mu\nu}\delta_1\phi^{\mu\nu}.
$$

This local translation follows directly by integrating $-G\partial\delta\phi$ once. Adding the explicitly retained $\partial B$ shifts the potential by $\delta B$; for commuting variations the bulk antisymmetrized second variation cancels, but boundary polarization and corner representatives still require choices. The compact-support proof in III provides no boundary conditions for a finite subregion or asymptotic AdS boundary. It also does not compute the Noether charge or establish its integrability.

Concrete reuse is therefore: choose the region and boundary conditions; start from this $\theta$ together with the chosen boundary action; eliminate $G$ only with its equation and the induced boundary data; then compare metric and first-order presymplectic representatives, retaining possible exact corner terms. For global AdS Einstein perturbations, match the density field and curvature signs before importing the cubic vertex. A metric perturbation $q$ is not the source's $\phi$.

## Equation ledger and verification boundary

| Source location | Reusable result | Evidence in this note |
|---|---|---|
| (2.1)–(2.4), A | Trace-adjusted variables and prescribed transformations | Full reconstruction; curvature substitution independently checked |
| (3.2)–(3.7) | $b+r=2$, dilation weight, $N\leq3$, quadratic-sector relation | Explicit proof chain; scalar algebra checked |
| (4.1), C, Tables VI–IX | Four finite bases and generic-dimensional independence | Orbit counts and all four symbolic Gram determinants checked |
| (5.1), D, Table III | Six off-shell identities | Explicit momentum forms; exact finite-dimensional tests |
| Table IV, (6.1), E | One-parameter solution and normalized kernels | Rank sequence checked at $d=4,5$; general-$d$ rank is Source-derived |
| (7.1), (7.2) | Algebraic elimination and all-order formal vertex generator | Explicit elimination; symbolic $G_0$ and quadratic density checked |
| (7.3), F | CLM comparison and author notebooks | Quadratic boundary and cubic local residuals checked using the archived transcriptions; original CLM scan not checked |

**Verified:** all four kernel and five smaller projection Gram determinant polynomials, all orbit counts, and the 95-element rank-94 diagnostic; exact constraint ranks at $d=4,5$; 72 unequal-momentum nonlinear residuals across those dimensions; symbolic-$d$ contracted Ricci identity, $G_0$ equation, quadratic density, CLM quadratic boundary residual and cubic local residual; dimensional and dilation arithmetic. PDF pages 8, 13–15, 20–22 and 26 were visually inspected for the closure argument, solution table, signs, normalization, basis tables and kernel indices. Text extraction and TeX supplied the full section map.

**Assumptions:** independent symmetric $\phi,G$; torsion-free affine connection; the prescribed diffeomorphism laws; locality and parity evenness; a finite polynomial with precisely $\kappa^{n-2}$ at degree $n$; no additional dimensional constants; compact support for the dilation proof; $d>2$ for elimination, $d\geq4$ for the source's 31-basis uniqueness theorem; nondegenerate $h$; fixed Fourier and curvature conventions.

**Not independently verified:** the symbolic-$d$ rank of the complete projected Noether system, the original CLM scan and full-density (A14) comparison, an end-to-end execution of the supplementary author notebooks, quantum equivalence, functional determinants from eliminating $G$, global boundary charges and finite-region variational principles. The rank checks were independent implementations, not execution of the authors' reported `allChecksPassed` flag. No failed source identity was found in the checks completed here. Initial Sage seed-type and xAct definition/wrapper failures were corrected before the successful runs; they are not evidence against the paper.
