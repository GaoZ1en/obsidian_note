---
paper id: 2608.02731v1
title: BRST Quantization of Carroll-Weyl Gauged Null Strings
authors:
  - Sarthak Duary
  - Sourav Maji
publication date: 2026-08-03T18:00
abstract: |-
  The paper quantizes a Carroll-Weyl gauged null-string model with three first-class constraints. Its semidirect current algebra produces a non-diagonal ghost sector, and three independent quantum anomalies require mutually incompatible target dimensions, obstructing BRST nilpotency in the chosen representation.
comments: "39 pages plus 18 pages of appendices"
url: https://arxiv.org/abs/2608.02731v1
summary: "A controlled example in which an extra Weyl moment-map constraint creates an unavoidable three-cocycle BRST anomaly vector."
tags: []
---

Back to [[2026_08_05_overview]].

The useful mechanism is a three-way consistency check:

$$\begin{align}
\text{semidirect constraint algebra} \longleftrightarrow
\text{off-diagonal Faddeev–Popov operator} \longleftrightarrow
\text{cubic BRST ghost vertex}.
\end{align}$$

All three encode the same bracket $[S,M]=2M$. This is why the third constraint changes the anomaly problem rather than merely adding a decoupled ghost pair.

## Carroll-Weyl Gauging and the Third Constraint

Starting from the first-order tensionless string, the usual null constraints are

$$\begin{align}
C_1=P^2, \qquad C_2=P\cdot X'.
\end{align}$$

Carroll-Weyl covariance replaces $\partial_aX$ by

$$\begin{align}
D_aX=\partial_aX+W_aX,
\end{align}$$

with transformations

$$\begin{align}
X\mapsto e^\chi X, \qquad V^a\mapsto e^{-\chi}V^a, \qquad W_a\mapsto W_a-\partial_a\chi.
\end{align}$$

Variation with respect to the Weyl connection imposes

$$\begin{align}
C_3=P\cdot X.
\end{align}$$

Thus this is a new constrained system with reduced physical phase-space dimension $2(D-3)$, not a gauge choice for the ordinary two-constraint null string.

In the paper's current basis

$$\begin{align}
M=\frac12C_1, \qquad L=-C_2, \qquad S=C_3, \tag{3.21}
\end{align}$$

the modes obey

$$
\begin{aligned}
[L_m,L_n]&=(m-n)L_{m+n},
& [L_m,M_n]&=(m-n)M_{m+n},\\
[L_m,S_n]&=-nS_{m+n},
& [S_m,M_n]&=2M_{m+n},
\end{aligned}
\tag{3.22}
$$

with $[M_m,M_n]=[S_m,S_n]=0$. The last nonzero bracket is the decisive semidirect-product datum.

## Gauge Fixing and the Non-Diagonal Ghost System

For gauge conditions

$$\begin{align}
G_0=V^0-1, \qquad G_1=V^1, \qquad G_s=V^aW_a,
\end{align}$$

the Faddeev–Popov operator is

$$
\mathcal M_{\mathrm{CW}}=
\begin{pmatrix}
-\frac12\partial_\tau&\frac12\partial_\sigma&-1\\
0&-\partial_\tau&0\\
0&0&-\partial_\tau
\end{pmatrix}.
\tag{3.27}
$$

The off-diagonal $-1$ produces

$$\begin{align}
S_{bcs}=\frac{i}{2\pi}\int d\tau d\sigma \left( c^0\partial_\tau b_0-c^1\partial_\sigma b_0 +2c^1\partial_\tau b_1+s\partial_\tau b_s-2sb_0 \right). \tag{3.28}
\end{align}$$

Although the extra entry does not change the triangular determinant, the term $-2sb_0$ becomes the cubic vertex

$$\begin{align}
2:s\tilde b\tilde c:
\end{align}$$

in the BRST current. Dropping it would destroy the correspondence with $[S,M]=2M$.

The ghost content is two weight-$(2,-1)$ systems, $(b,c)$ and $(\tilde b,\tilde c)$, and one weight-$(1,0)$ system $(r,s)$.

## Matter and Ghost Anomaly Vectors

In the highest-weight/flipped representation, the matter currents are

$$\begin{align}
T^X=-:P\partial X:, \qquad M^X=\frac12:P^2:, \qquad S^X=:XP:.
\end{align}$$

Their central data are

$$\begin{align}
(c_{LL},c_{LS},c_{SS})_X=(2D,-D,-D). \tag{4.36}
\end{align}$$

The semidirect algebra fixes the ghost currents, including

$$\begin{align}
S^{\mathrm{gh}}=2:\tilde b\tilde c:+\partial:cr:,
\end{align}$$

$$\begin{align}
M^{\mathrm{gh}} =:c\partial\tilde b: +2:s\tilde b: +2:(\partial c)\tilde b:,
\end{align}$$

and gives

$$\begin{align}
(c_{LL},c_{LS},c_{SS})_{\mathrm{gh}}=(-54,6,4). \tag{4.64}
\end{align}$$

Here $-54=-26-26-2$, while the mixed and affine entries depend on the nontrivial semidirect ghost sector.

The total anomaly vector is therefore

$$\begin{align}
(c_{LL},c_{LS},c_{SS})_{\mathrm{tot}} =(2D-54,6-D,4-D). \tag{4.66–4.68}
\end{align}$$

## BRST Square and Incompatible Dimensions

The local BRST current contains

$$
\begin{aligned}
j_B={}&:cT^X:+:sS^X:+:\tilde cM^X:
+:bc\partial c:+:rc\partial s: \\
&+:\tilde bc\partial\tilde c:
+:\tilde b\tilde c\partial c:
+2:s\tilde b\tilde c: .
\end{aligned}
\tag{5.7}
$$

It acts on the antighosts as

$$\begin{align}
\{Q,b\}=T^{\mathrm{tot}}, \qquad \{Q,\tilde b\}=M^{\mathrm{tot}}, \qquad \{Q,r\}=S^{\mathrm{tot}}.
\end{align}$$

Jacobi permits three genuine central sectors: the $LL$ Virasoro cocycle, the mixed $LS$ cocycle, and the affine $SS$ level. An independent $LM$ cocycle is removed by the Jacobi identity involving $(S_0,L_m,M_n)$.

The central BRST square is

$$
\begin{aligned}
Q^2_{\mathrm{cent}}={}&
\frac{c_{LL}}{24}\sum_m m(m^2-1)c_{-m}c_m\\
&+\frac{c_{LS}}4\sum_m m(m+1)
\bigl(c_{-m}s_m-s_{-m}c_m\bigr)
+\frac{c_{SS}}2\sum_m m\,s_{-m}s_m
+Q^2_{\mathrm{zero}}.
\end{aligned}
\tag{5.41}
$$

Because the $cc$, $cs$, and $ss$ ghost bilinears are independent, nilpotency requires

$$\begin{align}
2D-54=0, \qquad D-6=0, \qquad 4-D=0.
\end{align}$$

Their roots are $D=27,6,4$, respectively, so no common dimension exists.

## Exact Claim Boundary

The result concerns the minimal flat matter-plus-three-ghost complex in the chosen highest-weight/flipped representation and point-splitting prescription. It does not show that the classical Carroll-Weyl model is inconsistent, that a reduced/light-cone quantization is empty, or that the same obstruction occurs in an induced vacuum. The separate numbers $27,6,4$ are zero loci of different anomaly classes; none is a critical dimension of the full theory. Even if the nonzero-mode cocycles vanished, the intercept term $Q^2_{\mathrm{zero}}$ would still require treatment.

For later use, an additional matter sector would need to supply three independent deficits,

$$\begin{align}
\Delta c_{LL}=54-2D, \qquad \Delta c_{LS}=D-6, \qquad \Delta c_{SS}=D-4.
\end{align}$$

An algebra-neutral spectator cannot generically do this.

## Verification Note

- **Checked with Mathematica:** the three anomaly equations have no common solution; their individual roots are exactly $27,6,4$.
- **Source-derived:** the phase-space bracket signs, FP operator, double contractions, ghost-current coefficients, Jacobi recurrence, and mode polynomial in $Q^2$ were reconstructed from the paper but not independently recomputed term by term.
- **Use boundary:** the note records a BRST obstruction in one quantum complex, not a claim about all null-string quantizations.
