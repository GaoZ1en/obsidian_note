---
paper id: 2610.11623v1
title: No Particle Production and Integrability in AdS$_2$
authors:
- Zhong, De-liang
- Zhou, Xinan
publication date: 2026/10/08
abstract: We propose an analogue of the no particle production condition in two-dimensional
  anti-de Sitter space, and demonstrate how this criterion uniquely reconstructs the
  curved-space Liouville and Toda theories via general-multiplicity holographic correlators.
comments: 6+4 pages, 2 figures
url: https://arxiv.org/abs/2610.11623v1
summary: Tree-level log cancellation selects Liouville interactions within a canonical
  scalar ansatz; explicit BG currents give cancellation benchmarks for AdS spectral
  calculations.
tags: []
---

# Result and scope

The concrete result is a tree-level reconstruction of Liouville interactions on Euclidean AdS$_2$ from an absence-of-logarithms condition, together with an explicit all-multiplicity Berends–Giele (BG) current. This condition is the authors' working definition of an analogue of no particle production. It is not an equivalence between all notions of integrability, and is not a claim that generic interacting AdS spectra have no anomalous shifts.

Reason codes: `T2-spectral`, `T1-symmetry`, `T2-model`. Immediate use: compare contact and exchange contributions before attributing a vanishing AdS energy shift to symmetry. [Official v1](https://arxiv.org/abs/2610.11623v1).

# Source map and reading guide

| Source | Technical role | Evidence |
|---|---|---|
| Introduction | Motivation from flat-space factorization, spectral interpretation of logs | Source-derived |
| No particle production: four/five points | Exchange collapse, $D$-function recursion, $g_4,g_5$ | Core identities Checked; full generic-mass analysis not supplied |
| Analytic diagrammatic identity | Partition recursion and permutation-chain BG current | Source proof plus finite exact checks |
| All-order interactions via recursion | Rational correlator plus unmatched contact term fixes all vertices | Source-derived general induction |
| Higher-spin conserved currents | Rank-four conservation selects the same potential; boundary flux | Reduced equations Checked; classification source-dependent |
| Generalization to Toda theories | Connected Hessian, $A_N$ roots and scalar dimensions | Source-derived; finite-rank spectra Checked |
| Discussion and outlook | Loops, WZW, supersymmetry, AdS$_3$ recursion | Future work |
| Supplement S1 | 26-function ansatz, improvements, descendants, charge | Reconstructed below; unrestricted derivative reduction deferred |
| Supplement S2 | Nilpotent fields, creation operator and uniqueness | Reconstructed below |

Read the exchange identity → BG current → contact remainder first. S2 supplies the analytic induction. S1 is the independent current route. The Toda section announces results whose general proofs are deferred to a companion paper.

# Fields and propagators

The source uses radius one and Euclidean conventions

$$
\mathcal L=\frac12(\nabla\phi)^2+W(\phi),\quad
W=\frac12m^2\phi^2+\sum_{n\ge3}\frac{g_n}{n!}\phi^n,
\quad W(0)=W'(0)=0.
$$

Take $ds^2=z^{-2}(dz^2+dx^2)$, $z>0$, $m^2=\Delta(\Delta-1)=2$, standard quantization $\Delta=2$, and distinct real boundary positions. Define

$$
k_i=\frac z{z^2+(x-x_i)^2},\quad K_i=k_i^2,\quad s_{ij}=(x_i-x_j)^2,
\quad L=2-z^2(\partial_z^2+\partial_x^2).
$$

The kernels are unnormalized boundary kernels. A canonically normalized CFT operator requires a separate normalization conversion. With $dY=dz'dx'/z'^2$,

$$
G(Z,Y)=\frac1{2\pi}\left[\frac\chi2\log\frac{\chi+1}{\chi-1}-1\right],
\quad \chi=\frac{z^2+z'^2+(x-x')^2}{2zz'},
\quad LG=\delta_{\rm AdS},\quad LK_i=0.
$$

Vertices have weight $-g_n$. The exchange identity is

$$
\int dY\,G(Z,Y)K_i(Y)K_j(Y)=\frac{k_i(Z)k_j(Z)}{4s_{ij}}.
$$

Its local equation follows from the Checked identity $L(k_i k_j)=4s_{ij}K_iK_j$. Equality to the Green solution also requires the regularity and boundary prescription to eliminate a homogeneous solution.

# Four/five points and the contact remainder

Write $D_{\Delta_1\ldots\Delta_n}=\int dZ\prod_i k_i^{\Delta_i}$. The $12|34$ exchange reduces to $D_{1122}/(4s_{12})$. The source recursion is

$$
\partial_{s_{ij}}D_{\Delta_1\ldots\Delta_n}
=\frac{2\Delta_i\Delta_j}{d-\sum_l\Delta_l}
D_{\ldots\Delta_i+1\ldots\Delta_j+1\ldots}.
$$

Distance derivatives act in the independent-distance representation before imposing collinear kinematics. The seed is

$$
D_{1111}=\frac{\pi^{d/2}\Gamma((4-d)/2)}{2s_{13}s_{24}}
\frac{2[\operatorname{Li}_2(\zeta)-\operatorname{Li}_2(\bar\zeta)]
+\log(\zeta\bar\zeta)\log[(1-\zeta)/(1-\bar\zeta)]}{\zeta-\bar\zeta},
$$

with $\zeta\bar\zeta=s_{12}s_{34}/(s_{13}s_{24})$ and $(1-\zeta)(1-\bar\zeta)=s_{14}s_{23}/(s_{13}s_{24})$. The $d=1$ limit $\zeta=\bar\zeta$ is a limit of the apparent $0/0$, not a direct substitution. Three exchange channels and the contact term cancel their logs for $g_4=g_3^2/2$.

At five points the three topologies have 1, 10 and 15 inequivalent labelings and weights $-g_5$, $g_3g_4$, $-g_3^3$. Their source-derived cancellation fixes $g_5=g_3^3/4$. For generic mass the paper cites conformal-block recursion to select $\Delta=2$, but does not supply its arbitrary-$\Delta$ coefficients. That uniqueness calculation has not been independently reproduced.

# BG currents and rational correlators

For a nonempty set $A$, $\Phi_{\{i\}}=K_i$, and $\Pi_r(A)$ denotes unordered partitions into $r$ blocks. At special couplings,

$$
\Phi_A(X)=-\int dY\,G(X,Y)\sum_{r=2}^{|A|}g_{r+1}^*
\sum_{\pi\in\Pi_r(A)}\prod_{B\in\pi}\Phi_B(Y),
\quad g_n^*=2^{3-n}g_3^{n-2}.
$$

There is no extra $r!$ multiplying this unordered sum. The solution, source Eq. (14), is

$$
\Phi_A=\left(-\frac{g_3}{8}\right)^{|A|-1}
\sum_{\sigma\in\operatorname{Perm}(A)}
\frac{k_{\sigma_1}k_{\sigma_{|A|}}}
{s_{\sigma_1\sigma_2}\cdots s_{\sigma_{|A|-1}\sigma_{|A|}}}.
$$

Thus $\Phi_{12}=-g_3k_1k_2/(4s_{12})$ and

$$
\Phi_{123}=\frac{g_3^2}{32}\left(
\frac{k_1k_2}{s_{13}s_{23}}+\frac{k_1k_3}{s_{12}s_{23}}
+\frac{k_2k_3}{s_{12}s_{13}}\right).
$$

Acting with $L$ replaces each endpoint product by $4s_{\sigma_1\sigma_n}K_{\sigma_1}K_{\sigma_n}$. Glue the last external kernel and use

$$
D_{222}(x_i,x_j,x_k)=\frac{3\pi}{8s_{ij}s_{jk}s_{ki}}
$$

to obtain the connected tree correlator

$$
G_n^*=\frac{3\pi}{2}\left(-\frac{g_3}{8}\right)^{n-2}
\sum_{\sigma\in S_{n-1}}
\frac1{s_{n\sigma_1}s_{\sigma_1\sigma_2}\cdots s_{\sigma_{n-1}n}}.
$$

This is rational. If all lower vertices have already been fixed, the exchange terms in the physical $G_n$ agree with $G_n^*$, so

$$
G_n-G_n^*=-(g_n-g_n^*)D_{22\ldots2}.
$$

The source uses the nonzero logarithms of the contact term at $n>3$ to fix $g_n=g_n^*$. Summation yields

$$
W(\phi)=\frac8{g_3^2}\left(e^{g_3\phi/2}-1-\frac{g_3\phi}{2}\right).
$$

The interacting branch has $g_3\ne0$; its continuous zero-coupling limit is $W=\phi^2$. A separate free branch permits arbitrary allowed mass. “All orders” here means all multiplicities of tree interactions, not all loops.

# S2: creation operator and homogeneous ambiguity

Set $g_3=1$. Introduce commuting nilpotents $\epsilon_i^2=0$ and $\Psi_A=\sum_{\emptyset\ne B\subseteq A}\epsilon_B\Phi_B$. The recursion is equivalent to

$$
\mathcal E(\Psi)=L\Psi+N(\Psi)=0,
\quad N(\Psi)=4(e^{\Psi/2}-1-\Psi/2).
$$

A new source linearizes it: $(L+N'(\Psi_A))\psi_m=0$. Define $\psi_m^*=K_m+\widehat D_m\Psi_A$, where

$$
\widehat D_m=\frac18\left[
\frac{(x-x_m)\partial_x-z\partial_z}{z^2+(x-x_m)^2}
+\sum_{i\in A}\left(\frac{\partial_{x_i}}{x_i-x_m}-\frac{2E_i}{s_{im}}\right)\right].
$$

$E_i$ counts the label $i$ in a nilpotent monomial. Products sharing a label vanish, so $E_i$ obeys the needed product rule. The identities

$$
[L,\widehat D_m]=\frac{K_m}{2}(L-2),\quad
\widehat D_mN=N'\widehat D_m\Psi,\quad N'=N/2+\Psi
$$

imply

$$
(L+N')(K_m+\widehat D_m\Psi_A)
=(\widehat D_m+K_m/2)\mathcal E(\Psi_A)=0.
$$

For uniqueness, the source establishes bounded multi-label currents, $O(z^2)$ falloff away from insertions and $O(R^{-2})$ decay at infinity. At an old insertion, translation invariance removes the dangerous $\partial_x+\partial_{x_i}$ term; at the new insertion $z^2/[z^2+(x-x_m)^2]\le1$. Positivity of $G$ and the source identity $\int G=1/2$ bound its Green transform. The coefficient difference obeys triangular equations; once lower coefficients vanish, $LU_B=0$. Bounded-solution uniqueness for this positive massive elliptic operator eliminates $U_B$. Acting with $D_m$ then inserts the new label in all positions of the chain exactly once.

These analytic hypotheses are essential. Finite rational checks below do not independently establish the maximum-principle or arbitrary-multiplicity proof.

# S1: rank-four current, improvements and flux

Use $x^\pm=z\pm ix$, $e^\pm=dx^\pm/(\sqrt2z)$, $p_n=\nabla_+^n\phi$, $q_n=\nabla_-^n\phi$, and $f=W'$. The source jet rule is

$$
\nabla_-p_n=\tfrac12[\nabla_+^{n-1}f-n(n-1)p_{n-1}],
$$

with the exchanged rule for $q_n$. The five components are $A_\pm=J_{\pm\pm\pm\pm}$, $B_\pm=J_{\mp\pm\pm\pm}$ and $D=J_{--++}$. The four-derivative ansatz has 26 smooth functions:

$$
\begin{aligned}
A_\sigma&=A_{\sigma1}z_{\sigma,4}+A_{\sigma2}z_{\sigma,3}z_{\sigma,1}
+A_{\sigma3}z_{\sigma,2}^2+A_{\sigma4}z_{\sigma,2}z_{\sigma,1}^2+A_{\sigma5}z_{\sigma,1}^4,\\
B_\sigma&=B_{\sigma1}z_{\sigma,2}+B_{\sigma2}z_{\sigma,1}^2
+z_{-\sigma,1}(B_{\sigma3}z_{\sigma,3}+B_{\sigma4}z_{\sigma,2}z_{\sigma,1}+B_{\sigma5}z_{\sigma,1}^3),\\
D&=d_0+d_1p_1q_1+d_2p_2q_2+d_3p_2q_1^2+d_4p_1^2q_2+d_5p_1^2q_1^2.
\end{aligned}
$$

The highest-degree equations give a shared function $h$ with
$A_{\sigma i}=(h+a_{\sigma1},4h'+a_{\sigma2},3h'+a_{\sigma3},6h''+a_{\sigma4},h'''+a_{\sigma5})$,
$B_{\sigma,3:5}=(-h',-3h'',-h''')$ and $(d_2,d_3,d_4,d_5)=(h',h'',h'',h''')$.
The source's scalar improvement is

$$
\mathcal K[\Omega]=\nabla_{(\mu}\nabla_\nu\nabla_\rho\nabla_{\sigma)}\Omega
+g_{(\mu\nu}\nabla_\rho\nabla_{\sigma)}(14-2\Box)\Omega
+g_{(\mu\nu}g_{\rho\sigma)}(\Box^2-12\Box+9)\Omega.
$$

Choosing $\Omega'=h$ removes the variable coefficients. Then $B_\sigma=u_\sigma z_{\sigma,2}+v_\sigma z_{\sigma,1}^2$, $D=d_0+d_1p_1q_1$, with

$$
\begin{aligned}
u_\sigma&=6a_{\sigma1}-\tfrac12(a_{\sigma1}f'+a_{\sigma2}f),\\
v_\sigma&=\tfrac12[-a_{\sigma1}f''+3a_{\sigma2}-a_{\sigma3}(f'-2)-a_{\sigma4}f],\\
d_1&=\tfrac12(a_{\sigma1}f''+a_{\sigma2}f'),\\
d_0'&=-\tfrac12u_\sigma(f'-2)-v_\sigma f-\tfrac12d_1f.
\end{aligned}
$$

The same $d_0,d_1$ must serve both chiralities. Set $(\mathfrak c_1,\mathfrak c_2,\mathfrak c_3)_\sigma=(a_{\sigma2}-a_{\sigma3},a_{\sigma4},a_{\sigma5})$. The two independent residuals are proportional to $\mathfrak c_1f''-2\mathfrak c_2+4\mathfrak c_3f$ and $\mathfrak c_1f''-\mathfrak c_2f'$. Equivalently,

$$
\mathfrak c_1 f''-\mathfrak c_2 f'=0,
\qquad \mathfrak c_2(f'-2)+4\mathfrak c_3f=0.
$$

For a nonlinear branch $\mathfrak c_1\mathfrak c_2\ne0$, define $g_3=2\mathfrak c_2/\mathfrak c_1$. Integration gives $f'=\kappa+(g_3/2)f$; the second equation fixes $\kappa=2$ and $\mathfrak c_3=-g_3^2\mathfrak c_1/16$. This reproduces $W$ and $m^2=2$.

The source removes conserved descendants with

$$
\mathcal S[R]=\tfrac12[\nabla_{(\mu}\nabla_\nu R_{\rho\sigma)}
-g_{(\mu\nu}(\Box-9)R_{\rho\sigma)}],
$$

and $J=\mathcal K[\Omega]+a_0\mathcal S[T]+2a_{+1}\mathcal S[T^{[+]}]+2a_{-1}\mathcal S[T^{[-]}]+J_{\rm red}$. The reduced current is

$$
J_{++++}=-\mathfrak c_{1,+}\chi_+^2,\quad J_{----}=-\mathfrak c_{1,-}\chi_-^2,
\quad\chi_\pm=\nabla_\pm^2\phi-\tfrac{g_3}{4}(\nabla_\pm\phi)^2,
$$

with vanishing mixed components. The reduced potential equation gives $\nabla_-\chi_+=\nabla_+\chi_-=0$.

A local conserved tensor is not yet a conserved integrated charge. Contract with $\mathsf K=(\partial_x)^{\otimes3}$, $j_\mu=J_{\mu\nu\rho\sigma}\mathsf K^{\nu\rho\sigma}$ and $Q=\int_0^\infty dz\,j_x$. For $\phi=z^2a(x)+O(z^4)$, no compensating boundary degrees of freedom, and vanishing far-end flux,

$$
\frac{dQ}{dx}=\lim_{z\to0}j_z=\frac{9i}{4}(\mathfrak c_{1,+}-\mathfrak c_{1,-})a(x)^2.
$$

Thus the chiral coefficients must agree. The $i$ belongs to Euclidean complex-null conventions. The claim that all higher-derivative rank-four currents reduce to this ansatz is outlined but explicitly deferred to a companion paper; it remains conditional here.

# Toda extension and use in AdS calculations

The source assumes no constant-orthogonal block decomposition of the multi-scalar Hessian and imposes a rank-three current. It announces

$$
W=\sum_{a=1}^N\mu_a(e^{b\alpha_a\cdot\phi}-1)-\frac2b\rho\cdot\phi,
\quad\alpha_a\cdot\alpha_b=C^{A_N}_{ab},\quad b^2\sum_a\mu_a\alpha_a=2\rho.
$$

Here $b\ne0$, the last relation imposes the vacuum and $\rho$ is the Weyl vector. Dotting with roots yields $b^2\mu=2C^{-1}\mathbf1$. The scalar mass matrix has the spectrum of $\operatorname{diag}(2C^{-1}\mathbf1)C$. Exact finite-rank checks $A_1$–$A_8$ yield $m_j^2=j(j+1)$, hence standard dimensions $\Delta_j=j+1$. They do not prove the full current classification. General multi-scalar BG identities and rationality proofs are deferred by the source.

The reusable calculation is exchange-plus-contact cancellation, with kernel normalization, quantization and flux conditions stated. This tuned AdS$_2$ scalar system is not the AdS$_3$ gravitational $K_4$ operator. Do not infer a physical primary energy shift from a single compressed matrix element without mixing and descendant analysis. Log cancellation constrains accessible OPE energy data in the stated sector.

# Verification ledger

- **Checked — Mathematica:** $LK_i=0$, $L(k_i k_j)=4s_{ij}K_iK_j$, creation-operator commutator on an arbitrary function, nonlinear generating identity, both reduced potential equations, Taylor couplings $n=3,\ldots,12$, reduced chiral cancellation and $9i/4$ flux coefficient.
- **Checked — Mathematica:** $D_{222}(0,1,\infty)=3\pi/8$. With the third insertion at infinity the integrand is $z^4/[(z^2+x^2)^2(z^2+(x-1)^2)^2]$. Integrating $x$ first with $z>0$ gives $\pi z(1+20z^2)/(1+4z^2)^3$, then the exact result.
- **Checked — Sage:** complete unordered-partition BG equation residuals vanish for 2–5 labels at fixed distinct $x_i=i$, symbolic bulk $x,z$, $g_3=1$. Toda characteristic-polynomial comparisons pass for $A_1$–$A_8$; these are finite checks.
- **Checked — xAct/xCoba:** the metric has $R=-2$, $\Gamma^z_{zz}=-1/z$, $\Gamma^z_{xx}=1/z$. This checks conventions, not the full 26-function reduction.
- **Source-derived:** arbitrary-multiplicity proof, bounded-solution uniqueness, full four/five-point log extraction, improvements and descendant classification. Main TeX and supplements read in full; PDF page 3 visually confirms Eqs. (13)–(22).
- **Blocked:** no access or service blocker remains. Explicit arbitrary-$\Delta$ recursion coefficients, full higher-derivative reduction and general Toda recursions are absent from this release; the corresponding complete classifications remain unverified.
- **Failed:** no source contradiction established. An initial multidimensional Mathematica integration returned `Integrate::idiv`; integrating $x$ first with $z>0$ resolved the computation artifact.
- **Not independently verified:** all-loop rationality, the full tensor coefficient elimination, classification beyond the displayed ansatz, and equivalence with factorized scattering.

Verified: the explicit checks above. Assumptions: unit-radius Euclidean AdS$_2$, distinct insertions, standard boundary quantization, tree approximation, canonical analytic scalar potential and the regular Green solution. Not verified: the residual source-dependent proofs and announced extensions.
