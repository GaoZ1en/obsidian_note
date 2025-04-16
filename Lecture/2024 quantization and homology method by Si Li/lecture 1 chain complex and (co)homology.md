examples of physical models

1. scalar field
2. gauge field
	1. Chern-Simons theory
	2. Yang-Mills theory
3. $\displaystyle{\sigma}$-model
4. gravity
5. ...

each of them has a huge configuration space. so the path integrals are hard to calculate. but in several special cases, the path integral has definite definition.

1. imaginary time quantum mechanics (Wie? measure)
2. asymptotic expansion (perturbative renormalization theory)

the goal of this lecture is to consider some homological nature of the path integral

## chain complex and (co)homology

let $\displaystyle{R}$ be a commutative ring, a chain complex is a sequence of $\displaystyle{R}$-module maps

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\dots \arrow[r] & C_{n+1} \arrow[r,"\partial _{n+1}"] & C_{n} \arrow[r,"\partial _{n}"] & C_{n-1} \arrow[r,"\partial _{n-1}"] & \dots
\end{tikzcd}\end{document}
```

such that $\displaystyle{\partial _{n}\circ\partial _{n+1}=0}$. where $\displaystyle{R}$ is not specified, we mean chain complex of Abelian group (i.e. $\displaystyle{R=\mathbb{Z}}$). we write $\displaystyle{(C_{\cdot},\partial)}$ for the complex and $\displaystyle{\partial ^{2}=0}$ for $\displaystyle{\partial _{n}\circ\partial _{n+1}=0}$

>[!Lemma]
>$\displaystyle{\mathrm{Im}(\partial _{n+1})\subset \mathrm{Ker}(\partial _{n})}$

> [!Definition homology group]
> the $\displaystyle{n}$-th homology group of $\displaystyle{(C_{\cdot},\partial)}$ is defined as
> $$\begin{align}H_{n}(C_{\cdot},\partial)=\frac{\mathrm{Ker}(\partial _{n})}{\mathrm{Im}(\partial _{n+1})}\end{align}$$

if we inverse all the arrows, we have the dual concepts:

A cochain complex is a sequence of $\displaystyle{R}$-module maps

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\dots & C^{n-1} \arrow[r,"\mathrm{d}_{n-1}"] & C^{n} \arrow[r,"\mathrm{d}_{n}"] & C^{n+1} \arrow[r,"\mathrm{d}_{n+1}"] & \dots
\end{tikzcd}\end{document}
```

such that $\displaystyle{\mathrm{d}_{n}\circ \mathrm{d}_{n+1}=0}$. we write $\displaystyle{(C^{\cdot},\mathrm{d})}$, and $\displaystyle{\mathrm{d}^{2}=0}$.

and the $\displaystyle{n}$-th cohomology group is defined as

$$
\begin{align}
H^{n}(C^{\cdot},\mathrm{d}) & = \frac{\mathrm{Ker}(\mathrm{d}_{n})}{\mathrm{Im}(\mathrm{d}_{n-1})}
\end{align}
$$

### examples

#### De Rham complex

let $\displaystyle{U\subset \mathbb{R}^{n}}$ be open set by coordinate $\displaystyle{\left\{x^{1},\dots ,x^{n}\right\}}$. Denote $\displaystyle{\Omega ^{0}(U)=C^{\infty}(U)}$, and $\displaystyle{\Omega ^{n}(U)}$ be the space of smooth $\displaystyle{n}$-form supporting on $\displaystyle{U}$. then we have the De Rham complex

```tikz
\usepackage{tikz-cd,amsmath,amssymb}
\begin{document}\begin{tikzcd}
\Omega ^{0}(U) \arrow[r,"\mathrm{d}"] & \Omega ^{1}(U) \arrow[r,"\mathrm{d}"] & \dots \arrow[r,"\mathrm{d}"] & \Omega ^{n-1}(U) \arrow[r,"\mathrm{d}"] & \Omega ^{n}(U)
\end{tikzcd}\end{document}
```

a $\displaystyle{p}$-form $\displaystyle{\alpha}$ is called closed if $\displaystyle{\mathrm{d}\alpha=0}$, and is called exact if $\displaystyle{\alpha=\mathrm{d}\beta, \exists \beta \in \Omega ^{p-1}(U)}$. $\displaystyle{H^{n}_{\mathrm{dR}}=H^{n}(\Omega ^{\cdot}(U),\mathrm{d}):=\frac{\text{closed }p\text{-form}}{\text{exact }p\text{-form}}}$ is the $\displaystyle{n}$-th de Rham cohomology group.

we can also consider differential forms with compact support. and we can define the corresponding de Rham cohomology group with compact support.

Stokes' theorem

$$
\begin{align}
\int _{M}\mathrm{d}\omega & =\int _{\partial M}\omega
\end{align}
$$

>[!Theorem Poincare Lemma]
> $$\begin{align}H^{p}(\mathbb{R}^{n})=\begin{cases}\mathbb{R}, & p=0 \\0, & p>0\end{cases},\quad
H^{p}_{c}(\mathbb{R}^{n})=\begin{cases}\mathbb{R}, & p=n \\0, & p<n\end{cases}\end{align}$$

we prove the case for $\displaystyle{n=1}$. if $\displaystyle{f\in H^{0}(\mathbb{R})}$, then we have $\displaystyle{\mathrm{d}f=0\implies f\equiv \mathrm{Const}.}$
if $\displaystyle{f\in H^{0}_{c}(\mathbb{R})}$, then we have $\displaystyle{\mathrm{d}f=0}$ and $\displaystyle{f}$ has compact support $\displaystyle{\implies f\equiv 0}$
let $\displaystyle{\alpha=f(x)\mathrm{d}x}$ is a exact form, $\displaystyle{\mathrm{d}\alpha=0}$, then we have