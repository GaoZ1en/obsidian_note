---
title: Anomaly Matching by Examples
date: 2026-06-28
summary: "A pedagogical note explaining anomaly matching rules through a toy flavor-symmetry example before returning to the Seiberg-duality anomaly table."
---

# Anomaly Matching by Examples

## 1. What is being counted

Anomaly matching compares the same global-symmetry anomaly computed in two different descriptions of the same infrared theory. The practical rule is:

$$\begin{align}
\text{compute the anomaly from all left-handed Weyl fermions on each side.}
\end{align}$$

Scalars do not contribute. Auxiliary fields do not contribute. Gauge bosons do not contribute to flavor anomalies. Gauginos contribute only when the anomaly involves the $R$-symmetry or gravity, because the gaugino has $R=1$.

For a chiral superfield $\Phi$,

$$\begin{align}
\Phi=(\phi,\psi_\Phi,F),
\end{align}$$

the scalar and the superfield have charge $R_\Phi$, but the fermion has charge

$$\begin{align}
R_{\psi_\Phi}=R_\Phi-1.
\end{align}$$

This shift is the most common source of mistakes in $R$-anomaly computations.

## 2. A toy spectrum

Consider a global symmetry

$$\begin{align}
SU(K)\times U(1)_X.
\end{align}$$

Take the following left-handed Weyl fermions:

$$
\begin{array}{c|cc|c}
\text{field} & SU(K) & U(1)_X & \text{number of spectator copies}\\
\hline
\psi & \square & x & m\\
\chi & \bar\square & y & n\\
\eta & 1 & z & s
\end{array}
$$

Here $m,n,s$ count extra labels that are not acted on by the displayed $SU(K)$. In SQCD examples these are usually color indices or the other flavor-group index.

## 3. Mixed anomaly $U(1)_X[SU(K)]^2$

For $U(1)_X[SU(K)]^2$, one inserts one $U(1)_X$ current and two $SU(K)$ currents. The contribution of one Weyl fermion in representation $r$ is

$$\begin{align}
q_X\,T(r),
\end{align}$$

where

$$\begin{align}
\operatorname{tr}_r(T^aT^b)=T(r)\delta^{ab}.
\end{align}$$

For the fundamental and anti-fundamental of $SU(K)$,

$$\begin{align}
T(\square)=T(\bar\square)=\frac12.
\end{align}$$

Therefore the anti-fundamental has no minus sign in this anomaly:

$$\begin{align}
\mathcal A_{X[SU(K)]^2} =m\,x\,\frac12+n\,y\,\frac12.
\end{align}$$

The singlets $\eta$ do not contribute because they are neutral under $SU(K)$.

The reason there is no factor of $K$ multiplying each fundamental is that $T(\square)=1/2$ already comes from tracing over the $K$ components of the $SU(K)$ representation. Extra multiplicities come only from spectator labels.

## 4. Cubic anomaly $[SU(K)]^3$

For $[SU(K)]^3$, one inserts three $SU(K)$ currents. Now fundamental and anti-fundamental representations have opposite cubic anomaly coefficient:

$$\begin{align}
A(\square)=+1,\qquad A(\bar\square)=-1.
\end{align}$$

Thus the same toy spectrum gives

$$\begin{align}
\mathcal A_{[SU(K)]^3}=m-n.
\end{align}$$

This is the main distinction:

$$
\begin{array}{c|cc}
\text{anomaly} & \square & \bar\square\\
\hline
U(1)[SU(K)]^2 & +\frac12 & +\frac12\\
[SU(K)]^3 & +1 & -1
\end{array}
$$

## 5. Abelian and gravitational anomalies

For a purely Abelian cubic anomaly, every component of a non-Abelian multiplet contributes. Therefore

$$\begin{align}
\mathcal A_{X^3} =Kmx^3+Kny^3+sz^3.
\end{align}$$

For the mixed gravitational anomaly,

$$\begin{align}
\mathcal A_{X\mathrm{grav}^2} =Kmx+Kny+sz.
\end{align}$$

Here the factor $K$ appears because a fundamental of $SU(K)$ contains $K$ Weyl components, and there are no $SU(K)$ generators in the anomaly coefficient to absorb that trace into $T(\square)$.

## 6. A matching toy pair

Now build two spectra that are deliberately patterned after the Seiberg-duality flavor anomaly.

Theory E has

$$
\begin{array}{c|cc|c}
\text{field} & SU(F)_1 & U(1)_B & \text{copies}\\
\hline
Q & \square & 1 & N
\end{array}
$$

Theory M has

$$
\begin{array}{c|cc|c}
\text{field} & SU(F)_1 & U(1)_B & \text{copies}\\
\hline
q & \bar\square & \dfrac{N}{F-N} & F-N\\
M & \square & 0 & F
\end{array}
$$

Assume $F>N$.

### $U(1)_B[SU(F)_1]^2$

In Theory E,

$$\begin{align}
\mathcal A^{(E)}_{B[SU(F)_1]^2} =N(1)\frac12=\frac N2.
\end{align}$$

In Theory M,

$$\begin{align}
\mathcal A^{(M)}_{B[SU(F)_1]^2} =(F-N)\left(\frac{N}{F-N}\right)\frac12 +F(0)\frac12\\
=\frac N2.
\end{align}$$

The anti-fundamental $q$ contributes with the same sign as a fundamental because this is a mixed $U(1)[SU]^2$ anomaly.

### $[SU(F)_1]^3$

In Theory E,

$$\begin{align}
\mathcal A^{(E)}_{[SU(F)_1]^3}=N.
\end{align}$$

In Theory M,

$$\begin{align}
\mathcal A^{(M)}_{[SU(F)_1]^3} =-(F-N)+F=N.
\end{align}$$

The anti-fundamental $q$ now has a minus sign because this is a cubic non-Abelian anomaly. The $F$ copies of $M$ are essential.

## 7. The same example with an $R$-symmetry

Now assign superfield $R$-charges as in the Seiberg-duality table:

$$
\begin{array}{c|cc|c}
\text{superfield} & SU(F)_1 & R_\Phi & \text{copies}\\
\hline
Q & \square & \dfrac{F-N}{F} & N\\
q & \bar\square & \dfrac{N}{F} & F-N\\
M & \square & 2\dfrac{F-N}{F} & F
\end{array}
$$

For the anomaly $U(1)_R[SU(F)_1]^2$, use the fermion charges:

$$\begin{align}
R_{\psi_Q}&=\frac{F-N}{F}-1=-\frac NF,\\
R_{\psi_q}&=\frac NF-1=-\frac{F-N}{F},\\
R_{\psi_M}&=2\frac{F-N}{F}-1=\frac{F-2N}{F}.
\end{align}$$

Theory E gives

$$\begin{align}
\mathcal A^{(E)}_{R[SU(F)_1]^2} =N\left(-\frac NF\right)\frac12 =-\frac{N^2}{2F}.
\end{align}$$

Theory M gives

$$\begin{align}
\mathcal A^{(M)}_{R[SU(F)_1]^2} &=(F-N)\left(-\frac{F-N}{F}\right)\frac12 +F\left(\frac{F-2N}{F}\right)\frac12\\
&=-\frac{N^2}{2F}.
\end{align}$$

This is the same computation as in the homework, but now each term has a direct origin:

$$
\begin{array}{c|c|c|c}
\text{term} & \text{field} & \text{spectator copies} & \text{charge used}\\
\hline
N\left(-\frac NF\right)\frac12 & Q & N & R_{\psi_Q}\\
(F-N)\left(-\frac{F-N}{F}\right)\frac12 & q & F-N & R_{\psi_q}\\
F\left(\frac{F-2N}{F}\right)\frac12 & M & F & R_{\psi_M}
\end{array}
$$

## 8. How to read a Seiberg-duality anomaly table

For each requested anomaly:

1. Decide which global groups appear in the triangle.
2. Cross out all fields neutral under any non-Abelian factor in that anomaly.
3. Replace superfield $R$-charges by fermion charges $R_\psi=R_\Phi-1$.
4. Use $T(\square)=T(\bar\square)=1/2$ for $U(1)[SU]^2$.
5. Use $A(\square)=+1$ and $A(\bar\square)=-1$ for $[SU]^3$.
6. Multiply by spectator multiplicities, such as color or the other flavor index.
7. Add all Weyl-fermion contributions and compare the electric and magnetic answers.

The meson field often looks surprising because it is gauge singlet but not flavor singlet. In magnetic SQCD, $M^i{}_j$ is a fundamental of one flavor group and an anti-fundamental of the other. If the anomaly involves $SU(F)_1$, then the $SU(F)_2$ index gives $F$ spectator copies.
