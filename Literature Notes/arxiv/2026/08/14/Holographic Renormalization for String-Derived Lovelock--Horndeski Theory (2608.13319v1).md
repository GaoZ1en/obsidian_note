---
paper id: 2608.13319v1
title: Holographic Renormalization for String-Derived Lovelock--Horndeski Theory
authors:
  - Tianhao Wu
publication date: 2026-08-13T17:59
abstract: |-
  String-derived higher-curvature scalar--tensor gravities encode microscopic coupling data in boundary response. This paper constructs the complete holographic-renormalization dictionary for the five-dimensional string-derived Lovelock--Horndeski theory on an exact linear-dilaton asymptotically locally AdS branch, including the Dirichlet completion, Fefferman--Graham recursion, logarithmic obstruction, anomaly, finite one-point functions, Ward identities, and a rational inverse from boundary observables to reduced bulk couplings.
comments: "29 pages"
url: https://arxiv.org/abs/2608.13319v1
summary: "A monograph-scale holographic-renormalization construction whose reusable core is the separation of branch equations, indicial response determinants, anomaly obstruction, finite currents, and coupling identifiability."
tags: []
---

Back to [[2026_08_14_overview]].

The paper's strongest result is not merely a list of counterterms. It gives an explicit chain

$$
\text{string reduction}
\longrightarrow
\text{five-dimensional SDLH couplings}
\longrightarrow
\text{FG recursion and anomaly}
\longrightarrow
\text{renormalized one-point functions}
\longrightarrow
\text{an algebraic inverse for the couplings}.
$$

For the vault, the useful lesson is that several logically different nondegeneracy conditions remain separate:

1. the two vacuum polynomials select the linear-dilaton AdS branch;
2. $\Delta_T\ne0$ and $\Delta_S\ne0$ make the tensor and scalar/trace radial response invertible;
3. the Dirichlet completion removes normal variations at a finite cutoff;
4. the logarithmic obstruction fixes the anomaly, while normalizable data remain state-dependent;
5. four normalization-invariant observables identify the four continuous reduced couplings only on the stated regular quotient.

# How to read this long paper

- **Essential:** Sections 2--8. They contain the reduced action, exact branch, completed boundary term, ordered FG recursion, anomaly, finite currents, Ward identities, and inverse map.
- **Technical reference:** Appendix A for signs and FG identities; Appendix B for the nine paired Euler variations; Appendix C for the deterministic extraction of finite coefficients.
- **Read with caution:** the phrase “complete dictionary” is completeness within the paper's five-dimensional SDLH truncation, regular Frobenius chart, Dirichlet quantization, and chosen derivative order. It is not a statement about all string corrections or resonant branches.
- **Do not identify:** finite-cutoff differentiability, cancellation of divergences, Wess--Zumino consistency, regularity of the radial recursion, and invertibility of the observable map are different checks.

# Complete source map

1. **Introduction:** states the goal of reconstructing reduced string couplings from source-resolved holographic response.
2. **String-derived Lovelock--Horndeski theory:** derives the five-dimensional shift-symmetric action, scalar current, second-order equations, vacuum polynomials, and regular response domain.
3. **Radial variation and Dirichlet completion:** constructs the finite-cutoff boundary density and compact metric/scalar radial currents.
4. **Boundary-covariant FG recursion:** defines the ordered Laurent--log algebra, solves the complete weight-two tensor basis, and introduces the tensor and scalar/trace indicial determinants.
5. **Weight-four logarithm and anomaly:** solves the logarithmic obstruction, organizes the anomaly in a nine-density basis, and isolates the generalized-Weyl scalar $\Xi$.
6. **Renormalized finite observables:** gives power and logarithmic counterterms, response/source decompositions, finite scheme shifts, and one-point functions.
7. **Momentum and Weyl Ward identities:** derives the mixed radial constraint and generalized trace identity from the same finite-cutoff Noether algebra.
8. **String data from boundary observables:** exhibits a four-observable fingerprint, its global rational inverse, and the pullback to string-frame coefficients.
9. **Conclusions:** summarizes the regular-branch dictionary and identifies resonant extensions as future work.
10. **Appendix A:** fixes curvature, normal, extrinsic-curvature and source-variation conventions; records exact FG component identities and coefficient recursion.
11. **Appendix B:** lists paired metric and scalar Euler variations for the nine weight-four densities and the Euler/Lanczos null direction.
12. **Appendix C:** records the solved lower-weight substitution, counterterm currents, finite-coefficient operation, response decomposition, and scheme vectors.

# Theory, conventions, and claim domain

The five-dimensional bulk action is

$$
S_{\rm bulk}=\frac1{16\pi G_5}\int d^5x\sqrt{-G}\left[
R+\alpha_0X+\alpha_1\mathcal L_{\rm GB}
+\alpha_2\mathcal G^{MN}\nabla_M\phi\nabla_N\phi
+\alpha_3X\Box\phi+\alpha_4X^2
\right],
$$

where

$$
X=G^{MN}\nabla_M\phi\nabla_N\phi,
\qquad
\mathcal L_{\rm GB}=R_{MNRS}^2-4R_{MN}^2+R^2.
$$

The signature is $(-++++)$ and

$$
[\nabla_M,\nabla_N]V^P=R^P{}_{QMN}V^Q,
\qquad
R_{QN}=R^P{}_{QPN}.
$$

The source convention is

$$
\delta S_{\rm ren}=\int d^4x\sqrt{-g_{(0)}}\left[
\frac12\langle T^{ij}\rangle\delta g_{(0)ij}
+\langle\mathcal O_\phi\rangle\delta\phi_{(0)}
\right].
$$

Therefore the two Ward combinations are fixed as

$$
D_i\langle T^i{}_j\rangle-\langle\mathcal O_\phi\rangle D_j\phi_{(0)},
\qquad
\langle T^i{}_i\rangle-2s\langle\mathcal O_\phi\rangle.
$$

The second expression is not the ordinary CFT trace: the logarithmic radial scalar profile supplies a beta-function weight $2s$.

# Exact linear-dilaton branch

The background is

$$
ds^2=\frac{\ell^2}{4\rho^2}d\rho^2+\rho^{-1}\eta_{ij}dx^idx^j,
\qquad
\phi=s\log\rho+\phi_c.
$$

Its two independent vacuum equations are

$$
V_1=24\alpha_1-24\alpha_2s^2+16\alpha_4s^4
+\ell^2(4\alpha_0s^2-12)=0,
$$

$$
V_2=\frac12\alpha_0\ell^2+3\alpha_2-4\alpha_3s+4\alpha_4s^2=0.
$$

For $s\ne0$ they eliminate $\alpha_1$ and $\alpha_4$:

$$
\alpha_4=\frac{-\alpha_0\ell^2-6\alpha_2+8\alpha_3s}{8s^2},
$$

$$
\alpha_1=\frac{\ell^2}{2}+\frac32\alpha_2s^2
-\frac1{12}\alpha_0\ell^2s^2-\frac23\alpha_3s^3.
$$

The regular analytic chart is

$$
s\Delta_T\Delta_S\ne0,
$$

with

$$
\Delta_T=3\ell^2+12\alpha_2s^2-\alpha_0\ell^2s^2-8\alpha_3s^3,
$$

$$
\Delta_S=18\alpha_2+3\alpha_0\ell^2-12\alpha_3s
+6\alpha_0\alpha_2s^2-\alpha_0^2\ell^2s^2-4\alpha_0\alpha_3s^3.
$$

The exclusions $\Delta_T=0$ and $\Delta_S=0$ are not stability statements. They mark resonant indicial strata where this ordinary Frobenius inverse fails and additional logarithmic modes can enter.

# Finite-cutoff Dirichlet problem

With outward normal

$$
n_{\rm out}=-\frac{2\rho}{\ell}\partial_\rho,
\qquad
K_{ij}^{\rm out}=\frac1\ell(\rho^{-1}g_{ij}-g'_{ij}),
$$

the completed boundary density is

$$
\mathcal B_D=2K+4\alpha_1(J-2\widehat{\mathcal G}_{ij}K^{ij})
+\alpha_2(K^{ij}X_iX_j-KX_kX^k)
-\alpha_3v\left(X_kX^k+\frac13v^2\right).
$$

Here $v=n^M\nabla_M\phi$ and $X_i=D_i\phi$. The four terms respectively complete Einstein--Hilbert, Gauss--Bonnet, Einstein-tensor derivative coupling, and cubic Horndeski sectors. The claim is a finite-cutoff Dirichlet variational principle for fixed $\gamma_{ij}$ and $\phi$; it does not impose regularity in the bulk interior.

# Ordered FG recursion

The expansions are

$$
g_{ij}=g_{(0)ij}+\rho g_{(2)ij}
+\rho^2\bigl(g_{(4)ij}^{\rm tot}+\log\rho\,h_{(4)ij}\bigr)+\cdots,
$$

$$
\phi=s\log\rho+\phi_{(0)}+\rho\phi_{(2)}
+\rho^2\bigl(\phi_{(4)}^{\rm tot}+\log\rho\,\psi_{(4)}\bigr)+\cdots.
$$

The Laurent--log algebra is made algorithmic by

$$
\partial_\rho[\rho^p(\log\rho)^q]
=p\rho^{p-1}(\log\rho)^q+q\rho^{p-1}(\log\rho)^{q-1},
$$

and a recursive series inverse for $g^{-1}$. The normalized equation blocks use weight $w=2p$ for $(\rho\rho,i{}^j,\phi)$ and $w=2p+3$ for $(\rho i)$.

At weight two, symmetry permits

$$
g_{(2)ij}=c_{\rm Ric}R_{ij}+c_RRg_{(0)ij}
+c_{XX}X_iX_j+c_{X^2}X^2g_{(0)ij}
+c_HH_{ij}+c_{\Box}Hg_{(0)ij},
$$

$$
\phi_{(2)}=b_RR+b_{X^2}X^2+b_{\Box}H,
$$

where $H_{ij}=D_iD_j\phi_{(0)}$ and $H=D^2\phi_{(0)}$. The paper gives all nine rational coefficients. Their denominators display $\Delta_T$ and $\Delta_S$ explicitly.

Suppressing boundary derivatives, the indicial blocks factor as

$$
P_{\rm TT}(\lambda)\propto\lambda(\lambda-2)\Delta_T,
$$

$$
\det P_{\rm scalar/trace}(\lambda)
=-\frac8{\ell^4}(\lambda-2)\lambda^2\Delta_S.
$$

Thus the state data at weight four and the logarithmic obstruction live in the same response channels, but are selected by different rows of the recursion.

# Weight-four obstruction and anomaly

Define

$$
a=\alpha_0\ell^2+6\alpha_2-4\alpha_3s,
\qquad
b=3\alpha_2-2\alpha_3s.
$$

The trace/scalar obstruction is governed by

$$
\begin{pmatrix}\operatorname{tr}\mathcal V\\ \mathcal S\end{pmatrix}
=-\frac2{\ell^3}
\begin{pmatrix}
\Delta_T&16sb\\
4sb&8a
\end{pmatrix}
\begin{pmatrix}h_{(4)}\\ \psi_{(4)}\end{pmatrix}.
$$

The identity

$$
a\Delta_T-8s^2b^2=\ell^2\Delta_S
$$

implies that the determinant of the displayed response operator is

$$
\frac{32\Delta_S}{\ell^4}.
$$

The compact regular anomaly is

$$
\mathcal A_{\rm reg}=a_EE_4+a_CC_{ijkl}C^{ijkl}-\frac\kappa4\Xi^2,
$$

where

$$
\Xi=X_iX^i+2sD^2\phi_{(0)}-\frac23s^2R.
$$

Under

$$
\delta_\sigma g_{(0)ij}=2\sigma g_{(0)ij},
\qquad
\delta_\sigma\phi_{(0)}=-2s\sigma,
$$

one obtains $\delta_\sigma\Xi=-2\sigma\Xi$: the $D_i\sigma D^i\phi_{(0)}$ and $D^2\sigma$ terms cancel separately. Hence $\sqrt{-g_{(0)}}\,\Xi^2$ is generalized-Weyl invariant in four dimensions.

The nine-density representation is redundant by one integrated Euler/Lanczos direction. This is a functional-basis null vector, not an extra dynamical zero mode.

# Finite currents and Ward identities

After power counterterms and the logarithmic counterterm, the normalizable response coefficients are

$$
C_g=-\frac{2\Delta_T}{3\ell^3},
\qquad
C_\phi=D_g=\frac{8s(3\alpha_2-2\alpha_3s)}{\ell^3},
$$

$$
D_\phi=\frac{16(\alpha_0\ell^2+6\alpha_2-4\alpha_3s)}{\ell^3}.
$$

They mix $\operatorname{tr}g_{(4)}^{\rm tot}$ and $\phi_{(4)}^{\rm tot}$ in the scalar/trace sector. The remaining transverse-traceless components couple with $C_g$.

At vector weight five, the mixed radial equation gives

$$
D_i\langle T^i{}_j\rangle-\langle\mathcal O_\phi\rangle D_j\phi_{(0)}
=\frac{\overline{\mathcal E}_{\rho j}^{\rm nonlog}
-\frac12\overline{\mathcal E}_{\rho j}^{\log}}
{4\pi G_5\ell}=0.
$$

In the minimal finite scheme,

$$
\langle T^i{}_i\rangle-2s\langle\mathcal O_\phi\rangle
=-\frac{\mathcal A_{\rm reg}}{8\pi G_5}.
$$

Finite local counterterms shift the trace by their own paired Euler responses. Therefore the compact formula above is explicitly scheme-qualified.

# Observable fingerprint and global inverse

On the scalar-normalization quotient, define

$$
x=\mathsf c_0,\qquad y=\mathsf c_2,\qquad z=\mathsf c_3,
\qquad m=3y-2z,
$$

$$
T=3-x+4m,
\qquad
Q=3+24y-x-8z.
$$

The four invariant observables are

$$
G=C_g,
\qquad A=sC_\phi=sD_g,
\qquad B=s^2D_\phi,
\qquad E=a_E+a_C.
$$

Their forward map is

$$
G=-\frac{2T}{3\ell},
\qquad
A=\frac{8m}{\ell},
\qquad
B=\frac{16(x+2m)}{\ell},
\qquad
E=-\frac{\ell^3}{48}(Q+T+6).
$$

It has the rational inverse

$$
\ell=\frac{48}{B-12A-24G},
\qquad
m=\frac{\ell A}{8},
\qquad
x=\frac{\ell(B-4A)}{16},
$$

$$
T=-\frac{3\ell G}{2},
\qquad
Q=-\frac{48E}{\ell^3}-T-6,
$$

$$
y=\frac{Q-T}{12},
\qquad
z=\frac{Q-T}{8}-\frac m2.
$$

The exact Jacobian is

$$
\det\frac{\partial(G,A,B,E)}{\partial(\ell,x,y,z)}=\frac{128}{\ell}.
$$

The response-only triple $(G,A,B)$ has kernel

$$
v_R=(0,0,2,3)_{(\ell,x,y,z)},
$$

while

$$
dE(v_R)=-\frac{\ell^3}{2}.
$$

Thus the anomaly sum $E$ removes precisely the continuous ambiguity left by the finite response block. At fixed $\alpha_0=-4/5$,

$$
\det\frac{\partial(G,A,B,E)}{\partial(\ell,s,y,z)}
=-\frac{1024s}{5\ell}.
$$

The particularly transparent relation

$$
a_E+a_C=-\frac\ell2\alpha_1
$$

reconstructs the reduced Gauss--Bonnet coupling with its sign. This identifiability result is algebraic and local in parameter space only after quotienting scalar normalization and excluding the finite chart boundaries.

# Relevance to current projects

**Reason codes:** `T1-boundary`, `T1-charge`, `T2-model`, `T3-math`.

- The completed finite-cutoff variation is directly relevant to the vault's CPS-with-boundaries and gluing work: a well-posed source problem must be established before one interprets radial momenta as observables.
- The split between source-local pieces and normalizable state pieces is a useful template for keeping counterterm ambiguities separate from physical response.
- The pair $(\Delta_T,\Delta_S)$ is an explicit example of a parameter-closure problem: a single “regularity” condition cannot replace the distinct tensor and scalar/trace inverses.
- The generalized trace identity is close to the user's interest in boundary charges, but the paper computes holographic one-point functions rather than a full covariant phase-space charge algebra.
- The observable inverse is a controlled finite-dimensional identifiability statement. It should not be upgraded to uniqueness of a UV string compactification.

# Evidence audit

## Source-derived

- The action, sign conventions, vacuum polynomials, branch elimination, FG ansatz, completed boundary density, weight-two basis, indicial factors, anomaly coefficients, finite currents, Ward identities, and inverse map were reconstructed from the TeX source and checked against the rendered PDF.
- All twelve source sections and appendices were read. The PDF has 29 pages; pages 1, 10, 17, 23, and 28 were rendered and visually inspected.
- The paper states a complete nine-coefficient weight-two solution and a complete nine-density paired-variation table. These long coefficient tables were transcribed only at the structural level here.
- Visual inspection found a source-PDF typography defect on page 10: several intended $\Box$ symbols in Eqs. (4.13)--(4.16) render as hollow square boxes. The TeX source unambiguously contains `\Box`, so this does not change the formulas recorded here.

## Checked

- **Mathematica:** substituting the displayed $\alpha_1$ and $\alpha_4$ into $(V_1,V_2)$ returns $(0,0)$ exactly for $s\ne0$.
- **Mathematica:** $a\Delta_T-8s^2b^2-\ell^2\Delta_S=0$ and the full $2\times2$ response determinant minus $32\Delta_S/\ell^4$ vanishes identically.
- **Mathematica:** the rational inverse composed with the forward observable map gives four zero residuals.
- **Mathematica:** the two Jacobians evaluate exactly to $128/\ell$ and $-1024s/(5\ell)$.
- **Mathematica:** the vector $(0,0,2,3)$ annihilates the Jacobian of $(G,A,B)$ and gives $dE=-\ell^3/2$.
- **Mathematica:** the infinitesimal generalized-Weyl transformation of $\Xi$ reduces to $-2\sigma\Xi$; derivative-of-$\sigma$ terms cancel.
- **xAct:** with the paper's curvature convention, the divergence of the cubic shift-current sector reduces exactly to $(\Box\phi)^2-\phi_{MN}\phi^{MN}-R_{MN}\phi^M\phi^N$.

## Blocked

- The authors do not provide an executable symbolic notebook for the full FG coefficient solve. Reproducing the complete nine-by-nine weight-two system, all weight-four source tensors, and the finite-current extraction from the bulk equations would require rebuilding their tensor-algebra pipeline.
- The string-reduction pullback was not recomputed from a higher-dimensional action because the paper provides formulas but no machine-readable reduction notebook.

## Not independently verified

- The complete component formulas for $g_{(2)ij}$ and $\phi_{(2)}$, beyond their basis, denominators, and selected algebraic consequences.
- The nine long paired metric variations in Appendix B, except for their stated Euler/Lanczos linear relation at the displayed-formula level.
- The full source-local $h_{(4)ij}$, $\psi_{(4)}$, finite canonical currents, and all finite-scheme response tensors.
- The higher-dimensional Kaluza--Klein reduction map, its determinant, and the final reduction Jacobian.
- Interior existence, regularity, positivity, causality, or unitarity of bulk saddles for generic points of the algebraic regular chart.

# Achieved claim tier

**Verified tier:** exact finite-dimensional algebraic consistency of the branch equations, obstruction matrix, generalized-Weyl scalar, current-divergence identity, and observable inverse, plus source/PDF reconstruction of the complete holographic-renormalization pipeline.

**Not achieved:** an independent tensor-algebra reproduction of every FG coefficient or finite local current; a proof that the regular algebraic chart is dynamically healthy; or a uniqueness theorem for the underlying string compactification.
