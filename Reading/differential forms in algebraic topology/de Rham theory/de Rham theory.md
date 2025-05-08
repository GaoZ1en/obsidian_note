## the Mayer-Vietoris sequence

the Mayer-Vietoris sequence is a long exact sequence in algebraic topology that relates the homology groups of a topological space to the homology groups of its subspaces. it is particularly useful for computing the homology of spaces that can be decomposed into simpler pieces.

a **covariant** functor $\displaystyle{F}$ from a category $\displaystyle{\mathscr{H}}$ to a category $\displaystyle{\mathscr{L}}$ associated to every object $\displaystyle{A}$ in $\displaystyle{\mathscr{H}}$ and an object $\displaystyle{F(A)}$ in $\displaystyle{\mathscr{L}}$, and every morphism $\displaystyle{f:A\to B}$ in $\displaystyle{\mathscr{H}}$ and a morphism $\displaystyle{F(f):F(A)\to F(B)}$ in $\displaystyle{\mathscr{L}}$ such that $\displaystyle{F}$ preserves composition and identity.

$$\tag{1.1}
\begin{align}
F(g\circ f) & F(g)\circ F(f) \\
F(1_{A}) & =1_{F(A)}
\end{align}
$$

reverse the arrows, i.e., $\displaystyle{F(f):F(B)\to F(A)}$, $\displaystyle{F}$ is called a **contravariant** functor. then $\displaystyle{\Omega ^{*}}$ is a contravariant functor from the category of Euclidean space $\displaystyle{\left\{\mathbb{R}^{n}\right\}_{n\in \mathbb{Z}}}$ and smooth maps $\displaystyle{\mathbb{R}^{m}\to \mathbb{R}^{n}}$ to the category of commutative differential graded algebras and their homomorphisms.

the functor $\displaystyle{\Omega ^{*}}$ may be extended to the category of differentiable manifolds. relevant concepts are omitted.

### the Mayer-Vietoris sequence

suppose $\displaystyle{M=U\cup V}$ with $\displaystyle{U,V}$ open. then there is a sequence of inclusions

![[Attachments/Pasted image 20250508165602.png]]

where $\displaystyle{U\coprod V}$ is the disjoint union of $\displaystyle{U}$ and $\displaystyle{V}$ and $\displaystyle{\partial _{0}}$ and $\displaystyle{\partial _{1}}$ are the inclusions of $\displaystyle{U\cap V}$ in $\displaystyle{V}$ and in $\displaystyle{U}$ respectively. applying the contravariant functor $\displaystyle{\Omega ^{*}}$, we get a sequence of restrictions of forms

![[Attachments/Pasted image 20250508170026.png]]

then by taking the difference of the last two maps $\displaystyle{\partial _{0}^{*}}$ and $\displaystyle{\partial _{1}^{*}}$, we obtain the Mayer-Vietoris sequence

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
0 \arrow{r} & \Omega ^{*}(M) \arrow{r} & \Omega ^{*}(U)\oplus \Omega ^{*}(V) \arrow{r} & \Omega ^{*}(U\cap V) \arrow{r} & 0
\end{tikzcd}\end{document}
```

>[!Proposition 1.1]
> the Mayer-Vietoris sequence is exact

the Mayer-Vietoris sequence induces a long exact sequence in cohomology, which is also called a Mayer-Vietoris sequence

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\dots \arrow{r} & H^{q}(M) \arrow{r} & H^{q}(U)\oplus H^{q}(V) \arrow{r} & H^{q}(U\cap V) \arrow{r}{\mathrm{d}^{*}} & H^{q+1}(M) \arrow{r} & H^{q+1}(U)\oplus H^{q+1}(V) \arrow{r} & H^{q}(U\cap V) \arrow{r}{\mathrm{d}^{*}} & \dots
\end{tikzcd}\end{document}
```

which can be proven by the 