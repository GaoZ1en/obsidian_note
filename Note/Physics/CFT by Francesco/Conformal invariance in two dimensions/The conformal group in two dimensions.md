## conformal mappings

it is convenient to introduce the complex coordinates $\displaystyle{z}$ and $\displaystyle{\bar{z}}$ with

$$\tag{4.1.1}
\begin{align}
z & =z^{0}+iz^{1},\bar{z}=z^{0}-iz^{1} \\
\partial & =\partial_{z}=\frac{1}{2}(\partial_{0}-i\partial_{1}),\bar{\partial}=\partial_{\bar{z}}=\frac{1}{2}(\partial_{0}+i\partial_{1}) \\
z^{0} & =\frac{1}{2}(z+\bar{z}),z^{1}=\frac{1}{2i}(z-\bar{z}) \\
\partial_{0} & =\partial+\bar{\partial},\partial_{1}=\partial-\bar{\partial}
\end{align}
$$

in terms of the coordinates $\displaystyle{z}$ and $\displaystyle{\bar{z}}$, the metric tensor is

$$\tag{4.1.2}
\begin{align}
g_{\mu \nu}=\frac{1}{2}\begin{pmatrix}0 & 1 \\1 & 0\end{pmatrix}, g^{\mu \nu} & =2\begin{pmatrix}0 & 1 \\1 & 0\end{pmatrix}
\end{align}
$$

where the index $\displaystyle{\mu}$ takes values $\displaystyle{z}$ and $\displaystyle{\bar{z}}$. the antisymmetric tensor $\displaystyle{\varepsilon_{\mu \nu}}$ is

$$\tag{4.1.3}
\begin{align}
\varepsilon_{\mu \nu} & =\frac{i}{2}\begin{pmatrix}0 & 1 \\-1 & 0\end{pmatrix},\varepsilon^{\mu \nu}=2i\begin{pmatrix}0 & -1 \\1 & 0\end{pmatrix}
\end{align}
$$

in this language, the condition for a coordinate transformation to be a conformal transformation is the Cauchy-Riemann equation

$$\tag{4.1.4}
\begin{align}
\partial_{\bar{z}}w(z,\bar{z}) & =0
\end{align}
$$

with solution is any holomorphic mapping $\displaystyle{z\to w(z)}$. 

remark: complex variable $\displaystyle{z}$ and $\displaystyle{\bar{z}}$ should be considered to be independent. and the physical space is the two-dimensional submanifold defined by $\displaystyle{\bar{z}=z^{*}}$

## global conformal transformations

conformal transformation defined by (4.1.4) is purely local. we must distinguish global conformal transformations, which are invertible and map the Riemann sphere into itself. the set of global conformal transformations form the special conformal group, with group elements take the form

$$\tag{4.1.5}
\begin{align}
f(z) & =\frac{az+b}{cz+d} & ad-bc=1
\end{align}
$$

where $\displaystyle{a,b,c,d}$ are complex numbers. these mappings are called projective transformations, and to each of them we can associate the matrix

$$\tag{4.1.6}
\begin{align}
A=\begin{pmatrix}a & b \\c & d\end{pmatrix}
\end{align}
$$

we can easily verify that the composition of two maps $\displaystyle{f_{1}\circ f_{2}}$ corresponds to the matrix multiplication $\displaystyle{A_{2}A_{1}}$. therefore, the global conformal group in two dimensions is isomorphic to the group $\displaystyle{\mathrm{SL}(2,\mathbb{C})}$, which is isomorphic to the Lorentz group in four dimensions, that is $\displaystyle{\mathrm{SO}(3,1)}$. 

## conformal generators

any holomorphic infinitesimal transformation may be expressed as

$$\tag{4.1.7}
\begin{align}
z' & =z+\varepsilon(z), & \varepsilon(z)=\sum^{\infty}_{n=-\infty}c_{n}z^{z+1}
\end{align}
$$

then for spinless and dimensionless field $\displaystyle{\phi(z,\bar{z})}$, it transforms as 

$$\tag{4.1.8}
\begin{align}
\phi'(z',\bar{z}') & =\phi(z,\bar{z}) \\
 & =\phi(z',\bar{z}')-\varepsilon(z')\partial'\phi(z',\bar{z}')-\bar{\varepsilon}'(\bar{z}')\bar{\partial}'\phi(z',\bar{z}') \\
\implies \delta \phi & =-\varepsilon(z)\partial \phi-\bar{\varepsilon}(\bar{z})\bar{\partial}\phi \\
 & =\sum_{n}c_{n}\ell_{n}\phi(z,\bar{z})+\bar{c}_{n}\bar{\ell}_{n}\phi(z,\bar{z})
\end{align}
$$

where we have introduced the generators

$$\tag{4.1.9}
\begin{align}
\ell_{n} & =-z^{n+1}\partial,\bar{\ell}_{n}=-\bar{z}^{n+1}\bar{\partial} \\
\end{align}
$$

which satisfy the following Witt algebra

$$\tag{4.1.10}
\begin{align}
[\ell_{n},\ell_{m}] & =(n-m)\ell_{n+m} \\
[\bar{\ell}_{n},\bar{\ell}_{m}] & =(n-m)\bar{\ell}_{n+m} \\
[\ell_{n},\bar{\ell}_{m}] & =0
\end{align}
$$

it can be seen that $\displaystyle{\ell_{-1},\ell_{0},\ell_{1}}$ generated a subalgebra, which associated with the global conformal group, in which $\displaystyle{\ell_{-1}=-\partial}$ generates translation, $\displaystyle{\ell_{0}=-z\partial}$ generates dilatation and rotations, and $\displaystyle{\ell_{1}=-z^{2}\partial}$ generates special conformal transformations.

finally we point out that the generators that preserve the real surface $\displaystyle{z_{0},z_{1}\in\mathbb{R}}$ are the linear combinations

$$\tag{4.1.11}
\begin{align}
\ell_{n}+\bar{\ell}_{n},i(\ell_{n}-\bar{\ell}_{n})
\end{align}
$$

in particular, $\displaystyle{\ell_{0}+\bar{\ell}_{0}}$ generates dilatations on the real surface, while $\displaystyle{i(\ell_{0}-\bar{\ell}_{0})}$ generates rotations.

## primary fields

in two dimensions, quasi-primary fields contain also fields with spin. given a field with scaling dimension $\displaystyle{\Delta}$ and $\displaystyle{s}$, we define the holomorphic conformal dimension $\displaystyle{h}$ and its antiholomorphic counterpart $\displaystyle{\bar{h}}$ as

$$\tag{4.1.12}
\begin{align}
h=\frac{1}{2}(\Delta+s),\hbar=\frac{1}{2}(\Delta-s)
\end{align}
$$

(what is a quasi-primary field?)

