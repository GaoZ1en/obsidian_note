# angular momentum

$$\tag{2.1}
\begin{align}
[L_{i},L_{j}] & =i\varepsilon _{ijk}L_{k}
\end{align}
$$

define

$$\tag{2.2}
\begin{align}
L_{\pm} & =L_{1}\pm iL_{2}, & L_{0}=2L_{3} \\
\vec{L}^{2} & =L_{1}^{2}+L_{2}^{2}+L_{3}^{2}
\end{align}
$$

we have

$$\tag{2.3}
\begin{align}
[L_{+},L_{-}] & =L_{0} \\
[L_{0},L_{\pm}] & =\pm 2L_{\pm} \\
[\vec{L}^{2},L_{i}] & =0
\end{align}
$$

let's denote by $\displaystyle{v_{\lambda}}$ an eigenvector of $\displaystyle{L_{0}}$ to the eigenvalue/weight $\displaystyle{\lambda}$

$$\tag{2.4}
\begin{align}
L_{0}v_{\lambda} & =\lambda v_{\lambda}
\end{align}
$$

next we consider

$$\tag{2.5}
\begin{align}
L_{0}L_{\pm}v_{\lambda} & =(\lambda\pm 2)L_{\pm}v_{\lambda}
\end{align}
$$

thus $\displaystyle{L_{\pm}v_{\lambda}}$ are eigenvectors of $\displaystyle{L_{0}}$ with eigenvalue $\displaystyle{\lambda\pm2}$. all irreducible representations of $\displaystyle{\mathrm{SO(3)}}$ are finite-dimensional 

---

*Peter-Weyl theorem* states that:
1. all irreducible unitary representations are finite dimensional
2. these finite-dimensional irreps form a complete orthogonal system for $L^2(G)$
3. every continuous representation can be decomposed into finite-dimensional irreps

---

so there must be a maximal weight $\displaystyle{\Lambda}$, such that

$$\tag{2.6}
\begin{align}
L_{+}v_{\Lambda} & =0
\end{align}
$$

iterating $\displaystyle{L_{-}}$ on $\displaystyle{v_{\Lambda}}$, we define

$$\tag{2.7}
\begin{align}
v_{\Lambda-2n}= L_{-}^{n}v_{\Lambda}
\end{align}
$$

and suppose $\displaystyle{v_{\Lambda-2N}}$ is the lowest weight vector, we have

$$\tag{2.8}
\begin{align}
L_{-}v_{\Lambda-2N} & =0
\end{align}
$$

then we can determine the possible values of $\displaystyle{\Lambda}$ by

$$\tag{2.9}
\begin{align}
0=L_{+}L_{-}v_{\Lambda-2N} & =L_{0}v_{\Lambda-2N}+L_{-}L_{+}L_{-}^{N}v_{\Lambda} \\
 & =(N(\Lambda-N+1)+\Lambda-2N)v_{\Lambda-2N} \\
\implies \Lambda & =N\in \mathbb{N}
\end{align}
$$

so the dimension of the irrep is $\displaystyle{N+1}$. 

# free scalar field

consider the following Lagrangian in 1+1 dimension, with $\displaystyle{x}$ being compactified on a circle of radius $\displaystyle{1}$

$$\tag{2.10}
\begin{align}
L & =-\eta ^{\mu \nu}\frac{1}{2}\partial _{\mu}\phi ^{i}\partial _{\nu}\phi _{i}-V(\phi)
\end{align}
$$

here $\displaystyle{\phi ^{i}}$ $\displaystyle{i=1,\dots,N}$ are bosons. make the following mode expansion

$$\tag{2.11}
\begin{align}
\phi ^{j}(x) & =a^{j}_{0}+\sum _{n\in \mathbb{Z}-\left\{0\right\}} \frac{1}{n}a^{j}_{n}e^{2\pi inx}
\end{align}
$$

then we have the following commutation relations

$$\tag{2.12}
\begin{align}
[a^{i}_{n},a^{j}_{m}] & =n\delta ^{ij}\delta _{n+m,0}
\end{align}
$$

the Heisenberg algebra is exactly the case $\displaystyle{N=1}$