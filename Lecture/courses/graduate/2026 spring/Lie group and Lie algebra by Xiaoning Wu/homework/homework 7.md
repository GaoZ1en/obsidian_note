# problem

verify that Lie algebra of Lorentz group's double cover consists two copies of $\displaystyle{\mathfrak{su}(2)}$, i.e., $\displaystyle{\mathfrak{so}(4)\cong\mathfrak{su}(2)\oplus \mathfrak{su}(2)}$

## solution

the Lorentz algebra consists six generators, i.e., three rotation generators $\displaystyle{J_{i},i=1,2,3}$ and three boost generators $\displaystyle{K_{i}, i=1,2,3}$, and they satisfies the following algebra

$$\begin{align}
[J_{i},J_{j}] & =i\varepsilon _{ijk}J_{k} \\
[J_{i},K_{j}] & =i\varepsilon _{ijk}K_{k} \\
[K_{i},K_{j}] & =-i\varepsilon _{ijk}J_{k}
\end{align}$$

by defining

$$\begin{align}
A_{i} & =\frac{1}{2}(J_{i}+iK_{i}) \\
B_{i} & =\frac{1}{2}(J_{i}-iK_{i}), \quad i=1,2,3
\end{align}$$

we have

$$\begin{align}
[A_{i},A_{j}] & =\frac{1}{4}[J_{i}+iK_{i},J_{j}+iK_{j}] \\
 & =\frac{i}{2}\varepsilon _{ijk}J_{k}-\frac{1}{2}\varepsilon _{ijk}K_{k} \\
 & =i\varepsilon _{ijk} \frac{1}{2}(J_{k}+iK_{k}) \\
 & =i\varepsilon _{ijk}A_{k}
\end{align}$$

$$\begin{align}
[B_{i},B_{j}] & =\frac{1}{4}[J_{i}-iK_{i},J_{j}-iK_{j}] \\
 & =\frac{i}{2}\varepsilon _{ijk}J_{k}+\frac{1}{2}\varepsilon _{ij k}K_{k} \\
 & =i\varepsilon _{ij k}B_{k}
\end{align}$$

and finally

$$\begin{align}
[A_{i},B_{j}] & =\frac{1}{4}[J_{i}+iK_{i},J_{i}-iK_{j}] \\
 & =0
\end{align}$$
