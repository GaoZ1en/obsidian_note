## the Mayer-Vietoris sequence

the Mayer-Vietoris sequence is a long exact sequence in algebraic topology that relates the homology groups of a topological space to the homology groups of its subspaces. it is particularly useful for computing the homology of spaces that can be decomposed into simpler pieces.

a **covariant** functor $\displaystyle{F}$ from a category $\displaystyle{\mathscr{H}}$ to a category $\displaystyle{\mathscr{L}}$ associated to every object $\displaystyle{A}$ in $\displaystyle{\mathscr{H}}$ and an object $\displaystyle{F(A)}$ in $\displaystyle{\mathscr{L}}$, and every morphism $\displaystyle{f:A\to B}$ in $\displaystyle{\mathscr{H}}$ and a morphism $\displaystyle{F(f):F(A)\to F(B)}$ in $\displaystyle{\mathscr{L}}$ such that $\displaystyle{F}$ preserves composition and identity.

$$
\tag{1.1}
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

the Mayer-Vietoris sequence induces (by snake lemma) a long exact sequence in cohomology, which is also called a Mayer-Vietoris sequence

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\dots \arrow{r} & H^{q}(M) \arrow{r} & H^{q}(U)\oplus H^{q}(V) \arrow{r} & H^{q}(U\cap V) \arrow{r}{\mathrm{d}^{*}} & H^{q+1}(M) \arrow{r} & H^{q+1}(U)\oplus H^{q+1}(V) \arrow{r} & H^{q}(U\cap V) \arrow{r}{\mathrm{d}^{*}} & \dots
\end{tikzcd}\end{document}
```

we define the support of a form $\displaystyle{\omega}$ on a manifold $\displaystyle{M}$ to be $\displaystyle{\mathrm{Supp}\omega=\left\{p \in M|\omega|_{p}\neq0\right\}}$. we then consider differential forms with compact support $\displaystyle{\omega \in\Omega ^{*}_{c}(M)}$, with the functor $\displaystyle{\Omega ^{*}_{c}}$.

>[!Proposition 1.2]
> the Mayer-Vietoris sequence of forms with compact support
> ```tikz
> \usepackage{tikz-cd,amsmath,amssymb}\begin{document}\begin{tikzcd}0  & \Omega ^{*}_{c}(M) \arrow{l} & \Omega ^{*}_{c}(U)\oplus \Omega ^{*}_{c}(V) \arrow{l} & \Omega ^{*}_{c}(U\cap V) \arrow{l} & 0 \arrow{l}\end{tikzcd}\end{document}
> ```
> is exact

so $\displaystyle{\Omega ^{*}_{c}}$ is a covariant functor

## orientation and integration

### orientation and the integral of a differential form

a manifold $\displaystyle{M}$ of dimension $\displaystyle{n}$ is orientable iff it has a global nowhere vanishing $\displaystyle{n}$-form

## Poincare lemmas

>[!Lemma Poincare lemma]
> $$\begin{align}H^{p}(\mathbb{R}^{n})=\begin{cases}\mathbb{R}, & p=0 \\0, & p>0\end{cases},\quad
H^{p}_{c}(\mathbb{R}^{n})=\begin{cases}\mathbb{R}, & p=n \\0, & p<n\end{cases}\end{align}$$
