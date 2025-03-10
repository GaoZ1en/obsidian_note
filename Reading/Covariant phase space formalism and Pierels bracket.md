## Linear PDE theory

Consider a vector bundle $\displaystyle{V\to M}$, and the space of sections $\displaystyle{\Gamma(V)}$. We define the following subspaces of $\displaystyle{\Gamma(V)}$:

$$\tag{2.1}
\begin{align}
\Gamma_{0}(V) & =\left\{\phi \in \Gamma(V)|\text{ supp}\phi \text{ is compact}\right\} \\
\Gamma_{+}(V) & =\left\{\phi \in \Gamma(V)|\text{ supp}\phi \text{ is retarded}\right\} \\
\Gamma_{-}(V) & =\left\{\phi \in \Gamma(V)|\text{ supp}\phi \text{ is advanced}\right\} \\
\Gamma_{SC}(V) & =\left\{\phi \in \Gamma(V)|\text{ supp}\phi \text{ is spacelike compact}\right\}
\end{align}
$$

where **retarded support, advanced support, or spacelike compact support** means, respectively, that $\displaystyle{\mathrm{supp}\phi \subset \overline{I^{+}(K)}}$, $\displaystyle{\mathrm{supp}\phi \subset \overline{I^{-}(K)}}$ or $\displaystyle{\mathrm{supp}\phi \subset \overline{I(K)}}$ for some compact $\displaystyle{K\subset M}$. The corresponding subspaces of the solution space $\displaystyle{\mathcal{S}(F)}$ if $\displaystyle{f[\phi]=0}$ are denoted by

$$\tag{2.2}
\begin{align}
\mathcal{S}_{0,\pm,SC}(F)=\mathcal{S}(F)\cap \Gamma_{0,\pm,SC}(F)
\end{align}
$$

We define the notion of a **Green hyperbolic** PDE system as one that possesses unique advanced and retarded Green functions.

## Jet bundles and the variational bicomplex

Fix a vector bundle $\displaystyle{F\to M}$, with $\displaystyle{\dim M=n}$, with fibers modeled on a vector space $\displaystyle{U}$, and consider an adopted coordinate patch $\displaystyle{\mathbb{R}\times U}$, with coordinates $\displaystyle{(x^{i},u^{a})}$. Extend this patch to a **k-jet patch**  $\displaystyle{\mathbb{R}^{n}\times U\times U^{n_{k}}}$ by adding extra copies of $\displaystyle{U}$, with new coordinates $\displaystyle{(x^{i},u^{a},u^{a}_{i},u^{a}_{ij},\dots,u^{a}_{i_{1}\dots i_{k}})}$, which formally denote the derivatives of $\displaystyle{\partial_{i_{1}\dots i_{k}}\phi^{a}(x)}$ of a section at $\displaystyle{x}$. (For simplicity, we introduce multi-index notation. A multi-index $\displaystyle{I=i_{1}\dots i_{k}}$ replaces the corresponding set of symmetric covariant coordinate indices. The order of this multi-index is given by $\displaystyle{|I|=k}$, with $\displaystyle{|\emptyset|=0}$.)

Since the higher derivatives are symmetric in all indices, the number of extra coordinates is given by $\displaystyle{n_{k}=\sum^{k}_{l=1}\dim S^{k}\mathbb{R}^{n}}$, with $\displaystyle{S^{k}}$ denoting the symmetric tensor product. Given two different coordinate patches on $\displaystyle{F}$, we define the transition maps between the corresponding $\displaystyle{k}$-jet patches according to the usual calculus chain rule applied to higher order derivatives. These $\displaystyle{k}$-jet patches can be glued together into the total space of the **$\displaystyle{k}$-jet bundle** $\displaystyle{J^{k}F\to M}$, which includes $\displaystyle{J^{0}F\simeq F}$

Jet bundles com with natural projections $\displaystyle{J^{k}F\to J^{k-1}M}$, which simply discard all derivatives of order $\displaystyle{k}$. This projection gives $\displaystyle{J^{k}F}$ the structure of an affine bundle over the base $\displaystyle{J^{k-1}F}$, with fibres modeled on the vector bundle $\displaystyle{(F\otimes_{M}S^{k}T^{*}M)^{k-1}\to J^{k-1}F}$. The bundle $\displaystyle{J^{k}F\to J^{k-1}F}$ is affine because, in general, bundle morphisms of $\displaystyle{J^{k}F\to J^{{k-1}}F}$ induced by vector bundle automorphisms of $\displaystyle{F}$ are not linear but affine.

Given a vector bundle $\displaystyle{E\to M}$ it can be pulled back to the $\displaystyle{k}$-jet bundle along the projection $\displaystyle{J^{k}F\to M}$. We introduce a convenient notation for this pullback. We denote by $\displaystyle{(E)^{k}\to J^{k}F}$ the pullback of $\displaystyle{E\to M}$ to $\displaystyle{J^{k}M}$, which then fits into the pullback commutative square

```tikz
\usepackage{tikz-cd}
\begin{document}\begin{tikzcd}
(E)^k \arrow[r] \arrow[d] & E \arrow[d] \\
J^kF \arrow[r] & M
\end{tikzcd}\end{document}
```
Any smooth section $\displaystyle{\phi:M\to F}$ automatically gives rise to its $\displaystyle{k}$-jet prolongation or $\displaystyle{k}$-prolongation $\displaystyle{j^{k}\phi:M\to J^{k}F}$. Namely $\displaystyle{j^{k}\phi}$ is a section of the bundle $\displaystyle{J^{k}F\to M}$ that is defined in a local adapted coordinate patch as

$$\tag{2.3}
\begin{align}
j^{k}\phi(x) & =(x^{i},\phi^{a}(x),\partial_{I}\phi^{a}(x)),|I|\leqslant k
\end{align}
$$

one can think of the $\displaystyle{k}$-prolongation symbol as a differential operator

$$\tag{2.4}
\begin{align}
j^{k}: & \Gamma(F)\to \Gamma(J^{k}F)
\end{align}
$$

of order $\displaystyle{k}$. In fact any differential operator of order $\displaystyle{k}$ can be written as a composition of $\displaystyle{j^{k}}$ with an order 0 operator $\displaystyle{f:J^{k}F\to E}$, such that $\displaystyle{f[\phi]\to f[j^{k}\phi]}$. Further, we can define an $\displaystyle{l}$-prolongation of a differential operator $\displaystyle{f}$ of order $\displaystyle{k}$

$$\tag{2.5}
\begin{align}
p^{l}f:J^{{k+1}}F\to J^{l}E
\end{align}
$$

which is then a differential operator 

