---
title: "problem"
date: 2026-04-20
summary: "Use the Littlewood-Richardson rule to decompose [3,1] \\otimes [2,1] for SU(3) and verify the dimensions."
---

# problem

Use the Littlewood-Richardson rule to decompose the $SU(3)$ tensor product $[3,1]\otimes[2,1]$ and verify the dimensions.

## solution

let

$$\begin{align}
\lambda=[3,1],\qquad \mu=[2,1].
\end{align}$$

we first apply the Littlewood-Richardson rule in the Young-diagram language for $GL(3)$. the skew tableaux of shape $\nu/\lambda$ with content $\mu=[2,1]$ contain two $1$'s and one $2$. the admissible reverse row-reading words are $112$ and $121$.

the nonzero Littlewood-Richardson coefficients are

| $\nu$ | valid LR word(s) | multiplicity |
| --- | --- | --- |
| $[5,2]$ | $112$ | $1$ |
| $[5,1,1]$ | $112$ | $1$ |
| $[4,3]$ | $121$ | $1$ |
| $[4,2,1]$ | $112,\ 121$ | $2$ |
| $[3,3,1]$ | $112$ | $1$ |
| $[3,2,2]$ | $121$ | $1$ |

therefore

$$\begin{align}
[3,1]\otimes[2,1] = [5,2]\oplus[5,1,1]\oplus[4,3]\oplus 2[4,2,1]\oplus[3,3,1]\oplus[3,2,2].
\end{align}$$

for $SU(3)$, a full column of height $3$ is trivial, so Young diagrams that differ by one such column describe the same irreducible representation. hence

$$\begin{align}
[5,1,1]\sim[4],\qquad
[4,2,1]\sim[3,1],\qquad
[3,3,1]\sim[2,2],\qquad
[3,2,2]\sim[1].
\end{align}$$

thus the $SU(3)$ decomposition is

$$\begin{align}
[3,1]\otimes[2,1] = [5,2]\oplus[4]\oplus[4,3]\oplus 2[3,1]\oplus[2,2]\oplus[1].
\end{align}$$

now verify the dimensions by the hook-length formula. for an $SU(3)$ Young diagram $\lambda$,

$$\begin{align}
\dim(\lambda)=\prod_{(i,j)\in\lambda}\frac{3+j-i}{h_{ij}},
\end{align}$$

where $h_{ij}$ is the hook length of the box $(i,j)$.

for the two factors,

$$\begin{align}
\dim[3,1] = \frac{3}{4}\cdot\frac{4}{2}\cdot\frac{5}{1}\cdot\frac{2}{1} =15,
\end{align}$$

$$\begin{align}
\dim[2,1] = \frac{3}{3}\cdot\frac{4}{1}\cdot\frac{2}{1} =8.
\end{align}$$

for the irreducible summands,

$$\begin{align}
\dim[5,2] = \frac{3}{6}\cdot\frac{4}{5}\cdot\frac{5}{3}\cdot\frac{6}{2}\cdot\frac{7}{1}\cdot\frac{2}{2}\cdot\frac{3}{1} =42,
\end{align}$$

$$\begin{align}
\dim[4] = \frac{3}{4}\cdot\frac{4}{3}\cdot\frac{5}{2}\cdot\frac{6}{1} =15,
\end{align}$$

$$\begin{align}
\dim[4,3] = \frac{3}{5}\cdot\frac{4}{4}\cdot\frac{5}{3}\cdot\frac{6}{1}\cdot\frac{2}{3}\cdot\frac{3}{2}\cdot\frac{4}{1} =24,
\end{align}$$

$$\begin{align}
\dim[3,1]=15,
\end{align}$$

$$\begin{align}
\dim[2,2] = \frac{3}{3}\cdot\frac{4}{2}\cdot\frac{2}{2}\cdot\frac{3}{1} =6,
\end{align}$$

$$\begin{align}
\dim[1] = \frac{3}{1} =3.
\end{align}$$

therefore

$$\begin{align}
42+15+24+2\cdot 15+6+3=120=15\cdot 8.
\end{align}$$

so the decomposition is dimensionally consistent. equivalently,

$$\begin{align}
\mathbf{15}\otimes\mathbf{8} = \mathbf{42}\oplus\mathbf{15}\oplus\mathbf{24}\oplus 2\cdot\mathbf{15}\oplus\mathbf{6}\oplus\mathbf{3}.
\end{align}$$
