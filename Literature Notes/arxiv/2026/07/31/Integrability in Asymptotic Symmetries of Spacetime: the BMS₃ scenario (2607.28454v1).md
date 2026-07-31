---
paper id: 2607.28454v1
title: "Integrability in Asymptotic Symmetries of Spacetime: the BMS₃ scenario"
authors:
  - Corentin Vitel
publication date: 2026-07-30T16:19
abstract: |-
  The paper constructs compatible Poisson operators and integrable hierarchies from the centrally extended BMS₃ algebra. The BMS₃ Lie--Poisson tensor and a frozen constant tensor define a Poisson pencil, whose Lenard recursion produces coupled KdV-type flows; the construction is related to an AdS₃ double-KdV contraction and to an energy-dependent Schrödinger hierarchy.
comments: "30 pages, 1 figure. Comments are welcome"
url: https://arxiv.org/abs/2607.28454v1
summary: "A useful algebra-to-hierarchy mechanism in which the BMS₃ cocycle becomes both dispersion and a compatible frozen Poisson tensor, though the physical gravitational phase space is inherited rather than derived."
tags: []
---

Back to [[2026_07_31_overview]].

The paper begins with the centrally extended asymptotic-symmetry algebra and turns it into a Poisson pencil. This is technically useful for understanding integrable boundary dynamics, but it does not derive the BMS phase space, charges, or symplectic form from the Einstein action.

## BMS₃ coadjoint data

The algebra is

\[
\mathrm{BMS}_3
=\mathrm{Diff}(S^1)
\ltimes_{\mathrm{Ad}}
\mathrm{Vect}(S^1)_{\rm ab},
\tag{12}
\]

with the Gelfand--Fuks central extension. Its regular dual is represented by

\[
(j\,dx^2,c_1;\,p\,dx^2,c_2),
\tag{18}
\]

where \(j\) is angular supermomentum and \(p\) is supermomentum. For a superrotation \(X\) and supertranslation \(\alpha\),

\[
\delta j
=Xj'+2jX'-c_1X'''
+\alpha p'+2p\alpha'-c_2\alpha''',
\]

\[
\delta p
=Xp'+2pX'-c_2X'''.
\tag{20}
\]

The asymptotically flat gravitational specialization is

\[
c_1=0,\qquad
c_2=\frac3G.
\]

The central term is not decorative: it supplies the third-derivative dispersion in the hierarchy.

## From the cocycle to a Poisson pencil

The paper works with differential polynomials modulo total \(x\)-derivatives. Let

\[
\mathcal J_i
=-c_i\partial^3+2u_i\partial+u_i'.
\tag{42}
\]

The field-dependent and constant Hamiltonian operators are

\[
\mathcal E
=
\begin{pmatrix}
\mathcal J_1&\mathcal J_2\\
\mathcal J_2&0
\end{pmatrix},
\qquad
\mathcal D
=
\begin{pmatrix}
\mathbf1_{c_1\neq0}\partial&
\mathbf1_{c_2\neq0}\partial\\
\mathbf1_{c_2\neq0}\partial&0
\end{pmatrix}.
\tag{41}
\]

With \(u_1=j,u_2=p\), the physical flat-gravity pair is

\[
\mathcal E_{\rm flat}
=
\begin{pmatrix}
2j\partial+j'&
-\frac3G\partial^3+2p\partial+p'\\
-\frac3G\partial^3+2p\partial+p'&0
\end{pmatrix},
\]

\[
\mathcal D_{\rm flat}
=
\begin{pmatrix}
0&\partial\\
\partial&0
\end{pmatrix}.
\]

\(\mathcal E\) is the BMS\(_3\) Lie--Poisson operator. \(\mathcal D\) is obtained by freezing it at a fixed coadjoint element. Compatibility follows from the Gelfand--Dorfman construction.

The main transferable mechanism is therefore

\[
\text{central extension}
\longrightarrow
\begin{cases}
\text{dispersive part of }\mathcal E,\\
\text{compatible constant tensor }\mathcal D.
\end{cases}
\]

This is an algebraic construction on the regular dual. It assumes that the relevant gravitational boundary conditions and charge bracket have already produced the BMS\(_3\) coadjoint data.

## Lenard recursion and the first coupled KdV flow

The hierarchy is defined by

\[
\mathcal K_n
=\mathcal E\,d\mathcal H_{n-1}
=\mathcal D\,d\mathcal H_n.
\tag{21}
\]

A \(\mathcal D\)-Casimir seed is

\[
\mathcal H_{-1}
=\int (b\,u_1+a\,u_2).
\]

For the physical case \(c_1=0\) and the seed \(a=0,b=1\),

\[
\mathcal H_{-1}=\int j,
\qquad
\mathcal K_0=(j',p'),
\]

\[
\mathcal H_0=\int jp.
\]

Acting with \(\mathcal E_{\rm flat}\) on

\[
d\mathcal H_0=(p,j)
\]

gives

\[
\mathcal K_1
=
\begin{pmatrix}
-c_2j'''+3(jp)'\\
-c_2p'''+3pp'
\end{pmatrix},
\qquad
c_2=\frac3G.
\tag{43--44}
\]

The \(p\) equation is KdV-type; the \(j\) equation is its semidirect companion. The alternative \(b=0\) seed produces a second commuting sequence.

Mathematica independently applied the displayed operator to \(d\mathcal H_0\) and obtained zero residual against both components above. This verifies the first flow, not the full induction.

## Formal recursion and master symmetries

The formal recursion operator is

\[
\mathcal R=\mathcal E\mathcal D^{-1}.
\]

For the generic case with both central indicators nonzero, the paper uses an exact pencil:

\[
\mathcal L_X\mathcal E=\mathcal D,
\qquad
X=\frac12\partial_{u_1}
+\frac12\partial_{u_2}.
\tag{46}
\]

It constructs \(Y=\mathcal RX\) with

\[
\mathcal L_Y\mathcal R=\mathcal R,
\]

and master symmetries

\[
Y_n=\mathcal R^{n+1}X
\]

forming the positive half of a Virasoro algebra with zero central charge.

The appendix's locality argument shows that apparently nonlocal \(\partial^{-1}\) terms become total derivatives in its chosen recursion, Eqs. 90--95. But this proof uses the generic constant tensor

\[
\begin{pmatrix}
\partial&\partial\\
\partial&0
\end{pmatrix}
\]

and a specific \(a=b=1\) seed. It does not by itself prove the full claim for every indicator choice, arbitrary seed, or the physical \(c_1=0\) tensor.

For \(c_1=0,c_2=3/G\), the paper instead presents a nonlocal \(\tau\)-scheme:

\[
\mathcal K_{n+1}
=[\tau,\mathcal K_n],
\tag{47}
\]

\[
\mathcal L_\tau\mathcal D=-4\mathcal E,
\]

and

\[
\mathcal H_{n+1}
\propto(\tau,d\mathcal H_n).
\tag{54}
\]

This reproduces the two displayed commuting families, but its inverse derivatives require a zero-mode prescription.

## AdS₃ double KdV and flat contraction

The AdS algebra is

\[
\mathfrak{vir}\oplus\mathfrak{vir},
\]

which gives two diagonal KdV pencils. The contraction is

\[
X_m=x_m-\bar x_m,
\qquad
\alpha_m=l^{-1}(x_m+\bar x_m).
\tag{63}
\]

Taking \(l\to\infty\),

\[
c_1=\lim(c-\bar c)=0,
\qquad
c_2=\lim l^{-1}(c+\bar c)=\frac3G,
\]

and the contracted operators reproduce the flat BMS\(_3\) pencil, Eqs. 64--65.

This makes the coupled flat hierarchy a controlled contraction of the double-KdV AdS boundary dynamics, rather than an unrelated PDE ansatz.

## Lie--Poisson and frozen brackets

The Lie--Poisson bracket evaluated on \(\mathfrak{bms}_3^*\) yields \(\mathcal E\), Eqs. 66--69. Freezing it at

\[
m_0
=
\left(
\mathbf1_{c_1\neq0}\frac12dx^2,0;
\frac12dx^2,0
\right)
\tag{71}
\]

gives \(\mathcal D\). In the physical case,

\[
m_0
=(0,0;\tfrac12dx^2,0),
\]

\[
\mathcal D
=
\begin{pmatrix}
0&\partial\\
\partial&0
\end{pmatrix}.
\tag{75}
\]

Each flow can then be written as both an ordinary and a frozen Lie--Poisson Hamiltonian flow. This is the clean geometric explanation of the bi-Hamiltonian structure.

The paper also introduces a four-parameter \(H^1\) inertia operator and proposes fifteen codimension-four orbit classes leading to additional hierarchies. This orbit classification is explicitly conjectural and should not be treated as established.

## Energy-dependent Schrödinger hierarchy

The spectral operator is

\[
\mathbb L
=
\left(\sum_{i=0}^2a_i\lambda^i\right)\partial_x^2
+\sum_{i=0}^2u_i(x)\lambda^i.
\tag{78}
\]

For a Lax operator

\[
\mathbb P=\mathcal A\partial_x+\mathcal B,
\]

compatibility gives

\[
\mathcal J_0A_{k-2}
+\mathcal J_1A_{k-1}
+\mathcal J_2A_k=0.
\tag{83}
\]

Closure requires

\[
u_2=-1,\qquad a_2=0.
\]

The flow operator in Eq. 84 becomes the BMS\(_3\) Lie--Poisson tensor after permuting components, and

\[
(u_1,u_0)_{t_m}
=
\operatorname{ad}_{\mathfrak{bms}_3}^*
(A_m,A_{m-1})
\cdot
(u_1,-a_1/2;\,u_0,-a_0/2).
\tag{85}
\]

The quotient

\[
\mathcal L(\mathfrak{vir})_+
/
{}_r\lambda^2\mathcal L(\mathfrak{vir})_+
\simeq
\mathfrak{bms}_3
\tag{89}
\]

suggests an \(r\)-matrix origin. The paper explicitly says that the energy-dependent and BMS hierarchies do not fully coincide; the former may be only a reduction.

## Transfer value and exact scope

For the asymptotic-symmetry project, the reusable chain is

\[
\text{charge algebra}
\to
\text{regular dual}
\to
\text{Lie--Poisson tensor}
\to
\text{frozen compatible tensor}
\to
\text{Lenard hierarchy}.
\]

The paper begins at the second arrow. It does not reconstruct:

\[
S_{\rm EH}
\to\delta S_{\rm EH}
\to\theta
\to\omega
\to Q_{(X,\alpha)}
\to\{Q,Q\}_{\rm BMS_3}.
\]

Thus it cannot determine which hierarchy is selected by a particular gravitational variational principle, boundary term, or ensemble.

All fields are smooth and periodic on \(S^1\), and total derivatives are discarded. Every \(\partial^{-1}\) requires removal of constant modes or a chosen zero-mean primitive; \(\mathcal D^{-1}\) is not an inverse on all periodic functions. The exact-pair proof assumes \(c_1\neq0\), while physical flat gravity has \(c_1=0\). The claim that \(\theta_2-\iota_2\partial^2\) is nondegenerate whenever \(\theta_2\neq0\) also needs the stronger spectral condition

\[
\theta_2+\iota_2n^2\neq0
\qquad
\text{for every }n\in\mathbb Z.
\]

Equation 53 has inconsistent Hamiltonian subscripts. The full Jacobi/compatibility calculation, Lenard induction, \(\tau\)-generator identities, Lax compatibility, and conjectural orbit classification were source-read and visually checked where central, but not independently reproduced.
