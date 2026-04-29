# problem 1

suppose $\displaystyle{\mathcal{E}(3)=\mathbb{R}^{3}\oplus _{s} \mathfrak{so}(3)}$, choose $\displaystyle{\left\{\hat{i},\hat{j},\hat{k},J_{x},J_{y},J_{z}\right\}}$ as the basis of $\displaystyle{\mathcal{E}(3)}$. calculate the structure constant.

## solution

we denote $\displaystyle{\hat{e}_{1,2,3}}$ as $\displaystyle{\hat{i},\hat{j},\hat{k}}$ and $\displaystyle{J_{1,2,3}}$ as $\displaystyle{J_{x},J_{y},J_{z}}$ respectively. then we have

$$\begin{align}
[\hat{e}_{i},\hat{e}_{j}] & =0 \\
[J_{i},J_{j}] & =i\varepsilon _{ijk}J_{k} \\
[J_{i},\hat{e}_{j}] & =i\varepsilon _{ijk}\hat{e}_{k}
\end{align}$$

all other brackets vanishes.

# problem 2

suppose $\displaystyle{\mathfrak{g}}$ is a Lie algebra. $\displaystyle{\forall X \in \mathfrak{g}}$, define the adjoint action $\displaystyle{\mathrm{ad}_{X}:\mathfrak{g}\to \mathfrak{g}}$ as $\displaystyle{\mathrm{ad}_{X}(Y)\equiv[X,Y]}$. prove that

$$\begin{align}
\mathrm{ad}:\mathfrak{g} & \to \mathfrak{gl}(\mathfrak{g}) \\
X & \mapsto \mathrm{ad}_{X}
\end{align}$$

is a Lie algebra homomorphism, which is called the adjoint rep. choose $\displaystyle{\left\{x_{i}\right\}}$ as the basis of $\displaystyle{\mathfrak{g}}$, and $\displaystyle{C^{k} _{ij}}$'s are the corresponding structure constants. calculate the matrix form of the adjoint rep. in this basis.

## solution

we only need to verify that

$$\begin{align}
[\mathrm{ad}_{X},\mathrm{ad}_{Y}] & =\mathrm{ad}_{[X,Y]}\quad \forall X,Y\in \mathfrak{g}
\end{align}$$

indeed, $\displaystyle{\forall Z\in \mathfrak{g}}$, we have

$$\begin{align}
[\mathrm{ad}_{X},\mathrm{ad}_{Y}](Z) & =\mathrm{ad}_{X}\mathrm{ad}_{Y}Z-\mathrm{ad}_{Y}\mathrm{ad}_{X}Z \\
 & = [X,[Y,Z]]-[Y,[X,Z]] \\
 & =[[X,Y],Z] \\
 & =\mathrm{ad}_{[X,Y]}Z
\end{align}$$

we have

$$\begin{align}
\mathrm{ad}_{x_{i}}x_{j} & =[x_{i},x_{j}]=C_{ij}^{k}x_{k} \\
\implies (\mathrm{ad}_{x_{i}})_{j}^{k} & =C_{ij}^{k}
\end{align}$$

# problem 3

calculate the Cartan-Killing form of $\displaystyle{\mathcal{E}(3)}$ and Lorentz group.

## solution

we have

$$\begin{align}
B_{AB} & =C_{AD}^{C}C_{BC}^{D}
\end{align}$$

for $\displaystyle{\mathcal{E}(3)}$, choose the generators as $\displaystyle{\left\{\hat{i},\hat{j},\hat{k},J_{x},J_{y},J_{z}\right\}}$, we have

$$\begin{align}
B & =\begin{pmatrix}
0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 0 & 0 & 0 \\
0 & 0 & 0 & 4 & 0 & 0 \\
0 & 0 & 0 & 0 & 4 & 0 \\
0 & 0 & 0 & 0 & 0 & 4
\end{pmatrix}
\end{align}$$

for Lorentz group, choose the generators as $\displaystyle{J_{x},J_{y},J_{z},K_{x},K_{y},K_{z}}$ with algebra

$$\begin{align}
[J_{i},J_{j}] & =i\varepsilon _{ijk}J_{k} \\
[J_{i},K_{j}] & =i\varepsilon _{ijk}K_{k} \\
[K_{i},K_{j}] & =-i\varepsilon _{ijk}J_{k}
\end{align}$$

then we have

$$\begin{align}
B & =\begin{pmatrix}
4 & 0 & 0 & 0 & 0 & 0 \\
0 & 4 & 0 & 0 & 0 & 0 \\
0 & 0 & 4 & 0 & 0 & 0 \\
0 & 0 & 0 & -4 & 0 & 0 \\
0 & 0 & 0 & 0 & -4 & 0 \\
0 & 0 & 0 & 0 & 0 & -4
\end{pmatrix}
\end{align}$$
